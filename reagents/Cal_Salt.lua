SALTB_001 = function (Wells)
    local well = Wells.SALTB_Well;
    local blank = Wells.Blank;
    local timing = "60"; 

    local abs428 = abs(raw[timing][428][well],raw[timing][428][blank]);
    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);

    return polly({-1016.3, 2054}, abs428/abs568);
end