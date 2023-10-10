CAO_001 = function (Wells) 
    local well = Wells.CAO_Well;
    local blank = Wells.Blank;
    local timing = "60";

    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);
    local abs635 = abs(raw[timing][635][well], raw[timing][635][blank]);

    return polly({-10.243000,354.030000,-307.030000,202.800000}, abs568 - 1.3*abs635)
end

CAO_002 = function (Wells) 
    local well = Wells.CAO_Well;
    local blank = Wells.Blank;
    local timing = "60";

    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);
    local abs635 = abs(raw[timing][635][well], raw[timing][635][blank]);

    return polly({-6.960200,358.950000,-203.600000,159.050000}, abs568 - 1.3*abs635)
end

LRH_001 = function(Wells)
    local well = Wells.LRH_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({0.26895,681.71,-609.09,465.68}, abs(raw[timing][568][well], raw[timing][568][blank]))
end

LRH_002 = function(Wells)
    local well = Wells.LRH_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({-12.545,1013.7,-1032.2,813.66}, abs(raw[timing][568][well], raw[timing][568][blank]))
end

LRH_003 = function (Wells,IRON,COP)
    local well = Wells.LRH_Well;
    local blank = Wells.Blank;
    local timing = "60";

    local iron = IRON(Wells);
    local Cu = COP(Wells);
    local absorb = ((1 + (0.1928 * Cu)) * abs(raw[timing][568][well], raw[timing][568][blank]));
    local cals = {
                [0] = new_polly({3.7726, 596.91, -406.43, 308.42}),
                [2] = new_polly({-2.4017, 690.96, -510.76, 413.78}),
                [4] = new_polly({1.6335, 731.91, -486.26, 448.82}),
                [6] = new_polly({4.7891, 672.49, -202.68, 352.17})
            };
            if 2 > iron then return weighted_avg(0, 2, iron, absorb, cals)
            elseif 4 > iron then return weighted_avg(2, 4, iron, absorb, cals)
            elseif 6 > iron then return weighted_avg(4, 6, iron, absorb, cals)
            else return cals[6](absorb)
            end;
        end

HRH_001 = function(Wells)
    local well = Wells.HRH_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({0.0,1645.0,-1850.2,1260.1}, abs(raw[timing][568][well], raw[timing][568][blank]))
end

HRH_002 = function(Wells)
    local well = Wells.HRH_Well;
    local blank = Wells.Blank;
    local timing = "60";
    return polly({0.0,1450.7,-1087.9,862.6}, abs(raw[timing][568][well], raw[timing][568][blank]))
end

HRH_003 = function (Wells,IRON,COP)
    local well = Wells.HRH_Well;
    local blank = Wells.Blank;
    local timing = "60";

    local iron = IRON(Wells);
    local Cu = COP(Wells);
    local absorb = ((1 + (0.1043 * Cu)) * abs(raw[timing][568][well], raw[timing][568][blank]));
    local cals = {
                [0] = new_polly({142.85, 825.08, -423.41, 433.33}),
                [2] = new_polly({137.11, 923.89, -363.01, 468.68}),
                [4] = new_polly({135.84, 1017.71, -370.14, 516.2}),
                [6] = new_polly({120.04, 1263.11, -752.41, 842.09})
            };
            if 2 > iron then return weighted_avg(0, 2, iron, absorb, cals)
            elseif 4 > iron then return weighted_avg(2, 4, iron, absorb, cals)
            elseif 6 > iron then return weighted_avg(4, 6, iron, absorb, cals)
            else return cals[6](absorb)
            end;
        end