tests["DW21 ver13"] = 
{ 
desc = "DW21 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11968, 12064, 11530, 11954, 11262, 11525, 11677, 11863, 12396, 12123, 39850},
	[428] = { 15454, 15983, 15648, 16132, 15220, 15699, 15848, 15695, 16231, 15511, 42611},
	[470] = { 15662, 15929, 15385, 15863, 15030, 15701, 15751, 15969, 16593, 16111, 41520},
	[525] = { 15306, 15191, 14477, 14587, 13691, 14274, 13876, 14247, 15089, 15078, 39000},
	[568] = { 14338, 14563, 14081, 14736, 13979, 13686, 13601, 13485, 13914, 13451, 39930},
	[635] = { 16424, 16219, 15466, 16024, 15307, 15037, 15131, 15336, 16000, 15445, 41633}
	},
["60"] = { 
	[390] = { 11925, 12047, 11534, 11947, 11266, 11522, 11681, 11860, 12396, 12126, 39851},
	[428] = { 15412, 16017, 15652, 16174, 15212, 15680, 15775, 15699, 16191, 15525, 42607},
	[470] = { 15657, 15919, 15387, 15873, 15035, 15699, 15753, 15968, 16605, 16106, 41537},
	[525] = { 15272, 15193, 14467, 14570, 13691, 14256, 13856, 14233, 15079, 15067, 38987},
	[568] = { 14360, 14523, 14123, 14715, 13950, 13668, 13623, 13492, 13940, 13419, 39912},
	[635] = { 16409, 16196, 15450, 15999, 15310, 15019, 15112, 15320, 15995, 15411, 41631}
	},
["120"] = { 
	[390] = { 11965, 12070, 11551, 11974, 11278, 11538, 11689, 11880, 12411, 12134, 39882},
	[428] = { 15406, 15998, 15604, 16128, 15223, 15678, 15804, 15679, 16174, 15468, 42569},
	[470] = { 15652, 15924, 15365, 15856, 15021, 15689, 15747, 15954, 16603, 16084, 41523},
	[525] = { 15290, 15187, 14463, 14554, 13670, 14257, 13867, 14241, 15062, 15057, 38968},
	[568] = { 14342, 14560, 14130, 14730, 13979, 13692, 13625, 13461, 13959, 13444, 39934},
	[635] = { 16415, 16209, 15431, 15975, 15291, 15014, 15112, 15317, 15993, 15415, 41582}
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
expected = round(2.031038548, testfactors["Copper"].decimals), 
actual = function() return round(_results["Copper"].value, _results["Copper"].decimals); end
            },
{ label = "Hardness HR", 
expected = round(505.08524713746, testfactors["Hardness HR"].decimals), 
actual = function() return round(_results["Hardness HR"].value, _results["Hardness HR"].decimals); end
            },
{ label = "pH Low", 
expected = round(5.7287279385887, testfactors["pH Low"].decimals), 
actual = function() return round(_results["pH Low"].value, _results["pH Low"].decimals); end
            },
{ label = "Ferrus Iron", 
expected = round(1.1201717655182, testfactors["Ferrus Iron"].decimals), 
actual = function() return round(_results["Ferrus Iron"].value, _results["Ferrus Iron"].decimals); end
            },
{ label = "Total Iron", 
expected = round(1.1686284898795, testfactors["Total Iron"].decimals), 
actual = function() return round(_results["Total Iron"].value, _results["Total Iron"].decimals); end
            },
{ label = "ALK", 
expected = round(94.573970338169, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Hardness LR", 
expected = round(239.60297203248, testfactors["Hardness LR"].decimals), 
actual = function() return round(_results["Hardness LR"].value, _results["Hardness LR"].decimals); end
            },
{ label = "Nitrate", 
expected = round(-5.8514861580274, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.3661580869005, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.62673456672222, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            }
} 
};
