Prod_601 = {
    wells = {
        {
        PHB_Well = 1,
        FCL_Well = 2,
        ALK_Well = 3,
        Blank = 4,
        },
        {
        PHB_Well = 5,
        FCL_Well = 6,
        ALK_Well = 7,
        Blank = 8,
        },
        {
        PHB_Well = 9,
        FCL_Well = 10,
        ALK_Well = 11,
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
    results["# nr BR - 1"] = BR_001 (self.wells[1]);
    results["# nr ALK - 1"] = ALK_001 (self.wells[1]);
    results["# nr pH - 1"] = PHB_001 (self.wells[1],ALK_001);
    results["# nr pH (Salt) - 1"] = PHB_002 (self.wells[1],ALK_001);
    results["# nr FCL - 2"] = FCL_002 (self.wells[2]);
    results["# nr BR - 2"] = BR_001 (self.wells[2]);
    results["# nr ALK - 2"] = ALK_001 (self.wells[2]);
    results["# nr pH - 2"] = PHB_001 (self.wells[2],ALK_001);
    results["# nr pH (Salt) - 2"] = PHB_002 (self.wells[2],ALK_001);
    results["# nr FCL - 3"] = FCL_002 (self.wells[3]);
    results["# nr BR - 3"] = BR_001 (self.wells[3]);
    results["# nr ALK - 3"] = ALK_001 (self.wells[3]);
    results["# nr pH - 3"] = PHB_001 (self.wells[3],ALK_001);
    results["# nr pH (Salt) - 3"] = PHB_002 (self.wells[3],ALK_001);
end,
}



series["601 QC 30 sec"] = {
	tags = { "601", "30 sec", "S1", "OneMoreThing" },
	wells = Prod_601.wells,
	sequence = Sequence[30],
	start = Prod_601.start,
	finish = Prod_601.finish
}
