tests["203 ver13"] = 
{ 
desc = "203 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12012, 12088, 11552, 11983, 11284, 11539, 11692, 11890, 12423, 12143, 39881},
	[428] = { 15416, 15979, 15618, 16138, 15205, 15648, 15790, 15680, 16230, 15480, 42531},
	[470] = { 15645, 15912, 15364, 15854, 15014, 15686, 15740, 15944, 16590, 16076, 41506},
	[525] = { 15291, 15179, 14461, 14563, 13672, 14248, 13861, 14213, 15074, 15053, 38958},
	[568] = { 14357, 14562, 14016, 14735, 13974, 13697, 13615, 13504, 13932, 13468, 39896},
	[635] = { 16346, 16141, 15374, 15919, 15253, 14971, 15055, 15269, 15934, 15329, 41461}
	},
["60"] = { 
	[390] = { 11985, 12086, 11549, 11978, 11284, 11543, 11696, 11884, 12417, 12122, 39902},
	[428] = { 15394, 15967, 15619, 16121, 15234, 15628, 15784, 15705, 16198, 15455, 42525},
	[470] = { 15647, 15911, 15383, 15863, 15013, 15681, 15737, 15952, 16589, 16084, 41484},
	[525] = { 15281, 15191, 14475, 14559, 13670, 14250, 13845, 14229, 15085, 15065, 38955},
	[568] = { 14343, 14564, 14090, 14701, 13937, 13701, 13619, 13472, 13947, 13419, 39889},
	[635] = { 16320, 16120, 15401, 15923, 15278, 14965, 15063, 15252, 15932, 15340, 41455}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["203 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["203 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.522708844734, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Iron", 
expected = round(1.097653492299, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Salt", 
expected = round(979.61128232336, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8541321434269, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.1288544379238, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "Phosphate", 
expected = round(2314.291136, testfactors["Phosphate"].decimals), 
actual = function() return round(_results["Phosphate"].value, _results["Phosphate"].decimals); end
            },
{ label = "pH", 
expected = round(7.36430654191, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8397124487555, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "ALK", 
expected = round(93.450220107135, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness", 
expected = round(-53.665063638598, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Hardness (Salt)", 
expected = round(-49.591237308541, testfactors["Hardness (Salt)"].decimals), 
actual = function() return round(_results["Hardness (Salt)"].value, _results["Hardness (Salt)"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6284743565898, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.9560917908049, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
