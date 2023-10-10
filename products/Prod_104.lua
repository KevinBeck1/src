Prod_104 = {
	wells = {
		PHB_Well = 1,
		FCL_Well = 2,
		ALK_Well = 3,
		SALTB_Well = 4,
		COP_Well = 5,
		LRH_Well = 6,
		HRH_Well = 7,
		TCL_Well = 8,
		IRON_Well = 9,
		CYAD_Well = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["Free Chlorine"] = FCL_001 (self.wells);
		results["Total Chlorine"] = TCL_001 (self.wells);
		results["Bromine"] = BR_001 (self.wells);
		results["ALK"] = ALK_001 (self.wells);
		results["pH"] = PHB_001 (self.wells,ALK_001);
		results["pH (Salt)"] = PHB_002 (self.wells,ALK_001);

		if Sequence[60] == self.sequence then
			results["Iron"] = IRON_001 (self.wells);
			results["Copper"] = COP_001 (self.wells);
			results["CYA"] = CYAD_001 (self.wells);
			results["Hardness LR"] = LRH_001 (self.wells);
			results["Hardness LR (Salt)"] = LRH_002 (self.wells);
			results["Hardness HR"] = HRH_001 (self.wells);
			results["Hardness HR (Salt)"] = HRH_002 (self.wells);
			results["Salt"] = SALTB_001(self.wells);
		end;
	end,
}

series["104 QC 60 sec"] = {
	tags = { "104", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_104.wells,
	sequence = Sequence[60],
	start = Prod_104.start,
	finish = Prod_104.finish
}

series["104 QC 30 sec"] = {
	tags = { "104", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_104.wells,
	sequence = Sequence[30],
	start = Prod_104.start,
	finish = Prod_104.finish
}
