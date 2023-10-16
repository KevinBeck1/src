Prod_701 = {
    wells = {
        {
        PHB_Well = 1,
        FCL_Well = 2,
        CYAD_Well = 3,
        Blank = 4,
        },
        {
        PHB_Well = 5,
        FCL_Well = 6,
        CYAD_Well = 7,
        Blank = 8,
        },
        {
        PHB_Well = 9,
        FCL_Well = 10,
        CYAD_Well = 11,
        Blank = 12,
        }
        },

start = function(self)
clear(raw);
clear(results);
tryCall(start_series)(self.sequence);
end,

finish = function(self)
    results["# nr FCL - 1"] = FCL_002 (self.wells[1]);
    results["# nr Br - 1"] = BR_001 (self.wells[1]);
    results["# nr CYA - 1"] = CYAD_002 (self.wells[1]);
    results["# nr pH - 1"] = PHB_003 (self.wells[1]);
    results["# nr pH (Salt) - 1"] = PHB_004 (self.wells[1]);
    results["# nr FCL - 2"] = FCL_002 (self.wells[2]);
    results["# nr Br - 2"] = BR_001 (self.wells[2]);
    results["# nr CYA - 2"] = CYAD_002 (self.wells[2]);
    results["# nr pH - 2"] = PHB_003 (self.wells[2]);
    results["# nr pH (Salt) - 2"] = PHB_004 (self.wells[2]);
    results["# nr FCL - 3"] = FCL_002 (self.wells[3]);
    results["# nr Br - 3"] = BR_001 (self.wells[3]);
    results["# nr CYA - 3"] = CYAD_002 (self.wells[3]);
    results["# nr pH - 3"] = PHB_003 (self.wells[3]);
    results["# nr pH (Salt) - 3"] = PHB_004 (self.wells[3]);
end,
}



series["701 QC 60 sec"] = {
	tags = { "701", "60 sec", "S1", "OneMoreThing" },
	wells = Prod_701.wells,
	sequence = Sequence[60],
	start = Prod_701.start,
	finish = Prod_701.finish
}
series["701 QC 30 sec"] = {
	tags = { "701", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_701.wells,
	sequence = Sequence[30],
	start = Prod_701.start,
	finish = Prod_701.finish
}