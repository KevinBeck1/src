Prod_402 = {
	wells = {
		PHB_Well = 1,
		BIG_Well = 2,
		COP_Well = 3,
		CAO_Well = 4,
		SHK_Well = 6,
		ALK_Well = 7,
		IRON_Well = 8,
		BORB_Well = 9,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["ALK"] = ALK_002 (self.wells);
		results["pH"] = PHB_001 (self.wells,ALK_001);
		results["Biguanide"] = BIG_001 (self.wells);

		if Sequence[60] == self.sequence then
			results["Iron"] = IRON_001 (self.wells);
			results["Copper"] = COP_001 (self.wells);
			results["Hardness"] = CAO_001 (self.wells);
			results["Borate"] = BORB_001(self.wells);
			results["Shock"] = SHK_001(self.wells);
		end;
	end,
}

series["402 QC 60 sec"] = {
	tags = { "402", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_402.wells,
	sequence = Sequence[60],
	start = Prod_402.start,
	finish = Prod_402.finish
}

series["402 QC 30 sec"] = {
	tags = { "402", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_402.wells,
	sequence = Sequence[30],
	start = Prod_402.start,
	finish = Prod_402.finish
}
