tests["26742 ver13"] = 
{ 
desc = "26742 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11973, 12074, 11542, 11969, 11277, 11541, 11698, 11868, 12417, 12144, 39886},
	[428] = { 15402, 15997, 15531, 16129, 15222, 15647, 15775, 15658, 16199, 15484, 42530},
	[470] = { 15645, 15909, 15359, 15851, 15008, 15684, 15734, 15955, 16594, 16095, 41509},
	[525] = { 15296, 15185, 14458, 14560, 13674, 14261, 13855, 14224, 15081, 15067, 38968},
	[568] = { 14349, 14537, 14089, 14679, 13931, 13629, 13664, 13483, 13926, 13437, 39885},
	[635] = { 16290, 16175, 15423, 15974, 15276, 15005, 15090, 15292, 15989, 15415, 41536}
	},
["60"] = { 
	[390] = { 11971, 12074, 11557, 11969, 11278, 11541, 11700, 11878, 12417, 12147, 39907},
	[428] = { 15436, 16017, 15607, 16137, 15207, 15680, 15759, 15694, 16212, 15501, 42569},
	[470] = { 15655, 15912, 15372, 15858, 15017, 15686, 15739, 15951, 16590, 16090, 41501},
	[525] = { 15307, 15199, 14471, 14569, 13687, 14270, 13867, 14239, 15082, 15068, 38969},
	[568] = { 14349, 14529, 14047, 14701, 13967, 13652, 13667, 13516, 13969, 13443, 39893},
	[635] = { 16377, 16150, 15381, 15945, 15264, 14988, 15090, 15278, 15932, 15353, 41484}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["26742 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["26742 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.517949686463, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Iron", 
expected = round(1.097256415344, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Salt", 
expected = round(979.52188905547, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.9245213750081, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH", 
expected = round(7.3645430107082, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.867121583287, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "Borate", 
expected = round(28.303184983484, testfactors["Borate"].decimals), 
actual = function() return round(_results["Borate"].value, _results["Borate"].decimals); end
            },
{ label = "Calcium Only (Salt)", 
expected = round(-48.581067432641, testfactors["Calcium Only (Salt)"].decimals), 
actual = function() return round(_results["Calcium Only (Salt)"].value, _results["Calcium Only (Salt)"].decimals); end
            },
{ label = "ALK", 
expected = round(93.373413188032, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6869637673335, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Calcium Only", 
expected = round(-52.607026293759, testfactors["Calcium Only"].decimals), 
actual = function() return round(_results["Calcium Only"].value, _results["Calcium Only"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.6953991846888, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
