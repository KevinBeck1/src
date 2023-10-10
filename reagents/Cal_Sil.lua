SIL_001 = function(Wells,HRPHOS)
	local well = Wells.SIL_Well;
	local blank = Wells.Blank;
	local timing = "60";

	local cal ={
		[0]=new_polly({-0.9916, 29.428, 5.5539}), 
        [10]=new_polly({-5.0111, 30.092, 5.7693}), 
        [30] = new_polly({-14.012, 33.642, 6.1287}),
        [50] = new_polly({-18.694, 25.663, 10.559})
		};

	local abs390 = abs(raw[timing][390][well], raw[timing][390][blank]);
	local abs525 = abs(raw[timing][525][well], raw[timing][525][blank]);


	local phosp = HRPHOS(Wells);
    local absorb = (abs390- abs525);
		if 0>= phosp then
            return cal[0](absorb);
		elseif 10>= phosp then
        	return weighted_avg(0, 10, phosp, absorb, cal);
		elseif 30 >= phosp then
		 	return weighted_avg(10, 30, phosp, absorb, cal);
		elseif 50 >= phosp then
	    	return weighted_avg(30, 50, phosp, absorb, cal);
		else
		 	return cal[50](absorb);
		end
end