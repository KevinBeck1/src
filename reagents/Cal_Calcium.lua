SCAL_001 = function(Wells)
	local well = Wells.SCAL_Well;
    local blank = Wells.Blank;
    local timing = "120";

	local abs470 = abs(raw[timing][470][well], raw[timing][470][blank]);
	local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);

    return polly({-160.09,96.588,5.2488}, (abs470/ abs568))
end