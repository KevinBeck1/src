-- hardAbsoeb.lua
-- inlcudes a reusable weighted average fuction
-- includes a reusable fuction for hardness low range berhavior related to borate

--reusable weighted average fuction
-- upper and lower bound indicate the extremes of the range to be averaged
-- control inidcates the vaklye betwen uppwe and lowe bount indicating the weight of the two extremes by distance
-- var is the vaklue to be passed into the calibrations
-- constants is a table of fucions that take a numebr and return a number
-- returnes the weigted average by dustance of the fuctions from constants coresponding to the upper and lower bound keys.
function weighted_avg (lower_bound, upper_bound, control, var, constants)
	local span = upper_bound-lower_bound;
	local low_dist = control-lower_bound;
	local high_dist = upper_bound-control;
	
	return (high_dist/span)*constants[lower_bound](var) + (low_dist/span)*constants[upper_bound](var);
end

--reusable fuction for Hardness low range borate correction
function hard_avg(absorb, constants)
	local borate = results["Borate"] or 0;
	
	if 20>= borate then
		return weighted_avg(0, 20, borate, absorb, constants);
	elseif 40>= borate then
		return weighted_avg(20, 40, borate, absorb, constants);
	elseif 60>= borate then
		return weighted_avg(40, 60, borate, absorb, constants);
	elseif 80 >= borate then
		return weighted_avg(60, 80, borate, absorb, constants);
	else
		return constants[80](absorb);
	end
end