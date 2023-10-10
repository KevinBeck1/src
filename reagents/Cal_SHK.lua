SHK_001 = function(Wells)
	local well = Wells.SHK_Well;
	local blank = Wells.Blank;
	local timing = "60";
	return polly({0.0,100.921778433}, abs(raw[timing][428][well], raw[timing][428][blank]))
end