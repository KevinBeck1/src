tests["DW21 ver13 colored disk"] = 
{ 
desc = "DW21 ver13 colored disk", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 1681, 7900, 7606, 2141, 6053, 6227, 7383, 7011, 5004, 5705, 16544},
	[428] = { 743, 7472, 9354, 1261, 5039, 6243, 6416, 6711, 6940, 5805, 12630},
	[470] = { 1013, 8323, 12514, 1503, 5774, 8338, 7696, 8050, 9514, 7499, 17603},
	[525] = { 4337, 3573, 10691, 1913, 1637, 3419, 2721, 2642, 4996, 4859, 14549},
	[568] = { 3319, 1826, 5470, 1179, 790, 1305, 1269, 1027, 1404, 2720, 10744},
	[635] = { 14734, 13469, 6557, 11367, 12955, 9160, 12985, 11917, 5194, 7612, 21238}
	},
["60"] = { 
	[390] = { 1765, 7893, 7545, 1983, 6187, 6079, 7316, 6613, 4991, 5934, 16574},
	[428] = { 734, 7421, 9357, 1223, 5207, 6248, 6439, 6298, 6666, 5709, 12886},
	[470] = { 1026, 8508, 12503, 1490, 5996, 8600, 7797, 8331, 9938, 8115, 17376},
	[525] = { 4161, 3574, 10520, 1934, 1631, 3284, 2767, 2783, 4871, 4911, 14861},
	[568] = { 3285, 1714, 5514, 1208, 789, 1268, 1344, 958, 1365, 2697, 10685},
	[635] = { 15117, 12981, 6730, 11931, 13147, 8445, 13112, 11985, 5639, 7768, 19689}
	},
["120"] = { 
	[390] = { 1659, 8185, 7832, 2122, 5966, 6119, 7433, 6507, 5041, 5687, 16261},
	[428] = { 770, 7568, 9142, 1275, 5152, 6229, 6731, 6481, 6735, 5856, 13011},
	[470] = { 965, 8730, 12904, 1455, 5912, 8545, 8144, 8136, 9758, 7955, 17457},
	[525] = { 4129, 3575, 10845, 1916, 1663, 3346, 2789, 2802, 4864, 4845, 14211},
	[568] = { 3366, 1850, 5502, 1254, 809, 1335, 1276, 1028, 1429, 2775, 10802},
	[635] = { 15079, 12241, 6353, 11417, 13602, 8969, 13046, 11298, 5357, 7845, 20207}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["DW21 QC 120 sec"]:start();
                 
raw = self.mock.raw;
                 
series["DW21 QC 120 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "Hardness HR", 
expected = round(1035.1662016452, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "Nitrate", 
expected = round(31.421827037947, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.656358621291, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.70914591338734, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            },
{ label = "Total Iron", 
expected = round(2.502801881584, testfactors["Total Iron"].decimals), 
actual = function() return round(_results["Total Iron"].value, _results["Total Iron"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(550.54693324727, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "pH Low", 
expected = round(6.2466752011793, testfactors["pH Low"].decimals), 
actual = function() return round(_results["pH Low"].value, _results["pH Low"].decimals); end
            },
{ label = "Ferrus Iron", 
expected = round(0.38774705175157, testfactors["Ferrus Iron"].decimals), 
actual = function() return round(_results["Ferrus Iron"].value, _results["Ferrus Iron"].decimals); end
            },
{ label = "ALK", 
expected = round(53.751712311284, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Copper", 
expected = round(1.55536005, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            }
} 
};
