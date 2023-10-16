tests["DW21 ver13"] = 
{ 
desc = "DW21 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11978, 12188, 11613, 12138, 11366, 11588, 11810, 11805, 12261, 12055, 39648},
	[428] = { 15360, 15897, 15427, 15988, 14982, 15561, 15675, 15402, 15973, 15480, 42655},
	[470] = { 15673, 16037, 15397, 15938, 14989, 15763, 15813, 15834, 16339, 16061, 41609},
	[525] = { 15191, 15184, 14414, 14595, 13617, 14250, 13864, 14080, 14851, 14969, 38760},
	[568] = { 14259, 14443, 13868, 14501, 13633, 13553, 13489, 13311, 13739, 13467, 39932},
	[635] = { 16290, 16232, 15468, 16156, 15424, 15097, 15158, 15113, 15561, 15121, 41007}
	},
["60"] = { 
	[390] = { 11962, 12207, 11638, 12158, 11385, 11609, 11827, 11833, 12281, 12079, 39693},
	[428] = { 15331, 15938, 15425, 16024, 14994, 15582, 15688, 15479, 15972, 15483, 42684},
	[470] = { 15670, 16047, 15394, 15939, 14985, 15753, 15806, 15834, 16342, 16065, 41593},
	[525] = { 15195, 15205, 14421, 14593, 13615, 14243, 13867, 14103, 14877, 15009, 38845},
	[568] = { 14235, 14465, 13860, 14532, 13651, 13561, 13520, 13314, 13711, 13439, 39993},
	[635] = { 16289, 16230, 15459, 16153, 15391, 15087, 15165, 15107, 15578, 15092, 41016}
	},
["120"] = { 
	[390] = { 11974, 12197, 11618, 12143, 11371, 11588, 11816, 11813, 12279, 12060, 39663},
	[428] = { 15329, 15917, 15428, 15975, 14967, 15567, 15751, 15475, 15974, 15486, 42627},
	[470] = { 15668, 16032, 15398, 15940, 14982, 15748, 15801, 15827, 16330, 16056, 41596},
	[525] = { 15194, 15187, 14416, 14595, 13616, 14242, 13864, 14104, 14871, 15017, 38844},
	[568] = { 14231, 14481, 13904, 14473, 13627, 13519, 13496, 13300, 13739, 13411, 39951},
	[635] = { 16266, 16230, 15463, 16139, 15383, 15084, 15153, 15101, 15562, 15090, 40983}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["DW21 QC 120 sec"]:start();
                 
raw = self.mock.raw;
                 
series["DW21 QC 120 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "Copper", 
expected = round(2.052112598, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.3709164638674, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Total Iron", 
expected = round(1.1708163263112, testfactors["Total Iron"].decimals), 
actual = function() return round(_results["Total Iron"].value, _results["Total Iron"].decimals); end
            },
{ label = "Ferrus Iron", 
expected = round(1.1196460946832, testfactors["Ferrus Iron"].decimals), 
actual = function() return round(_results["Ferrus Iron"].value, _results["Ferrus Iron"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.62638476791295, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(511.719301841, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "pH Low", 
expected = round(5.7294197086655, testfactors["pH Low"].decimals), 
actual = function() return round(_results["pH Low"].value, _results["pH Low"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(241.59375145014, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Nitrate", 
expected = round(-5.4673629975512, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "ALK", 
expected = round(93.628181399746, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            }
} 
};
