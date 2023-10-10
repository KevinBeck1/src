tests["26743 ver13"] = 
{ 
desc = "26743 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11991, 12081, 11547, 11971, 11277, 11535, 11695, 11885, 12418, 12135, 39900},
	[428] = { 15429, 15963, 15607, 16132, 15211, 15678, 15788, 15719, 16191, 15487, 42544},
	[470] = { 15649, 15912, 15375, 15850, 15017, 15691, 15742, 15945, 16593, 16079, 41505},
	[525] = { 15283, 15184, 14459, 14558, 13669, 14255, 13851, 14227, 15061, 15048, 38958},
	[568] = { 14334, 14533, 14059, 14665, 13873, 13709, 13665, 13499, 13921, 13416, 39897},
	[635] = { 16378, 16169, 15385, 15953, 15257, 14981, 15084, 15305, 15939, 15348, 41483}
	},
["60"] = { 
	[390] = { 11996, 12099, 11567, 11994, 11295, 11558, 11711, 11895, 12433, 12161, 39916},
	[428] = { 15390, 16018, 15589, 16086, 15201, 15645, 15813, 15697, 16251, 15446, 42543},
	[470] = { 15615, 15917, 15354, 15846, 15007, 15679, 15738, 15951, 16579, 16097, 41493},
	[525] = { 15275, 15171, 14459, 14553, 13673, 14255, 13861, 14232, 15060, 15039, 38964},
	[568] = { 14290, 14565, 14098, 14675, 13963, 13723, 13654, 13493, 13979, 13443, 39935},
	[635] = { 16340, 16162, 15385, 15975, 15260, 14978, 15068, 15271, 15944, 15373, 41487}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["26743 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["26743 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.475123196502, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Iron", 
expected = round(1.0958270091, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Copper", 
expected = round(3.9316887054232, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Phosphate", 
expected = round(2435.174816, testfactors["Phosphate"].decimals), 
actual = function() return round(_results["Phosphate"].value, _results["Phosphate"].decimals); end
            },
{ label = "pH", 
expected = round(7.3656855250184, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8389925218096, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "Borate", 
expected = round(28.095571557166, testfactors["Borate"].decimals), 
actual = function() return round(_results["Borate"].value, _results["Borate"].decimals); end
            },
{ label = "Calcium Only (Salt)", 
expected = round(-42.232221274783, testfactors["Calcium Only (Salt)"].decimals), 
actual = function() return round(_results["Calcium Only (Salt)"].value, _results["Calcium Only (Salt)"].decimals); end
            },
{ label = "ALK", 
expected = round(93.439811516255, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6266555793919, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Calcium Only", 
expected = round(-45.987248870318, testfactors["Calcium Only"].decimals), 
actual = function() return round(_results["Calcium Only"].value, _results["Calcium Only"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.8564796640157, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
