BR_001 = function (Wells)
    local well = Wells.FCL_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({0.037128,14.159,-1.0963,0.55932},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

BR_002 = function (Wells)
    local well = Wells.FCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({0.087541,14.278770,-2.298940,1.182999},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

BR_003 = function (Wells)
    local well = Wells.FCLB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({0, 8.653275, 3.56355},abs(raw[timing][525][well], raw[timing][525][blank])) 
end