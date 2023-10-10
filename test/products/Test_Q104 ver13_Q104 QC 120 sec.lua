tests["Q104 ver13"] = 
{ 
desc = "Q104 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11976, 12079, 11537, 11965, 11264, 11527, 11685, 11879, 12407, 12137, 39871},
	[428] = { 15420, 15947, 15595, 16119, 15209, 15637, 15795, 15668, 16196, 15472, 42547},
	[470] = { 15651, 15915, 15376, 15861, 15021, 15697, 15730, 15959, 16599, 16083, 41509},
	[525] = { 15287, 15137, 14443, 14550, 13673, 14255, 13851, 14225, 15075, 15083, 38967},
	[568] = { 14317, 14559, 14084, 14697, 13891, 13674, 13596, 13411, 13932, 13411, 39905},
	[635] = { 16324, 16203, 15433, 15969, 15291, 15011, 15110, 15301, 15977, 15441, 41601}
	},
["60"] = { 
	[390] = { 11964, 12066, 11543, 11967, 11285, 11534, 11684, 11873, 12413, 12140, 39883},
	[428] = { 15432, 15997, 15603, 16125, 15222, 15685, 15797, 15740, 16226, 15508, 42539},
	[470] = { 15668, 15915, 15365, 15856, 15016, 15691, 15743, 15964, 16589, 16100, 41489},
	[525] = { 15292, 15111, 14438, 14540, 13677, 14263, 13863, 14231, 15065, 15046, 38976},
	[568] = { 14354, 14543, 14070, 14675, 13984, 13688, 13638, 13480, 13949, 13440, 39896},
	[635] = { 16401, 16194, 15438, 15981, 15300, 15002, 15107, 15298, 15968, 15349, 41552}
	},
["120"] = { 
	[390] = { 11981, 12077, 11543, 11962, 11276, 11531, 11687, 11875, 12410, 12149, 39887},
	[428] = { 15419, 15975, 15562, 16147, 15190, 15635, 15769, 15665, 16218, 15466, 42518},
	[470] = { 15642, 15921, 15360, 15844, 15012, 15686, 15736, 15954, 16584, 16089, 41498},
	[525] = { 15290, 15191, 14463, 14558, 13675, 14252, 13860, 14219, 15054, 15029, 38951},
	[568] = { 14341, 14520, 14060, 14711, 13926, 13695, 13661, 13535, 13968, 13435, 39813},
	[635] = { 16315, 16192, 15444, 15964, 15302, 15013, 15114, 15297, 15991, 15425, 41567}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["Q104 QC 120 sec"]:start();
                 
raw = self.mock.raw;
                 
series["Q104 QC 120 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "pH High", 
expected = round(8.2256896371854, testfactors["pH High"].decimals), 
actual = function() return round(_results["pH High"].value, _results["pH High"].decimals); end
            },
{ label = "pH Low", 
expected = round(5.7282672402152, testfactors["pH Low"].decimals), 
actual = function() return round(_results["pH Low"].value, _results["pH Low"].decimals); end
            },
{ label = "ALK", 
expected = round(94.608434121413, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Ammonia", 
expected = round(1.7219263008672, testfactors["Ammonia"].decimals), 
actual = function() return round(_results["Ammonia"].value, _results["Ammonia"].decimals); end
            },
{ label = "Hardness", 
expected = round(232.21298479812, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Nitrate", 
expected = round(-1.9008850022647, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.3668863874701, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.66421504701961, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            },
{ label = "Phosphate ppm", 
expected = round(2.28225584, testfactors["Phosphate ppm"].decimals), 
actual = function() return round(_results["Phosphate ppm"].value, _results["Phosphate ppm"].decimals); end
            }
} 
};
