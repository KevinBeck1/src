Prod_DW21 = {
	wells = {
		PHB_Well = 1,
		LRPH_Well = 2,
		IRONBF_Well = 3,
		NAT_Well = 4,
		IRONB_Well = 5,
		LRH_Well = 6,
		ALK_Well = 7,
		COPB_Well = 8,
		HRPH_Well = 9,
		NIT_Well = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["ALK"] = ALK_001 (self.wells);
		results["pH Mid"] = PHB_001 (self.wells,ALK_001);
		results["pH Low"] = LRPH_001 (self.wells);

		if Sequence[60] >= self.sequence then
			results["Total Iron"] = IRONB_001 (self.wells);
			results["Ferrus Iron"] = IRONB_002 (self.wells);
			results["Copper"] = COPB_001 (self.wells);
			results["Hardness LR"] = LRH_003 (self.wells,IRONB_001,COPB_001);
			results["Hardness HR"] = HRH_003 (self.wells,IRONB_001,COPB_001);

		elseif Sequence[120] >= self.sequence then
			results["Nitrate"] = NAT_002 (self.wells,ALK_001);
			results["Nitrite"] = NIT_001 (self.wells);

		end;
	end,
}


series["DW21 QC 30 sec"] = {
	tags = { "DW21", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_DW21.wells,
	sequence = Sequence[30],
	start = Prod_DW21.start,
	finish = Prod_DW21.finish
}

series["DW21 QC 60 sec"] = {
	tags = { "DW21", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_DW21.wells,
	sequence = Sequence[60],
	start = Prod_DW21.start,
	finish = Prod_DW21.finish
}

series["DW21 QC 120 sec"] = {
	tags = { "DW21", "120 sec", "S1", "OneMoreThing" },
	wells = Prod_DW21.wells,
	sequence = Sequence[120],
	start = Prod_DW21.start,
	finish = Prod_DW21.finish
}