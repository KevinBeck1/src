tests["204 ver13"] = 
{ 
desc = "204 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12029, 12110, 11570, 11993, 11302, 11559, 11709, 11895, 12436, 12158, 39934},
	[428] = { 15400, 15999, 15603, 16169, 15215, 15656, 15832, 15703, 16177, 15459, 42517},
	[470] = { 15639, 15913, 15364, 15854, 15005, 15685, 15736, 15940, 16602, 16065, 41485},
	[525] = { 15290, 15155, 14450, 14551, 13669, 14249, 13852, 14210, 15059, 15033, 38882},
	[568] = { 14384, 14543, 14063, 14691, 13917, 13704, 13660, 13497, 13953, 13425, 39862},
	[635] = { 16341, 16123, 15363, 15925, 15238, 14945, 15045, 15240, 15914, 15311, 41428}
	},
["60"] = { 
	[390] = { 11973, 12085, 11560, 11978, 11287, 11541, 11697, 11890, 12421, 12141, 39920},
	[428] = { 15425, 15972, 15603, 16147, 15205, 15654, 15769, 15591, 16206, 15471, 42525},
	[470] = { 15633, 15907, 15368, 15859, 15007, 15677, 15733, 15936, 16582, 16074, 41480},
	[525] = { 15288, 15148, 14446, 14547, 13671, 14265, 13845, 14204, 15067, 15042, 38957},
	[568] = { 14321, 14529, 14069, 14705, 13918, 13657, 13630, 13472, 13957, 13466, 39878},
	[635] = { 16309, 16121, 15362, 15903, 15218, 14942, 15043, 15210, 15905, 15330, 41383}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["204 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["204 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "CYA", 
expected = round(34.48543230184, testfactors["CYA"].decimals), 
actual = function() return round(_results["CYA"].value, _results["CYA"].decimals); end
            },
{ label = "Bromine", 
expected = round(5.6263957478277, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Salt", 
expected = round(977.39838668729, testfactors["Salt"].decimals), 
actual = function() return round(_results["Salt"].value, _results["Salt"].decimals); end
            },
{ label = "Copper", 
expected = round(3.8580900864387, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH (Salt)", 
expected = round(7.1267175666004, testfactors["pH (Salt)"].decimals), 
actual = function() return round(_results["pH (Salt)"].value, _results["pH (Salt)"].decimals); end
            },
{ label = "Phosphate", 
expected = round(2314.164224, testfactors["Phosphate"].decimals), 
actual = function() return round(_results["Phosphate"].value, _results["Phosphate"].decimals); end
            },
{ label = "pH", 
expected = round(7.3619599528904, testfactors["pH"].decimals), 
actual = function() return round(_results["pH"].value, _results["pH"].decimals); end
            },
{ label = "ALK", 
expected = round(93.44631710233, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness HR (Salt)", 
expected = round(527.31243521841, testfactors["Hardness HR (Salt)"].decimals), 
actual = function() return round(_results["Hardness HR (Salt)"].value, _results["Hardness HR (Salt)"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(2.0030410427735, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(232.54382748272, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(492.48136696723, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "Hardness LR (Salt)", 
expected = round(317.6682003367, testfactors["Hardness LR (Salt)"].decimals), 
actual = function() return round(_results["Hardness LR (Salt)"].value, _results["Hardness LR (Salt)"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.8306805231031, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            }
} 
};
