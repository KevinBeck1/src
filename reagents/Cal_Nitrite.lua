NIT_001 = function(Wells)
	local well = Wells.NIT_Well;
	local blank = Wells.Blank;
	local timing = "120";

	return polly({-0.016434, 1.594, -0.088573},abs(raw[timing][525][well],raw[timing][525][blank]))
end