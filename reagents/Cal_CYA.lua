CYAD_001 = function (Wells) 
    local well = Wells.CYAD_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({1.5111,78.655,-16.793,27.12},abs(raw[timing][635][well], raw[timing][635][blank])) 
end

CYAD_002 = function (Wells) 
    local well = Wells.CYAD_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({0.38446, 98.435, -45.289, 27.985},abs(raw[timing][635][well], raw[timing][635][blank])) 
end