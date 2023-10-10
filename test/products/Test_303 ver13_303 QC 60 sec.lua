tests["303 ver13"] = 
{ 
desc = "303 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11978, 12079, 11545, 11971, 11282, 11550, 11691, 11884, 12414, 12142, 39908},
	[428] = { 15411, 16019, 15619, 16157, 15223, 15645, 15805, 15682, 16218, 15494, 42539},
	[470] = { 15636, 15907, 15360, 15847, 15014, 15680, 15735, 15957, 16585, 16078, 41495},
	[525] = { 15301, 15194, 14470, 14573, 13691, 14267, 13876, 14243, 15096, 15087, 38976},
	[568] = { 14342, 14531, 14087, 14696, 13977, 13656, 13619, 13521, 13969, 13430, 39883},
	[635] = { 16333, 16129, 15386, 15924, 15243, 14947, 15060, 15259, 15919, 15338, 41434}
	},
["60"] = { 
	[390] = { 11991, 12089, 11544, 11969, 11286, 11541, 11689, 11872, 12418, 12135, 39898},
	[428] = { 15403, 15950, 15612, 16148, 15214, 15657, 15824, 15635, 16176, 15487, 42516},
	[470] = { 15635, 15903, 15360, 15847, 15022, 15686, 15733, 15942, 16585, 16079, 41484},
	[525] = { 15283, 15165, 14457, 14559, 13679, 14253, 13848, 14226, 15071, 15060, 38949},
	[568] = { 14347, 14509, 14086, 14680, 13930, 13620, 13643, 13488, 13929, 13453, 39849},
	[635] = { 16347, 16130, 15374, 15932, 15238, 14951, 15041, 15246, 15923, 15309, 41441}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["303 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["303 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.580622520828, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Iron", 
expected = round(1.097706436539, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "Salt", 
expected = round(974.89928981531, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8524004819506, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.1294107957319, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "pH", 
expected = round(7.3649173589592, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8663022770431, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "ALK", 
expected = round(93.369505054201, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Borate", 
expected = round(28.339150196727, testfactors["Borate"].decimals), 
actual = function() return round(_results["Borate"].value, _results["Borate"].decimals); end
            },
{ label = "Hardness", 
expected = round(-52.891780980652, testfactors["Hardness"].decimals), 
actual = function() return round(_results["Hardness"].value, _results["Hardness"].decimals); end
            },
{ label = "Hardness (Salt)", 
expected = round(-48.853060253532, testfactors["Hardness (Salt)"].decimals), 
actual = function() return round(_results["Hardness (Salt)"].value, _results["Hardness (Salt)"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6847969280857, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.7467350528333, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
