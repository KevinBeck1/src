tests["BC803 ver13"] = 
{ 
desc = "BC803 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11968, 12050, 11506, 11927, 11253, 11498, 11659, 11858, 12379, 12131, 39792},
	[428] = { 15526, 16093, 15750, 16243, 15351, 15794, 15899, 15792, 16315, 15598, 42933},
	[470] = { 15731, 15993, 15465, 15949, 15099, 15768, 15824, 16035, 16683, 16169, 41715},
	[525] = { 15302, 15202, 14488, 14565, 13686, 14279, 13870, 14267, 15111, 15115, 39077},
	[568] = { 14374, 14558, 14128, 14758, 13997, 13776, 13676, 13506, 13943, 13492, 40015},
	[635] = { 16673, 16431, 15662, 16223, 15503, 15229, 15332, 15559, 16213, 15655, 42217}
	},
["60"] = { 
	[390] = { 11973, 12052, 11511, 11926, 11257, 11508, 11657, 11863, 12387, 12128, 39797},
	[428] = { 15550, 16093, 15763, 16257, 15334, 15795, 15932, 15815, 16327, 15637, 42918},
	[470] = { 15732, 15989, 15453, 15943, 15096, 15770, 15822, 16037, 16683, 16172, 41699},
	[525] = { 15260, 15194, 14480, 14575, 13693, 14276, 13873, 14280, 15115, 15118, 39081},
	[568] = { 14365, 14555, 14130, 14753, 13993, 13726, 13669, 13553, 13984, 13517, 39978},
	[635] = { 16679, 16468, 15674, 16231, 15533, 15253, 15357, 15577, 16249, 15665, 42225}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["BC803 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["BC803 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "Hardness LR", 
expected = round(305.64797502292, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Phosphate HR", 
expected = round(17.3206481, testfactors["Phosphate HR"].decimals), 
actual = function() return round(_results["Phosphate HR"].value, _results["Phosphate HR"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(602.92792431247, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "Copper", 
expected = round(2.066294194, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Iron", 
expected = round(1.1712070222209, testfactors["Iron"].decimals), 
actual = function() return round(_results["Iron"].value, _results["Iron"].decimals); end
            },
{ label = "ALK", 
expected = round(90.646208672588, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Calcium Only", 
expected = round(-46.080957524867, testfactors["Calcium Only"].decimals), 
actual = function() return round(_results["Calcium Only"].value, _results["Calcium Only"].decimals); end
            },
{ label = "Bromine", 
expected = round(4.1141457027356, testfactors["Bromine"].decimals), 
actual = function() return round(_results["Bromine"].value, _results["Bromine"].decimals); end
            },
{ label = "Silica", 
expected = round(-5.644690767684, testfactors["Silica"].decimals), 
actual = function() return round(_results["Silica"].value, _results["Silica"].decimals); end
            },
{ label = "Total Chlorine", 
expected = round(1.87247340711, testfactors["Total Chlorine"].decimals), 
actual = function() return round(_results["Total Chlorine"].value, _results["Total Chlorine"].decimals); end
            },
{ label = "Free Chlorine", 
expected = round(1.8285092012158, testfactors["Free Chlorine"].decimals), 
actual = function() return round(_results["Free Chlorine"].value, _results["Free Chlorine"].decimals); end
            }
} 
};
