PHOS_001 = function(Wells)
    local well = Wells.PHOS_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-321.1, 6345.6}, abs(raw[timing][635][well], raw[timing][635][blank])) 
end

PHOS_002 = function(Wells)
    local well = Wells.PHOS_Wel;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-0.15737, 5.6225}, abs(raw[timing][635][well], raw[timing][635][blank])) 
end

PHOS_003 = function(Wells)
    local well = Wells.PHOS_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-471.1, 6345.6}, abs(raw[timing][635][well], raw[timing][635][blank])) 
end

PHOS_004 = function(Wells)
    local well = Wells.PHOS_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-0.30737, 5.6225}, abs(raw[timing][635][well], raw[timing][635][blank])) 
end

HRPHOS_001 = function(Wells)
    local well = Wells.HRPHOS_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-2.8212,48.565},abs(raw[timing][635][well], raw[timing][635][blank]))
end