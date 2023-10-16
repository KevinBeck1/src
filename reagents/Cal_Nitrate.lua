NAT_001 = function(Wells,ALK)
	local well = Wells.NAT_Well;
	local blank = Wells.Blank;
	local alk = ALK(Wells);
	local timing = "120";
	local nit_well = Wells.NIT_Well;

	local iteforate = (0.23*abs(raw[timing][525][nit_well], raw[timing][525][blank]));
	local alkforate = polly({1, 3.536e-3, -1.075e-5, 1.058e-8}, alk);

	local abs568 = abs(raw[timing][568][well],raw[timing][568][blank]);
    local abs635 = abs(raw[timing][635][well], raw[timing][635][blank]);


	return polly({0, 31.163, 78.536, -15.794}, (abs568 - abs635 - iteforate ) * (alkforate))
end

NAT_002 = function(Wells, ALK)
	local well = Wells.NAT_Well;
	local blank = Wells.Blank;
	local alk = ALK(Wells);
	local timing = "120";
	local nit_well = Wells.NIT_Well;

	local iteforate = (0.29*abs(raw[timing][525][nit_well], raw[timing][525][blank]));
	local alkforate = polly({1, 0.00677, -0.00003155, 0.00000004887}, alk);

	local abs568 = abs(raw[timing][568][well],raw[timing][568][blank]);
    local abs635 = abs(raw[timing][635][well],raw[timing][635][blank]);


	return polly({-0.4774, 38.732, 19.983}, (abs568 - abs635 - iteforate ) * (alkforate))
end

SNAT_001 = function(Wells,ALK)
	local well = Wells.SNAT_Well;
	local blank = Wells.Blank;
	local alk = ALK(Wells);
	local nit_well = Wells.NIT_Well;
	local timing = "120";

	local iteforate = (0.548*abs(raw[timing][525][nit_well], raw[timing][525][blank]))
	local alkforate = polly({1.0053, 0.003104, -1.0107e-5}, alk);

	local abs525 = abs(raw[timing][525][well],raw[timing][525][blank]);
    local abs635 = abs(raw[timing][635][well],raw[timing][635][blank]);
	
	return polly({-1.0925, 61.367, -2.4805},(abs525- abs635 - iteforate) * (alkforate))
end