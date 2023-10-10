Prod_BC803 = {
	wells = {
		FCLB_Well = 1,
		ALK_Well = 2,
		TCLB_Well = 3,
		LRH_Well = 4,
		IRONB_Well = 5,
		COPB_Well = 6,
		SIL_Well = 7,
		CAO_Well = 8,
		HRPHOS_Well = 9,
		HRH_Well = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["ALK"] = ALK_001 (self.wells);
		results["Free Chlorine"] = FCLB_003 (self.wells);
		results["Bromine"] = BR_003 (self.wells);
		results["Total Chlorine"] = TCLB_001 (self.wells);

		if Sequence[60] == self.sequence then
			results["Iron"] = IRONB_001 (self.wells);
			results["Phosphate HR"] = HRPHOS_001 (self.wells);
			results["Copper"] = COPB_001 (self.wells);
			results["Calcium Only"] = CAO_001 (self.wells);
			results["Hardness LR"] = LRH_003 (self.wells,IRONB_001,COPB_001);
			results["Hardness HR"] = HRH_003 (self.wells,IRONB_001,COPB_001);
			results["Silica"] = SIL_001 (self.wells,HRPHOS_001);
		end;
	end,
}

series["BC803 QC 60 sec"] = {
	tags = { "BC803", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_BC803.wells,
	sequence = Sequence[60],
	start = Prod_BC803.start,
	finish = Prod_BC803.finish
}

series["BC803 QC 30 sec"] = {
	tags = { "BC803", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_BC803.wells,
	sequence = Sequence[30],
	start = Prod_BC803.start,
	finish = Prod_BC803.finish
}
