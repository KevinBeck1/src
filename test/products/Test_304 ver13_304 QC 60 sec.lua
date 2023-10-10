tests["304 ver13"] = 
{ 
desc = "304 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11980, 12077, 11553, 11979, 11285, 11547, 11697, 11889, 12417, 12140, 39905},
	[428] = { 15357, 15963, 15605, 16128, 15233, 15665, 15810, 15713, 16210, 15466, 42511},
	[470] = { 15639, 15897, 15364, 15851, 15006, 15676, 15716, 15938, 16576, 16071, 41478},
	[525] = { 15276, 15171, 14452, 14553, 13670, 14248, 13849, 14213, 15074, 15054, 38953},
	[568] = { 14343, 14544, 14017, 14672, 13932, 13687, 13633, 13499, 13964, 13413, 39890},
	[635] = { 16334, 16148, 15360, 15923, 15242, 14941, 15052, 15241, 15931, 15322, 41393}
	},
["60"] = { 
	[390] = { 11999, 12090, 11557, 11976, 11288, 11546, 11704, 11892, 12422, 12147, 39911},
	[428] = { 15420, 15972, 15629, 16110, 15202, 15649, 15821, 15692, 16202, 15482, 42530},
	[470] = { 15645, 15903, 15357, 15842, 15002, 15684, 15732, 15942, 16578, 16075, 41467},
	[525] = { 15296, 15161, 14455, 14555, 13677, 14267, 13856, 14223, 15085, 15070, 38933},
	[568] = { 14325, 14513, 14077, 14701, 13975, 13626, 13617, 13491, 13875, 13435, 39859},
	[635] = { 16289, 16098, 15347, 15910, 15209, 14941, 15036, 15234, 15902, 15347, 41380}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["304 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["304 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.444992430979, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6902139868947, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Salt", 
expected = round(982.79137079274, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8416798408922, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.1294825746247, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "pH", 
expected = round(7.3649961596404, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "ALK", 
expected = round(93.409876504382, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness HR (Salt)", 
expected = round(527.51219802934, testfactors["Hardness HR (Salt)"].decimals), 
actual = function() return round(_results["Hardness HR (Salt)"].value, _results["Hardness HR (Salt)"].decimals); end
            },
{ label = "Borate", 
expected = round(28.34357063649, testfactors["Borate"].decimals), 
actual = function() return round(_results["Borate"].value, _results["Borate"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8683506715139, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(232.86939526673, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(492.62966069561, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "Hardness LR (Salt)", 
expected = round(318.12193793475, testfactors["Hardness LR (Salt)"].decimals), 
actual = function() return round(_results["Hardness LR (Salt)"].value, _results["Hardness LR (Salt)"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.7009706476591, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
