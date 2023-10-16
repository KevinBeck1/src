LRMG_001 = function(Wells,ALK)
	local well = Wells.LRMG_Well;
	local blank = Wells.Blank;
	local timing = "60";
	local alk = ALK(Wells);
	local alkForMg = polly({1, -0.0004474}, alk);
	local alkCorrectedMg = (abs(raw[timing][568][well], raw[timing][568][blank])*alkForMg)
	return polly( {-211.63,2489.8},alkCorrectedMg) 
end

HRMG_001 = function(Wells,ALK,PH,HRPH)
	local well = Wells.HRMG_Well;
	local blank = Wells.Blank;
	local timing = "120";

	local alk = ALK(Wells);
		if PH(Wells,ALK) < 8 then
			corrpH = PH(Wells,ALK)
		else corrpH = HRPH(Wells)
	end

	local pHtarget = 7.1
	local pHdiff = corrpH - pHtarget
	local corrinput = 300 + (alk * pHdiff)
	local correction = polly({2.566, -1.094e-2, 2.779e-5, -3.376e-8, 1.854e-11, -3.549e-15}, corrinput)
	local corrabs = (abs(raw[timing][568][well], raw[timing][568][blank])*correction)
	
	return polly({-31.754, 366.57, 678.01, -72.513},corrabs)
end