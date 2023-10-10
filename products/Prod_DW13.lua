Prod_DW13 = {
	wells = {
		PHB_Well = 1,
		FCLB_Well = 2,
		HRPH_Well = 3,
		TCLB_Well = 4,
		IRONB_Well = 5,
		LRH_Well = 6,
		ALK_Well = 7,
		HRH_Well = 8,
		Empty = 9,
		COPB_Well = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["Free Chlorine"] = FCLB_003 (self.wells);
		results["Total Chlorine"] = TCLB_001 (self.wells);
		results["ALK"] = ALK_001 (self.wells);
		results["pH Mid"] = PHB_001 (self.wells,ALK_001);
		results["pH High"] = HRPH_001 (self.wells);

		if Sequence[60] == self.sequence then
			results["Total Iron"] = IRONB_001 (self.wells);
			results["Copper"] = COPB_001 (self.wells);
			results["Hardness LR"] = LRH_003 (self.wells,IRONB_001,COPB_001);
			results["Hardness HR"] = HRH_003 (self.wells,IRONB_001,COPB_001);
		end;
	end,
}

series["DW13 QC 60 sec"] = {
	tags = { "DW13", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_DW13.wells,
	sequence = Sequence[60],
	start = Prod_DW13.start,
	finish = Prod_DW13.finish
}

series["DW13 QC 30 sec"] = {
	tags = { "DW13", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_DW13.wells,
	sequence = Sequence[30],
	start = Prod_DW13.start,
	finish = Prod_DW13.finish
}
