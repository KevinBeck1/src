FCL_001 = function (Wells)
    local well = Wells.FCL_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({0,3.9932,1.4129,-0.057492},abs(raw[timing][525][well], raw[timing][525][blank]))
end

FCL_002 = function (Wells)
    local well = Wells.FCL_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({0.0078638, 3.7568, 0.67645, 0.40245},abs(raw[timing][525][well], raw[timing][525][blank]))
end

FCLB_001 = function (Wells)
    local well = Wells.FCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({0,3.8459,1.5838},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

FCLB_002 = function (Wells)
    local well = Wells.FCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({-0.081505,4.5337,1.37008},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

FCLB_003 = function (Wells)
    local well = Wells.FCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({-0.031197, 4.1519, 1.5095},abs(raw[timing][525][well], raw[timing][525][blank]))
end