tests["26744 ver13"] = 
{ 
desc = "26744 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11994, 12070, 11540, 11959, 11270, 11531, 11685, 11871, 12411, 12131, 39853},
	[428] = { 15417, 15910, 15608, 16135, 15214, 15670, 15797, 15677, 16142, 15477, 42537},
	[470] = { 15649, 15912, 15376, 15859, 15015, 15689, 15739, 15953, 16601, 16090, 41512},
	[525] = { 15287, 15192, 14462, 14560, 13675, 14255, 13864, 14225, 15060, 15037, 38965},
	[568] = { 14362, 14538, 14083, 14688, 13955, 13697, 13632, 13477, 13951, 13463, 39927},
	[635] = { 16398, 16193, 15412, 15958, 15283, 14994, 15107, 15296, 15993, 15365, 41524}
	},
["60"] = { 
	[390] = { 11931, 12054, 11560, 11961, 11276, 11528, 11693, 11873, 12413, 12133, 39885},
	[428] = { 15423, 15981, 15591, 16121, 15219, 15631, 15792, 15612, 16207, 15487, 42533},
	[470] = { 15641, 15914, 15372, 15851, 15016, 15694, 15739, 15951, 16589, 16088, 41505},
	[525] = { 15282, 15166, 14456, 14558, 13678, 14263, 13851, 14219, 15063, 15045, 38940},
	[568] = { 14344, 14553, 14083, 14693, 13933, 13667, 13654, 13517, 13976, 13430, 39875},
	[635] = { 16308, 16176, 15419, 15970, 15267, 14994, 15093, 15313, 15961, 15411, 41529}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["26744 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["26744 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "Iron", 
expected = round(1.098024105171, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8156144636056, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Biguanide", 
expected = round(56.858905001844, testfactors["Biguanide"].decimals), 
actual = function() return round(_results["Biguanide"].value, _results["Biguanide"].decimals); end
            },
{ label = "ALK", 
expected = round(68.149705014791, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Borate", 
expected = round(28.252439220606, testfactors["Borate"].decimals), 
actual = function() return round(_results["Borate"].value, _results["Borate"].decimals); end
            },
{ label = "pH", 
expected = round(7.3646612339806, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Hardness", 
expected = round(-51.467470586412, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Shock", 
expected = round(43.874733955962, testfactors["Shock"].decimals), 
actual = function() return round(_results["Shock"].value, _results["Shock"].decimals); end
            }
} 
};
