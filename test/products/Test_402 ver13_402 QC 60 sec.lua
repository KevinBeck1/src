tests["402 ver13"] = 
{ 
desc = "402 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12011, 12084, 11542, 11964, 11272, 11537, 11691, 11873, 12405, 12123, 39885},
	[428] = { 15423, 15955, 15606, 16146, 15215, 15643, 15783, 15666, 16219, 15507, 42577},
	[470] = { 15639, 15916, 15370, 15855, 15006, 15683, 15735, 15957, 16592, 16081, 41502},
	[525] = { 15304, 15138, 14443, 14551, 13668, 14254, 13846, 14235, 15094, 15057, 38961},
	[568] = { 14379, 14527, 14072, 14688, 13912, 13701, 13673, 13469, 13965, 13417, 39967},
	[635] = { 16381, 16167, 15407, 15966, 15282, 15003, 15099, 15297, 15966, 15384, 41517}
	},
["60"] = { 
	[390] = { 11957, 12072, 11550, 11973, 11280, 11542, 11695, 11877, 12411, 12145, 39903},
	[428] = { 15411, 15954, 15617, 16139, 15227, 15666, 15785, 15676, 16225, 15467, 42535},
	[470] = { 15646, 15913, 15370, 15855, 15011, 15684, 15736, 15960, 16589, 16081, 41492},
	[525] = { 15273, 15111, 14444, 14542, 13673, 14260, 13863, 14219, 15074, 15052, 38953},
	[568] = { 14355, 14528, 14114, 14723, 13899, 13711, 13675, 13513, 13947, 13435, 39929},
	[635] = { 16390, 16174, 15403, 15970, 15256, 14985, 15101, 15288, 15959, 15384, 41499}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["402 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["402 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "Iron", 
expected = round(1.098394725491, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8125619513475, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Biguanide", 
expected = round(56.981992640418, testfactors["Biguanide"].decimals), 
actual = function() return round(_results["Biguanide"].value, _results["Biguanide"].decimals); end
            },
{ label = "ALK", 
expected = round(72.530932510629, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Borate", 
expected = round(28.220995134284, testfactors["Borate"].decimals), 
actual = function() return round(_results["Borate"].value, _results["Borate"].decimals); end
            },
{ label = "pH", 
expected = round(7.3645036013024, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Hardness", 
expected = round(-51.40145466615, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Shock", 
expected = round(43.778858266451, testfactors["Shock"].decimals), 
actual = function() return round(_results["Shock"].value, _results["Shock"].decimals); end
            }
} 
};
