tests["104 ver13"] = 
{ 
desc = "104 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11968, 12078, 11556, 11973, 11277, 11541, 11693, 11894, 12421, 12151, 39897},
	[428] = { 15419, 15980, 15555, 16132, 15203, 15650, 15768, 15651, 16206, 15491, 42508},
	[470] = { 15647, 15909, 15366, 15856, 15015, 15685, 15741, 15945, 16595, 16076, 41489},
	[525] = { 15291, 15163, 14451, 14549, 13667, 14253, 13852, 14229, 15062, 15043, 38943},
	[568] = { 14341, 14556, 14069, 14689, 13931, 13662, 13638, 13479, 13909, 13461, 39924},
	[635] = { 16366, 16143, 15379, 15936, 15258, 14965, 15064, 15271, 15927, 15343, 41440}
	},
["60"] = { 
	[390] = { 11971, 12075, 11550, 11975, 11292, 11541, 11702, 11888, 12420, 12146, 39909},
	[428] = { 15384, 16003, 15572, 16131, 15187, 15697, 15785, 15664, 16201, 15488, 42509},
	[470] = { 15631, 15896, 15344, 15840, 15010, 15675, 15738, 15943, 16583, 16072, 41483},
	[525] = { 15282, 15124, 14437, 14549, 13672, 14254, 13855, 14220, 15073, 15053, 38924},
	[568] = { 14339, 14546, 14084, 14690, 13969, 13681, 13630, 13464, 13940, 13445, 39877},
	[635] = { 16301, 16131, 15375, 15907, 15229, 14974, 15058, 15239, 15917, 15316, 41391}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["104 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["104 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.523502050612, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6917036551061, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Salt", 
expected = round(976.70041503343, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8448961836163, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.1302540647905, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "pH", 
expected = round(7.3658430588241, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "ALK", 
expected = round(93.403366865815, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness HR (Salt)", 
expected = round(527.30244732734, testfactors["Hardness HR (Salt)"].decimals), 
actual = function() return round(_results["Hardness HR (Salt)"].value, _results["Hardness HR (Salt)"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8689140552955, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(232.21830966597, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Iron", 
expected = round(1.030616111276, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(492.4739520972, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "Hardness LR (Salt)", 
expected = round(317.21458902214, testfactors["Hardness LR (Salt)"].decimals), 
actual = function() return round(_results["Hardness LR (Salt)"].value, _results["Hardness LR (Salt)"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.6983990878153, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
