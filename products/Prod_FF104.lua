Prod_FF104 = {
	wells = {
		PHB_Well = 1,
		LRPH_Well = 2,
		HRPH_Well = 3,
		PHOS_Well = 4,
		LRH_Well = 5,
		ALK_Well = 6,
		NIT_Well = 7,
		NAT_Well = 8,
		SAM_Well = 9,
		Empty = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["ALK"] = ALK_001(self.wells);
		results["pH Mid"] = PHB_001(self.wells, ALK_001);
		results["pH Low"] = LRPH_001(self.wells);
		results["pH High"] = HRPH_001(self.wells);

		if Sequence[60] <= self.sequence then
			results["Phosphate ppm"] = PHOS_003(self.wells);
			results["Hardness"] = LRH_001(self.wells);
			
		end

		if Sequence[120] == self.sequence then
			results["Nitrate"] = NAT_001 (self.wells,ALK_001);
			results["Nitrite"] = NIT_001 (self.wells);
			results["Ammonia"] = SAM_004 (self.wells,ALK_001);

		end;
	end,
}

series["FF104 QC 120 sec"] = {
	tags = { "FF104", "120 sec", "S1", "OneMoreThing" },
	wells = Prod_FF104.wells,
	sequence = Sequence[120],
	start = Prod_FF104.start,
	finish = Prod_FF104.finish
}

series["FF104 QC 60 sec"] = {
	tags = { "FF104", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_FF104.wells,
	sequence = Sequence[60],
	start = Prod_FF104.start,
	finish = Prod_FF104.finish
}

series["FF104 QC 30 sec"] = {
	tags = { "FF104", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_FF104.wells,
	sequence = Sequence[30],
	start = Prod_FF104.start,
	finish = Prod_FF104.finish
}
