Prod_Q203 = {
	wells = {
		PHB_Well = 1,
		HRPH_Well = 2,
		SALK_Well = 3,
		PHOS_Well = 4,
		SCAL_Well = 5,
		HRMG_Well = 6,
		Empty = 7,
		NIT_Well = 8,
		SNAT_Well = 9,
		SAM_Well = 10,
		Blank = 11,
	},
	start = function(self)
		clear(raw);
		clear(results);
		tryCall(start_series)(self.sequence);
	end,
	finish = function(self)
		results["pH Mid"] = PHB_005 (self.wells,SALK_001);
		results["pH High"] = HRPH_002 (self.wells);

		if Sequence[60] <= self.sequence then
			results["Phosphate ppm"] = PHOS_004 (self.wells)
		end
		
		if Sequence[120] == self.sequence then
			results["ALK"] = SALK_001 (self.wells);
			results["Nitrate"] = SNAT_001 (self.wells,SALK_001);
			results["Nitrite"] = NIT_001 (self.wells);
			results["Ammonia"] = SAM_003 (self.wells, SALK_001);
			results["Magnesium"] = HRMG_001 (self.wells,SALK_001,PHB_005,HRPH_002);
			results["Calcium"] = SCAL_001 (self.wells);

		end;


	end,
}

series["Q203 QC 120 sec"] = {
	tags = { "Q203", "120 sec", "S1", "OneMoreThing" },
	wells = Prod_Q203.wells,
	sequence = Sequence[120],
	start = Prod_Q203.start,
	finish = Prod_Q203.finish
}

series["Q203 QC 30 sec"] = {
	tags = { "Q203", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_Q203.wells,
	sequence = Sequence[30],
	start = Prod_Q203.start,
	finish = Prod_Q203.finish
}

series["Q203 QC 60 sec"] = {
	tags = { "Q203", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_Q203.wells,
	sequence = Sequence[60],
	start = Prod_Q203.start,
	finish = Prod_Q203.finish
}