tests["FF104 ver13"] = 
{ 
desc = "FF104 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11944, 12070, 11535, 11957, 11268, 11527, 11677, 11861, 12400, 12127, 39860},
	[428] = { 15399, 15994, 15634, 16122, 15241, 15649, 15826, 15655, 16205, 15481, 42578},
	[470] = { 15657, 15929, 15385, 15874, 15033, 15697, 15749, 15954, 16606, 16098, 41536},
	[525] = { 15287, 15194, 14467, 14560, 13690, 14262, 13860, 14232, 15086, 15082, 38999},
	[568] = { 14356, 14531, 14063, 14671, 13946, 13695, 13658, 13522, 13946, 13453, 39915},
	[635] = { 16376, 16190, 15459, 15990, 15308, 15023, 15129, 15316, 15992, 15430, 41613}
	},
["60"] = { 
	[390] = { 11980, 12075, 11540, 11965, 11274, 11531, 11689, 11871, 12407, 12131, 39872},
	[428] = { 15429, 15999, 15656, 16121, 15250, 15657, 15790, 15735, 16280, 15498, 42575},
	[470] = { 15657, 15920, 15373, 15861, 15019, 15690, 15742, 15958, 16601, 16092, 41520},
	[525] = { 15320, 15174, 14477, 14572, 13687, 14279, 13880, 14242, 15084, 15061, 38982},
	[568] = { 14366, 14517, 14094, 14711, 13941, 13677, 13672, 13505, 13949, 13465, 39916},
	[635] = { 16390, 16204, 15455, 15987, 15288, 15024, 15112, 15297, 15970, 15386, 41585}
	},
["120"] = { 
	[390] = { 12009, 12079, 11534, 11955, 11271, 11526, 11683, 11877, 12403, 12126, 39862},
	[428] = { 15427, 15969, 15615, 16129, 15194, 15587, 15769, 15677, 16215, 15477, 42592},
	[470] = { 15647, 15918, 15356, 15855, 15017, 15690, 15746, 15955, 16597, 16088, 41514},
	[525] = { 15287, 15168, 14455, 14558, 13673, 14253, 13851, 14212, 15057, 15019, 38916},
	[568] = { 14356, 14540, 14104, 14723, 13941, 13684, 13612, 13461, 13903, 13429, 39901},
	[635] = { 16405, 16191, 15431, 15986, 15297, 14995, 15113, 15314, 15973, 15381, 41568}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["FF104 QC 120 sec"]:start();
                 
raw = self.mock.raw;
                 
series["FF104 QC 120 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "pH High", 
expected = round(8.227489194423, testfactors["pH High"].decimals), 
actual = function() return round(_results["pH High"].value, _results["pH High"].decimals); end
            },
{ label = "pH Low", 
expected = round(5.7300817978421, testfactors["pH Low"].decimals), 
actual = function() return round(_results["pH Low"].value, _results["pH Low"].decimals); end
            },
{ label = "ALK", 
expected = round(94.943136158435, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Ammonia", 
expected = round(1.6478528438702, testfactors["Ammonia"].decimals), 
actual = function() return round(_results["Ammonia"].value, _results["Ammonia"].decimals); end
            },
{ label = "Hardness", 
expected = round(228.98528923194, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Nitrate", 
expected = round(-2.0014156130915, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.3647597477082, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.68088552227071, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            },
{ label = "Phosphate ppm", 
expected = round(2.163402752, testfactors["Phosphate ppm"].decimals), 
actual = function() return round(_results["Phosphate ppm"].value, _results["Phosphate ppm"].decimals); end
            }
} 
};
