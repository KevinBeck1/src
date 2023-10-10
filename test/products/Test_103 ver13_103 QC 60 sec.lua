tests["103 ver13"] = 
{ 
desc = "103 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11980, 12082, 11564, 11969, 11284, 11537, 11696, 11881, 12411, 12141, 39898},
	[428] = { 15421, 15989, 15603, 16125, 15248, 15653, 15805, 15656, 16217, 15489, 42555},
	[470] = { 15641, 15905, 15367, 15847, 15017, 15694, 15744, 15951, 16593, 16086, 41513},
	[525] = { 15285, 15165, 14451, 14554, 13671, 14256, 13854, 14211, 15061, 15047, 38958},
	[568] = { 14344, 14533, 14095, 14704, 13943, 13659, 13629, 13521, 13931, 13445, 39909},
	[635] = { 16368, 16147, 15379, 15935, 15251, 14969, 15068, 15288, 15951, 15347, 41471}
	},
["60"] = { 
	[390] = { 11995, 12085, 11555, 11980, 11286, 11548, 11703, 11891, 12419, 12140, 39913},
	[428] = { 15435, 15977, 15595, 16143, 15209, 15642, 15793, 15663, 16232, 15485, 42542},
	[470] = { 15645, 15913, 15366, 15853, 15009, 15681, 15736, 15945, 16596, 16074, 41491},
	[525] = { 15290, 15195, 14463, 14567, 13675, 14252, 13852, 14217, 15071, 15060, 38965},
	[568] = { 14411, 14559, 14068, 14699, 13936, 13657, 13616, 13540, 13992, 13456, 39906},
	[635] = { 16359, 16150, 15385, 15943, 15242, 14969, 15073, 15267, 15914, 15330, 41466}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["103 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["103 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.554439941724, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Iron", 
expected = round(1.098924196011, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Salt", 
expected = round(976.51802881844, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.855946224882, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.1298055535925, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "pH", 
expected = round(7.3653507219192, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8694774715594, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "ALK", 
expected = round(93.44631710233, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness", 
expected = round(-52.986915484771, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Hardness (Salt)", 
expected = round(-48.943911216298, testfactors["Hardness (Salt)"].decimals), 
actual = function() return round(_results["Hardness (Salt)"].value, _results["Hardness (Salt)"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6931933134212, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.7488382423639, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
