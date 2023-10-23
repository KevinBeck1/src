tests["ABH 203"] = 
{ 
desc = "ABH 203", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12012, 12088, 11552, 11983, 11284, 11539, 11692, 11890, 12423, 12143, 39881},
	[428] = { 15416, 15979, 15618, 16138, 15205, 15648, 15790, 15680, 16230, 15480, 42531},
	[470] = { 15645, 15912, 15364, 15854, 15014, 15686, 15740, 15944, 16590, 16076, 41506},
	[525] = { 4332, 3412, 10367, 1837, 1681, 3330, 2750, 2754, 4986, 4828, 14146},
	[568] = { 3317, 1654, 5078, 1106, 770, 1227, 1269, 934, 1325, 2552, 10572},
	[635] = { 13050, 10592, 5353, 10199, 12006, 7431, 10294, 10023, 4402, 6246, 17306}
	},
["60"] = { 
	[390] = { 11985, 12086, 11549, 11978, 11284, 11543, 11696, 11884, 12417, 12122, 39902},
	[428] = { 15394, 15967, 15619, 16121, 15234, 15628, 15784, 15705, 16198, 15455, 42525},
	[470] = { 15647, 15911, 15383, 15863, 15013, 15681, 15737, 15952, 16589, 16084, 41484},
	[525] = { 4322, 3402, 10346, 1829, 1673, 3319, 2742, 2745, 4976, 4818, 14124},
	[568] = { 3314, 1648, 5076, 1100, 764, 1222, 1264, 928, 1322, 2553, 10601},
	[635] = { 13109, 10638, 5378, 10254, 12060, 7462, 10347, 10074, 4429, 6279, 17396}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["203 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["203 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(35, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Iron", 
expected = round(1.84, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Salt", 
expected = round(0, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(11.71, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(0, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "Phosphate", 
expected = round(2782, testfactors["Phosphate"].decimals), 
actual = function() return round(_results["Phosphate"].value, _results["Phosphate"].decimals); end
            },
{ label = "pH", 
expected = round(7.47, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(3.11, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "ALK", 
expected = round(103, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness", 
expected = round(88, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Hardness (Salt)", 
expected = round(0, testfactors["Hardness (Salt)"].decimals), 
actual = function() return round(_results["Hardness (Salt)"].value, _results["Hardness (Salt)"].decimals); end
            },
{ label = "Bromine", 
expected = round(0, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(3.18, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
