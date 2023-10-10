tests["801 ver13"] = 
{ 
desc = "801 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12002, 12094, 11551, 11980, 11285, 11544, 11701, 11892, 12415, 12137, 39911},
	[428] = { 15420, 15956, 15619, 16141, 15300, 15659, 15765, 15652, 16207, 15486, 42547},
	[470] = { 15624, 15896, 15364, 15849, 14999, 15681, 15709, 15949, 16574, 16082, 41456},
	[525] = { 15280, 15154, 14457, 14551, 13669, 14245, 13851, 14218, 15073, 15059, 38923},
	[568] = { 14349, 14491, 14068, 14725, 13982, 13667, 13667, 13527, 13947, 13412, 39875},
	[635] = { 16325, 16109, 15351, 15920, 15227, 14937, 15050, 15223, 15887, 15322, 41359}
	},
["60"] = { 
	[390] = { 12017, 12105, 11554, 11982, 11289, 11550, 11709, 11887, 12416, 12145, 39924},
	[428] = { 15402, 15954, 15622, 16127, 15199, 15615, 15771, 15669, 16171, 15486, 42509},
	[470] = { 15633, 15892, 15352, 15839, 14995, 15671, 15726, 15935, 16575, 16071, 41461},
	[525] = { 15287, 15126, 14445, 14549, 13666, 14244, 13844, 14201, 15053, 15022, 38917},
	[568] = { 14318, 14565, 14104, 14660, 13933, 13684, 13670, 13474, 13918, 13396, 39861},
	[635] = { 16297, 16112, 15347, 15902, 15216, 14944, 15042, 15227, 15880, 15291, 41345}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["801 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["801 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(35.334510269106, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.632761426289, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Salt", 
expected = round(873.70267487528, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Mag Hard", 
expected = round(897.22505784167, testfactors["Mag Hard"].decimals), 
actual = function() return round(_results["Mag Hard"].value, _results["Mag Hard"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.128872386924, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "Phosphate", 
expected = round(2433.651872, testfactors["Phosphate"].decimals), 
actual = function() return round(_results["Phosphate"].value, _results["Phosphate"].decimals); end
            },
{ label = "pH", 
expected = round(7.3643262487765, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "ALK", 
expected = round(93.395554342799, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness HR (Salt)", 
expected = round(534.64028196092, testfactors["Hardness HR (Salt)"].decimals), 
actual = function() return round(_results["Hardness HR (Salt)"].value, _results["Hardness HR (Salt)"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8414096650611, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(229.03643811224, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(497.91224596995, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "Hardness LR (Salt)", 
expected = round(312.78351965639, testfactors["Hardness LR (Salt)"].decimals), 
actual = function() return round(_results["Hardness LR (Salt)"].value, _results["Hardness LR (Salt)"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.8556378064421, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
