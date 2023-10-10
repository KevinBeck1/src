COP_001 = function (Wells) 
    local well = Wells.COP_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly( {0.0,8.633,-0.4238},abs(raw[timing][568][well], raw[timing][568][blank])) 
end

COPB_001 = function(Wells)
    local well = Wells.COPB_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-0.027673,4.9586,0}, abs(raw[timing][470][well], raw[timing][470][blank]))
end