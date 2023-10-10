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
results["Free Chlorine 1"] = FCL_002 (self.wells[1]);
results["Bromine 1"] = BR_001 (self.wells[1]);
results["Alk 1"] = ALK_001 (self.wells[1]);
results["pH 1"] = PHB_001 (self.wells[1],ALK_001);
results["pH (Salt) 1"] = PHB_002 (self.wells[1],ALK_001);
results["Free Chlorine 2"] = FCL_002 (self.wells[2]);
results["Bromine 2"] = BR_001 (self.wells[2]);
results["Alk 2"] = ALK_001 (self.wells[2]);
results["pH 2"] = PHB_001 (self.wells[2],ALK_001);
results["pH (Salt) 2"] = PHB_002 (self.wells[2],ALK_001);
results["Free Chlorine 3"] = FCL_002 (self.wells[3]);
results["Bromine 3"] = BR_001 (self.wells[3]);
results["Alk 3"] = ALK_001 (self.wells[3]);
results["pH 3"] = PHB_001 (self.wells[3],ALK_001);
results["pH (Salt) 3"] = PHB_002 (self.wells[3],ALK_001);
end,
}
