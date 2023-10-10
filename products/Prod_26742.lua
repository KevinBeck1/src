Prod_26742 = {
	wells = {
		PHB_Well = 1,
		FCL_Well = 2,
		ALK_Well = 3,
		SALTB_Well = 4,
		CAO_Well = 5,
		TCL_Well = 6,
		COP_Well = 7,
		IRON_Well = 8,
		BORB_Well = 9,
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

		if Sequence[60] == self.sequence then
			results["Iron"] = IRON_001 (self.wells);
			results["Copper"] = COP_001 (self.wells);
			results["CYA"] = CYAD_001 (self.wells);
			results["Calcium Only"] = CAO_001 (self.wells);
			results["Calcium Only (Salt)"] = CAO_002 (self.wells);
			results["Salt"] = SALTB_001(self.wells);
			results["Borate"] = BORB_001(self.wells);
		end;
	end,
}

series["26742 QC 60 sec"] = {
	tags = { "26742", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_26742.wells,
	sequence = Sequence[60],
	start = Prod_26742.start,
	finish = Prod_26742.finish
}

series["26742 QC 30 sec"] = {
	tags = { "26742", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_26742.wells,
	sequence = Sequence[30],
	start = Prod_26742.start,
	finish = Prod_26742.finish
}
