tests["FF203 ver13"] = 
{ 
desc = "FF203 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11955, 12073, 11556, 11973, 11287, 11541, 11697, 11900, 12426, 12145, 39917},
	[428] = { 15416, 15971, 15604, 16130, 15212, 15613, 15777, 15675, 16204, 15483, 42504},
	[470] = { 15643, 15894, 15357, 15849, 15006, 15675, 15726, 15944, 16562, 16091, 41444},
	[525] = { 15275, 15156, 14447, 14543, 13666, 14245, 13853, 14213, 15057, 15033, 38947},
	[568] = { 14350, 14505, 14062, 14684, 13929, 13691, 13617, 13497, 13951, 13468, 39885},
	[635] = { 16319, 16118, 15357, 15900, 15230, 14942, 15034, 15233, 15897, 15320, 41372}
	},
["60"] = { 
	[390] = { 12007, 12109, 11577, 11996, 11311, 11565, 11721, 11902, 12444, 12168, 39942},
	[428] = { 15402, 15989, 15603, 16157, 15197, 15651, 15798, 15683, 16212, 15461, 42536},
	[470] = { 15631, 15895, 15362, 15848, 15003, 15669, 15728, 15932, 16580, 16066, 41464},
	[525] = { 15279, 15170, 14450, 14557, 13671, 14248, 13851, 14213, 15065, 15047, 38944},
	[568] = { 14317, 14503, 14074, 14714, 13918, 13654, 13633, 13486, 13955, 13431, 39844},
	[635] = { 16306, 16105, 15354, 15898, 15217, 14939, 15042, 15230, 15882, 15291, 41351}
	},
["120"] = { 
	[390] = { 11956, 12079, 11566, 11979, 11289, 11554, 11709, 11891, 12427, 12138, 39939},
	[428] = { 15403, 15972, 15579, 16111, 15176, 15673, 15779, 15680, 16180, 15453, 42496},
	[470] = { 15629, 15889, 15359, 15857, 14996, 15671, 15723, 15929, 16570, 16063, 41448},
	[525] = { 15283, 15171, 14455, 14558, 13670, 14245, 13851, 14218, 15065, 15048, 38922},
	[568] = { 14339, 14502, 14020, 14645, 13951, 13736, 13616, 13459, 13949, 13428, 39859},
	[635] = { 16278, 16104, 15352, 15927, 15218, 14936, 15037, 15214, 15899, 15317, 41362}
	}
},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["FF203 QC 120 sec"]:start();
                 
raw = self.mock.raw;
                 
series["FF203 QC 120 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "pH High", 
expected = round(7.7511290891995, testfactors["pH High"].decimals), 
actual = function() return round(_results["pH High"].value, _results["pH High"].decimals); end
            },
{ label = "Calcium", 
expected = round(-62.569042858623, testfactors["Calcium"].decimals), 
actual = function() return round(_results["Calcium"].value, _results["Calcium"].decimals); end
            },
{ label = "ALK", 
expected = round(66.789430526343, testfactors["ALK"].decimals), 
actual = function() return round(_results["ALK"].value, _results["ALK"].decimals); end
            },
{ label = "Ammonia", 
expected = round(0.98222343937663, testfactors["Ammonia"].decimals), 
actual = function() return round(_results["Ammonia"].value, _results["Ammonia"].decimals); end
            },
{ label = "Phosphate ppm", 
expected = round(2.11176685, testfactors["Phosphate ppm"].decimals), 
actual = function() return round(_results["Phosphate ppm"].value, _results["Phosphate ppm"].decimals); end
            },
{ label = "Nitrate", 
expected = round(-18.694722726796, testfactors["Nitrate"].decimals), 
actual = function() return round(_results["Nitrate"].value, _results["Nitrate"].decimals); end
            },
{ label = "pH Mid", 
expected = round(7.5607944548826, testfactors["pH Mid"].decimals), 
actual = function() return round(_results["pH Mid"].value, _results["pH Mid"].decimals); end
            },
{ label = "Nitrite", 
expected = round(0.68097639335867, testfactors["Nitrite"].decimals), 
actual = function() return round(_results["Nitrite"].value, _results["Nitrite"].decimals); end
            },
{ label = "Magnesium", 
expected = round(258.36519141492, testfactors["Magnesium"].decimals), 
actual = function() return round(_results["Magnesium"].value, _results["Magnesium"].decimals); end
            }
} 
};
