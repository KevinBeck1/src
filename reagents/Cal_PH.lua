function ph_avg(absorb, constants, alk)
	if alk <= 55 then
		return (constants[40](absorb) + constants[120](absorb))/2;
	elseif alk > 55 and alk <= 100 then
		return (constants[80](absorb) + constants[120](absorb))/2;
	elseif alk > 100 and alk <=160 then
		return constants[120](absorb);
	else
		return (constants[200](absorb) + constants[120](absorb))/2;
	end
end


PHB_001 = function (Wells, ALK)
    local well = Wells.PHB_Well;
    local blank = Wells.Blank;
    local timing = "30";

    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);
    local alk = ALK(Wells);

    return ph_avg(
        abs568, 
        {
            [40] = new_polly{6.22949,4.83038,-4.0049,1.34407},
            [80] = new_polly{6.28081,2.9239,-1.15137,0.19121},
            [120]= new_polly{6.23477,3.23593,-1.78586,0.46703},
            [200]= new_polly{6.29424,2.80984,-1.4919,0.41843}
        },
        alk
    );
end

PHB_002 = function (Wells, ALK) 
    local well = Wells.PHB_Well;
    local blank = Wells.Blank;
    local timing = "30";

    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);
    local alk = ALK(Wells);

    return ph_avg(
        abs568, 
        {
            [40] = new_polly{6.1296, 3.1919, -1.2284, 0.162},
            [80] = new_polly{6.1694, 2.6316, -1.0218, 0.24722},
            [120]= new_polly{6.1876, 2.4509, -1.0248, 0.30122},
            [200]= new_polly{6.2245, 2.1611, -0.73457, 0.22344}
        },
        alk
    );

end

PHB_003 = function (Wells) 
    local well = Wells.PHB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({6.23477, 3.23593, -1.78586, 0.46703},abs(raw[timing][525][well], raw[timing][525][blank])) 
end

PHB_004 = function (Wells) 
    local well = Wells.PHB_Well;
    local blank = Wells.Blank;
    local timing = "30";
    return polly({6.1876, 2.4509, -1.0248, 0.30122},abs(raw[timing][525][well], raw[timing][525][blank])) 
end


PHB_005 = function (Wells, ALK)
    local well = Wells.PHB_Well;
    local blank = Wells.Blank;
    local timing = "30";

    local alk = ALK(Wells);
    local cal ={
        [40]=new_polly({7.6543, 2.1655, 0.2579, 0}), 
        [150]=new_polly({7.2414, 1.6941, 0.3235, 0.523}), 
        [300] = new_polly({7.2197, 1.5288, 0.3395, -0.2465})
    };

    local absorb = (math.log( abs(raw[timing][568][well], raw[timing][568][blank])/ abs(raw[timing][428][well], raw[timing][428][blank]))/ math.log(10));
        if 40>= alk then
            return cal[40](absorb);
        elseif 150>= alk then
            return weighted_avg(40, 150, alk, absorb, cal);
        elseif 300 >= alk then
            return weighted_avg(150, 300, alk, absorb, cal);
        else
            return cal[300](absorb);
    end
end

HRPH_001 = function(Wells)
    local well = Wells.HRPH_Well;
    local blank = Wells.Blank;
    local timing = "30";

    local abs428 = abs(raw[timing][428][well], raw[timing][428][blank]);
    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);

    return polly({8.206300, 1.204800, 0.157310, 0.097560}, math.log(abs568/abs428)/math.log(10));
end

HRPH_002 = function(Wells)
    local well = Wells.HRPH_Well;
    local blank = Wells.Blank;
    local timing = "30";

    local abs428 = abs(raw[timing][428][well], raw[timing][428][blank]);
    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);

    return polly({7.736, 1.056, 3.434e-1, 1.633e-1}, math.log(abs568/abs428)/math.log(10));
end

LRPH_001 = function(Wells)
    local well = Wells.LRPH_Well;
    local blank = Wells.Blank;
    local timing = "30";

    local abs428 = abs(raw[timing][428][well], raw[timing][428][blank]);
    local abs568 = abs(raw[timing][568][well], raw[timing][568][blank]);

    return polly({5.717100, 0.947740, 0.076915, 0.049382}, math.log(abs568/abs428)/math.log(10));
end