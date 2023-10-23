tests["DW13 ver13 colored disk"] = 
{ 
desc = "DW13 ver13 colored disk", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 1711, 8483, 8341, 2170, 6264, 6477, 7833, 6964, 5144, 6340, 17817},
	[428] = { 723, 7731, 10034, 1327, 5158, 6501, 6883, 7183, 7130, 6132, 13193},
	[470] = { 1048, 8831, 13599, 1541, 6074, 8629, 8281, 8919, 10297, 8157, 17837},
	[525] = { 4352, 3767, 11147, 1992, 1735, 3454, 2925, 2907, 5313, 5185, 15084},
	[568] = { 3411, 1895, 5697, 1258, 884, 1362, 1354, 1062, 1538, 2815, 12023},
	[635] = { 15973, 13907, 6669, 12567, 14645, 9361, 13521, 12569, 5859, 8133, 20747}
	},
["60"] = { 
	[390] = { 1734, 8338, 8075, 2171, 6694, 6503, 7305, 7250, 5230, 6264, 17187},
	[428] = { 771, 7523, 9768, 1271, 5301, 6747, 6889, 6712, 7025, 5995, 13582},
	[470] = { 1020, 8960, 13080, 1536, 6142, 8582, 8480, 8613, 10319, 8380, 17749},
	[525] = { 4556, 3665, 11159, 1936, 1697, 3373, 2863, 2789, 5225, 4995, 14652},
	[568] = { 3319, 1912, 5763, 1230, 822, 1371, 1319, 1031, 1465, 2675, 11528},
	[635] = { 16020, 14120, 7213, 12711, 14769, 9328, 13241, 12473, 5846, 8294, 21371}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["DW13 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["DW13 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "Hardness HR", 
expected = round(1621.4437880576, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.7203691503095, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Total Iron", 
expected = round(2.4402522249351, testfactors["Total Iron"].decimals), 
actual = function() return round(_results["Total Iron"].value, _results["Total Iron"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(849.49590786402, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Copper", 
expected = round(1.588483498, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(3.6738503856425, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(2.906333045758, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "ALK", 
expected = round(46.286141731933, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "pH High", 
expected = round(8.7695386166958, testfactors["pH High"].decimals), 
actual = function() return round(_results["pH High"].value, _results["pH High"].decimals); end
            }
} 
};
