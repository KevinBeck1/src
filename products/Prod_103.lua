Prod_103 = {
	wells = {
		PHB_Well = 1,
		FCLB_Well = 2,
		ALK_Well = 3,
		SALTB_Well = 4,
		COP_Well = 5,
		CAO_Well = 6,
		TCLB_Well = 7,
		IRON_Well = 8,
		Empty = 9,
		CYAD_Well = 10,
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
		results["Bromine"] = BR_002 (self.wells);
		results["ALK"] = ALK_001 (self.wells);
		results["pH"] = PHB_001 (self.wells,ALK_001);
		results["pH (Salt)"] = PHB_002 (self.wells,ALK_001);

		if Sequence[60] == self.sequence then
			results["Iron"] = IRON_001 (self.wells);
			results["Copper"] = COP_001 (self.wells);
			results["CYA"] = CYAD_001 (self.wells);
			results["Hardness"] = CAO_001 (self.wells);
			results["Hardness (Salt)"] = CAO_002 (self.wells);
			results["Salt"] = SALTB_001(self.wells);

		end;
	end,
}

series["103 QC 60 sec"] = {
	tags = { "103", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_103.wells,
	sequence = Sequence[60],
	start = Prod_103.start,
	finish = Prod_103.finish
}

series["103 QC 30 sec"] = {
	tags = { "103", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_103.wells,
	sequence = Sequence[30],
	start = Prod_103.start,
	finish = Prod_103.finish
}
