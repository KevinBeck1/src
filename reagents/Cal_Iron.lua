IRON_001 = function (Wells) 
    local well = Wells.IRON_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-0.02386,2.481,0.19},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

IRONB_001 = function (Wells)
    local well = Wells.IRONB_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({0.000000, 2.538200, 0.072947}, abs(raw[timing][525][well], raw[timing][525][blank]))
end

IRONB_002 = function (Wells)
    local well = Wells.IRONBF_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({0.000000, 2.575200, 0.061744}, abs(raw[timing][525][well], raw[timing][525][blank]))
end