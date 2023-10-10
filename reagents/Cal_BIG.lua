BIG_001 = function(Wells)
	local well = Wells.BIG_Well;
	local blank = Wells.Blank;
	local timing = "30";
	return polly({-54.1129810662,510.8065195049,-963.1149142844,855.493753729}, abs(raw[timing][568][well], raw[timing][568][blank]))
end