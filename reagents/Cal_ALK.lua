ALK_001 = function (Wells)
    local well = Wells.ALK_Well;
    local blank = Wells.Blank;
    local timing = "30"; 
	local abs635 = abs(raw[timing][635][well], raw[timing][635][blank]);
    local alk = polly({-25.57,506.3,-728.7,452.0}, abs635);

    if (45 > alk and 40<= alk) or (5 > alk and 0 <= alk) then
		return alk +2;
	elseif (40 > alk and 35 <= alk) or (10 > alk and 5 <= alk) then
		return alk +4;
	elseif (35 > alk and 30 <= alk) or (15 > alk and 10 <= alk) then
		return alk +6;
	elseif (30 > alk and 25 <= alk) or (20 > alk and 15 <= alk) then
		return alk +8;
	elseif 25 > alk and 20 <= alk then
		return alk +10;
	end
	return alk;
end

ALK_002 = function (Wells)
    local well = Wells.ALK_Well;
    local blank = Wells.Blank;
    local timing = "30"; 

    local abs635 = abs(raw[timing][635][well], raw[timing][635][blank]);
    local alk = polly({-44.179,403.75998,-435.83857,276.62664}, abs635);

    if (45 > alk and 40<= alk) or (5 > alk and 0 <= alk) then
		return alk +2;
	elseif (40 > alk and 35 <= alk) or (10 > alk and 5 <= alk) then
		return alk +4;
	elseif (35 > alk and 30 <= alk) or (15 > alk and 10 <= alk) then
		return alk +6;
	elseif (30 > alk and 25 <= alk) or (20 > alk and 15 <= alk) then
		return alk +8;
	elseif 25 > alk and 20 <= alk then
		return alk +10;
	end
	return alk;
end

SALK_001 = function(Wells)
	local well = Wells.SALK_Well;
	local blank = Wells.Blank;
	local timing = "120";

	return polly({61.656, 177.64, 64.753, 131.19}, (math.log(abs(raw[timing][568][well], raw[timing][568][blank])/ abs(raw[timing][428][well], raw[timing][428][blank]))/ math.log(10)))
end