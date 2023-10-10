Prod_801 = {
	wells = {
		PHB_Well = 1,
		FCLB_Well = 2,
		ALK_Well = 3,
		TCLB_Well = 4,
		PHOS_Well = 5,
		CYAD_Well = 6,
		LRMG_Well = 7,
		SALTB_Well = 8,
		LRH_Well = 9,
		HRH_Well = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["Free Chlorine"] = FCLB_002 (self.wells);
		results["Total Chlorine"] = TCLB_002 (self.wells);
		results["Bromine"] = BR_002 (self.wells);
		results["ALK"] = ALK_001 (self.wells);
		results["pH"] = PHB_001 (self.wells,ALK_001);
		results["pH (Salt)"] = PHB_002 (self.wells,ALK_001);

		if Sequence[60] == self.sequence then
			results["Phosphate"] = PHOS_003 (self.wells);
			results["Mag Hard"] = LRMG_001 (self.wells,ALK_001);
			results["CYA"] = CYAD_001 (self.wells);
			results["Hardness LR"] = LRH_001 (self.wells);
			results["Hardness LR (Salt)"] = LRH_002 (self.wells);
			results["Hardness HR"] = HRH_001 (self.wells);
			results["Hardness HR (Salt)"] = HRH_002 (self.wells);
			results["Salt"] = SALTB_001(self.wells);
		end;
	end,
}

series["801 QC 60 sec"] = {
	tags = { "801", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_801.wells,
	sequence = Sequence[60],
	start = Prod_801.start,
	finish = Prod_801.finish
}

series["801 QC 30 sec"] = {
	tags = { "801", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_801.wells,
	sequence = Sequence[30],
	start = Prod_801.start,
	finish = Prod_801.finish
}
