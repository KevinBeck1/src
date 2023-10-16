SAM_001 = function(Wells,ALK)
	local well = Wells.SAM_Well;
	local blank = Wells.Blank;
	local timing = "120";

	local cal ={
		[0]=new_polly({-0.25268, 3.6588}), 
    	[50]=new_polly({-0.29003, 4.312778}),
		[150]=new_polly({-0.31736, 5.3637}), 
		[300] = new_polly({-0.29139, 6.8179})
	}
	
	local alk = ALK(Wells);
    local absorb = abs(raw[timing][635][well], raw[timing][635][blank]);
	if 0>= alk then
        return cal[0](absorb);
	elseif 50>= alk then
		return weighted_avg(0, 50, alk, absorb, cal);
	elseif 150>= alk then
		return weighted_avg(50, 150, alk, absorb, cal);
	elseif 300 >= alk then
		return weighted_avg(150, 300, alk, absorb, cal);
	else
		return cal[300](absorb);
	end
end

SAM_002 = function(Wells,ALK)
	local well = Wells.SAM_Well;
	local blank = Wells.Blank;
	local alk = ALK(Wells);
	local timing = "120";

	local absorbance = abs(raw[timing][635][well], raw[timing][635][blank]);
	local k0 = -0.30305;
	local k1 = 3.1961;
	local kalk = 1.4022e-4;
	local kalkabs = 2.1373e-3;

	return (k0 + (k1 * absorbance) + (kalk * alk) + (kalkabs * alk * absorbance))
end

SAM_003 = function(Wells,ALK)
	local well = Wells.SAM_Well;
	local blank = Wells.Blank;
	local alk = ALK(Wells);
	local timing = "120";

	local absorbance = abs(raw[timing][635][well], raw[timing][635][blank]);
	local k0 = -0.36158;
	local k1 = 3.1769;
	local kalk = -0.0001316;
	local kalkabs = 0.0012061;

	return (k0 + (k1 * absorbance) + (kalk * alk) + (kalkabs * alk * absorbance))
end

SAM_004 = function(Wells,ALK)
	local well = Wells.SAM_Well;
	local blank = Wells.Blank;
	local alk = ALK(Wells);
	local timing = "120";

	local absorbance = abs(raw[timing][635][well], raw[timing][635][blank]);
	local k0 = -0.42727;
	local k1 = 4.1487;
	local kalk = 9.5005e-05;
	local kalkabs = 0.0086939;


	return (k0 + (k1 * absorbance) + (kalk * alk) + (kalkabs * alk * absorbance))
end