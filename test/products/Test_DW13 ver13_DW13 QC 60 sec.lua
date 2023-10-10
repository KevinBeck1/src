tests["DW13 ver13"] = 
{ 
desc = "DW13 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11986, 12077, 11529, 11949, 11278, 11525, 11677, 11869, 12396, 12127, 39855},
	[428] = { 15423, 16009, 15656, 16148, 15274, 15672, 15806, 15713, 16248, 15498, 42639},
	[470] = { 15681, 15946, 15400, 15883, 15046, 15721, 15764, 15992, 16620, 16133, 41555},
	[525] = { 15309, 15151, 14469, 14564, 13689, 14269, 13863, 14247, 15087, 15075, 39023},
	[568] = { 14353, 14525, 14121, 14743, 13950, 13755, 13668, 13545, 13970, 13444, 39974},
	[635] = { 16507, 16285, 15524, 16081, 15378, 15093, 15199, 15396, 16086, 15479, 41794}
	},
["60"] = { 
	[390] = { 11983, 12066, 11529, 11952, 11268, 11523, 11676, 11883, 12403, 12139, 39865},
	[428] = { 15445, 16001, 15657, 16213, 15241, 15694, 15827, 15699, 16235, 15515, 42619},
	[470] = { 15657, 15927, 15387, 15864, 15033, 15702, 15754, 15977, 16607, 16114, 41572},
	[525] = { 15301, 15188, 14477, 14573, 13685, 14266, 13863, 14236, 15087, 15068, 39001},
	[568] = { 14342, 14553, 14116, 14703, 13994, 13668, 13684, 13495, 13951, 13444, 39927},
	[635] = { 16452, 16256, 15489, 16037, 15365, 15073, 15163, 15367, 16035, 15464, 41727}
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
                 
{{ label = "Copper", 
expected = round(2.01328676, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(600.72256478975, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.366197461704, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(326.11926648688, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Total Iron", 
expected = round(1.1695400758823, testfactors["Total Iron"].decimals), 
actual = function() return round(_results["Total Iron"].value, _results["Total Iron"].decimals); end
            },
{ label = "ALK", 
expected = round(94.539487215564, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "pH High", 
expected = round(8.2261413010204, testfactors["pH High"].decimals), 
actual = function() return round(_results["pH High"].value, _results["pH High"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.6589074144995, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.875267173827, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            }
} 
};
