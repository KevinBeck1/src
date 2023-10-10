-- main.lua
-- Contains base architecture for running WLS disks


-- metatables
-- metatable for series table
mt_series = {
	__newindex = function (self, key, value) 
		rawset (self, key, value); 
		tryCall(add_series) (key); 
		if value.tags then
			for i,tag in ipairs(value.tags) do
				tryCall(add_tag) (key, tag);
			end
		end
	end,
};

mt_results = {
	__newindex = function (self, key, value) rawset (self, key, value); tryCall(add_result) (key, value, testfactors[key].factorcode, testfactors[key].decimals); end,
};

mt_factors ={
	__index = function (self, key)
		return {factorcode=0, decimals=2};
	end,
};

-- metatable for raw mesurments table
mt_raw ={
	__newindex = function(self, key, value) 
		if nil == self.keys then rawset(self, "keys", {}) end;
		table.insert(self.keys, key);
		rawset(self, key, value);
	end,
};
-- Containers

-- container for a test sequence
-- indexed by display name
-- values should include a :run method which runs in place and adds values to mesurment, and result
series = {};
setmetatable(series, mt_series);

-- container for full single raw
-- indexed by integer representing the step on which the mesurment was takes
-- values should be tables containing all raw raw indexed by wavelength and well number
raw = {};
setmetatable (raw, mt_raw);

-- container for test results
-- indexed by test factor display name
-- values are a table represting a test result
results = {};
setmetatable (results, mt_results);

-- container for test factor metadata
-- indexed by test name
-- values are a table conatining several properties:
-- FactorCode -- The LaMotte universal test factor code for the analyte of the water test
-- Units -- The unit of mesure for the test
-- Decimals -- an integer representing the number of decimals to which the value should be rounded
testfactors ={};
setmetatable(testfactors, mt_factors);

-- constants
leds ={390, 525, 428, 568, 470, 635};


-- fuctions

-- clear
-- used to clear a table's eliments
-- takes any number of tables
function clear (tab)
	for key in pairs(tab) do
		tab[key] = nil;
	end
end

-- result
-- wraps the set_result handle with error handling
function result (key, value)
	if testfactors and testfactors[key] then
		tryCall(add_result) (key, value, testfactors[key].factorcode, testfactors[key].decimals);
	end
end


function log10 ( val )
	return math.log(val)/math.log(10);
end

--abs
-- fucntion for calulating absorbance
-- takes two numbers ( a samople and a blank)
-- returns a number (absrobance value)
function abs (sample, blank)
	if sample < 1 then sample = 1 end;
	if blank < 1 then blank = 1 end;
	return round (-1 * log10 (sample / blank), 5);
end

--polly
-- function for evaluating a polynomial
-- takes a number x, and a table of numbers representing the constans of a polynomial
-- return the polynomial specief in the tabe evalueted at x
function polly (constants, x)
	local y = 0;
	for ex, cons in ipairs (constants) do
		y = y + cons * x ^ (ex - 1);
	end
	return y;
end

-- new_polly
-- factoey for a reusable polynomial wrapped in a closure
-- takes a tabe of constants to define the pollynomial
-- returns a closure that will return the polynomial evaluated at it's inpit
function new_polly (constants)
	return function (x)
		return polly (constants, x);
	end
end

-- round
-- function for rounding off a number
-- takes a number and an optional number of signifigant figures
function round (num, idp)
	local mult = 10 ^ (idp or 0);
	return math.floor (num * mult + 0.5) / mult
end

-- takes an absorbance value and a blank value and reutrns the sample
-- used for creatign test data sets
-- used for unit testing
function reverse_abs (absval, blankval)
	return 10 ^ ( - absval) * blankval;
end

-- runs the correct series
function run (key, step) 
	return series[key]:run(step);
end

-- calls a function if and only if it exists and is really a function
-- Exists to emnable cross compatability between R&D Client and QC milti-meter application
function tryCall(f)
    return function(...)
        error, result = pcall(f, ...)
        if error then -- f exists and is callable
            return result;
        end
    end
end
function deepcopy(o, seen)
	seen = seen or {}
	if o == nil then return nil end
	if seen[o] then return seen[o] end
  
	local no
	if type(o) == 'table' then
	  no = {}
	  seen[o] = no
  
	  for k, v in next, o, nil do
		no[deepcopy(k, seen)] = deepcopy(v, seen)
	  end
	  --setmetatable(no, deepcopy(getmetatable(o), seen))
	else -- number, string, boolean, etc
	  no = o
	end
	return no
  end