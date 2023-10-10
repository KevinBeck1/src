tests["Q203 ver13"] = 
{ 
desc = "Q203 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11974, 12091, 11569, 11983, 11305, 11545, 11705, 11887, 12408, 12154, 39917},
	[428] = { 15402, 15969, 15642, 16091, 15218, 15653, 15790, 15687, 16199, 15478, 42493},
	[470] = { 15643, 15908, 15375, 15852, 15011, 15680, 15737, 15945, 16588, 16083, 41471},
	[525] = { 15180, 15170, 14457, 14557, 13671, 14251, 13852, 14227, 15049, 15025, 38945},
	[568] = { 14336, 14523, 14082, 14681, 13903, 13697, 13635, 13453, 13909, 13458, 39882},
	[635] = { 16320, 16117, 15357, 15901, 15245, 14946, 15045, 15170, 15919, 15319, 41368}
	},
["60"] = { 
	[390] = { 11999, 12107, 11575, 11996, 11300, 11560, 11722, 11900, 12434, 12158, 39948},
	[428] = { 15385, 15988, 15608, 16092, 15178, 15646, 15755, 15659, 16201, 15455, 42517},
	[470] = { 15608, 15895, 15353, 15839, 14998, 15667, 15719, 15939, 16580, 16074, 41455},
	[525] = { 15284, 15145, 14443, 14551, 13664, 14249, 13841, 14215, 15054, 15044, 38927},
	[568] = { 14330, 14506, 14065, 14699, 13938, 13657, 13643, 13517, 13953, 13450, 39881},
	[635] = { 16318, 16098, 15350, 15895, 15213, 14935, 15031, 15222, 15875, 15289, 41385}
	},
["120"] = { 
	[390] = { 11963, 12084, 11570, 11990, 11300, 11550, 11713, 11887, 12429, 12151, 39945},
	[428] = { 15385, 15966, 15571, 16122, 15182, 15612, 15743, 15634, 16175, 15429, 42480},
	[470] = { 15623, 15887, 15355, 15839, 14998, 15664, 15716, 15933, 16559, 16069, 41438},
	[525] = { 15275, 15127, 14448, 14545, 13668, 14243, 13842, 14209, 15067, 15040, 38910},
	[568] = { 14341, 14520, 14066, 14654, 13954, 13606, 13647, 13519, 13942, 13449, 39857},
	[635] = { 16282, 16096, 15362, 15895, 15208, 14930, 15022, 15230, 15891, 15326, 41354}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["Q203 QC 120 sec"]:start();
                 
raw = self.mock.raw;
                 
series["Q203 QC 120 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "pH High", 
expected = round(7.7505934788611, testfactors["pH High"].decimals), 
actual = function() return round(_results["pH High"].value, _results["pH High"].decimals); end
            },
{ label = "Calcium", 
expected = round(-61.640389755075, testfactors["Calcium"].decimals), 
actual = function() return round(_results["Calcium"].value, _results["Calcium"].decimals); end
            },
{ label = "ALK", 
expected = round(64.53305091968, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Ammonia", 
expected = round(1.0330104342769, testfactors["Ammonia"].decimals), 
actual = function() return round(_results["Ammonia"].value, _results["Ammonia"].decimals); end
            },
{ label = "Phosphate ppm", 
expected = round(2.02922855, testfactors["Phosphate ppm"].decimals), 
actual = function() return round(_results["Phosphate ppm"].value, _results["Phosphate ppm"].decimals); end
            },
{ label = "Nitrate", 
expected = round(-18.647980858998, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.5695145631388, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.66398757421875, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            },
{ label = "Magnesium", 
expected = round(268.45764695583, testfactors["Magnesium"].decimals), 
actual = function() return round(_results["Magnesium"].value, _results["Magnesium"].decimals); end
            }
} 
};
