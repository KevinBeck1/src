TCL_001 = function(Wells)
    local well = Wells.TCL_Well;
    local blank = Wells.Blank;
    local timing = "30";

    return polly({-0.149780,4.228800,-0.144500,0.319630},abs(raw[timing][525][well], raw[timing][525][blank]))
end

TCL_002 = function(Wells)
    local well = Wells.TCL_Well;
    local blank = Wells.Blank;
    local timing = "30";

    return polly({ -0.11627, 3.8137, 0.19298, 0.32262},abs(raw[timing][525][well], raw[timing][525][blank]))
end

TCLB_001 = function (Wells) 
    local well = Wells.TCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({-0.1969, 5.0017, -0.6324, 0.3939},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

TCLB_002 = function (Wells) 
    local well = Wells.TCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({-0.2104,4.7662,-0.3638,0.3239},abs(raw[timing][525][well], raw[timing][525][blank]))
end
