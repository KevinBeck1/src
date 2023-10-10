BORB_001 = function(Wells)
	local well = Wells.BORB_Well;
	local blank = Wells.Blank;
	local timing = "60";

	local abs428 = abs(raw[timing][428][well],raw[timing][428][blank]);
    local abs525 = abs(raw[timing][525][well], raw[timing][525][blank]);

    return polly({-10.994,32.138,6.3945},abs428/abs525)
end