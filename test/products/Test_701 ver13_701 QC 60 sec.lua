tests["701 ver13"] = 
{ 
desc = "701 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12041, 12137, 11614, 12087, 11393, 11597, 11775, 11872, 12347, 12109, 39745, 39745},
	[428] = { 15481, 16013, 15579, 16096, 15143, 15670, 15831, 15672, 16161, 15590, 42882, 39745},
	[470] = { 15827, 16071, 15502, 16006, 15135, 15840, 15869, 15986, 16526, 16178, 41795, 39745},
	[525] = { 15201, 15173, 14455, 14566, 13679, 14259, 13866, 14164, 14949, 15036, 38888, 39745},
	[568] = { 14353, 14506, 14019, 14584, 13837, 13623, 13578, 13448, 13859, 13493, 40086, 39745},
	[635] = { 16597, 16423, 15693, 16301, 15604, 15261, 15368, 15427, 15936, 15427, 41726, 39745}
	},
["60"] = { 
	[390] = { 12057, 12137, 11611, 12084, 11393, 11595, 11778, 11855, 12341, 12085, 39747, 39745},
	[428] = { 15501, 15992, 15584, 16095, 15166, 15685, 15800, 15644, 16149, 15586, 42861, 39745},
	[470] = { 15844, 16076, 15510, 16011, 15128, 15839, 15883, 15986, 16521, 16179, 41795, 39745},
	[525] = { 15306, 15160, 14458, 14578, 13686, 14276, 13876, 14192, 14973, 15064, 38943, 39745},
	[568] = { 14392, 14501, 14029, 14592, 13851, 13659, 13588, 13451, 13846, 13538, 40121, 39745},
	[635] = { 16565, 16407, 15691, 16315, 15608, 15278, 15337, 15416, 15920, 15464, 41731, 39745}
	}

},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["701 QC 60 sec"]:start();
                 
raw = self.mock.raw;
                 
series["701 QC 60 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "# nr Br - 1", 
expected = round(-0.21425881244138, testfactors["# nr Br - 1"].decimals), 
actual = function() return round(_results["# nr Br - 1"].value, _results["# nr Br - 1"].decimals); end
            },
{ label = "# nr FCL - 2", 
expected = round(-0.003025240870853, testfactors["# nr FCL - 2"].decimals), 
actual = function() return round(_results["# nr FCL - 2"].value, _results["# nr FCL - 2"].decimals); end
            },
{ label = "# nr Br - 3", 
expected = round(-72.387271433975, testfactors["# nr Br - 3"].decimals), 
actual = function() return round(_results["# nr Br - 3"].value, _results["# nr Br - 3"].decimals); end
            },
{ label = "# nr pH - 3", 
expected = round(-16.15811579566, testfactors["# nr pH - 3"].decimals), 
actual = function() return round(_results["# nr pH - 3"].value, _results["# nr pH - 3"].decimals); end
            },
{ label = "# nr FCL - 1", 
expected = round(-0.05853386302658, testfactors["# nr FCL - 1"].decimals), 
actual = function() return round(_results["# nr FCL - 1"].value, _results["# nr FCL - 1"].decimals); end
            },
{ label = "# nr CYA - 1", 
expected = round(2.0390886451769, testfactors["# nr CYA - 1"].decimals), 
actual = function() return round(_results["# nr CYA - 1"].value, _results["# nr CYA - 1"].decimals); end
            },
{ label = "# nr pH (Salt) - 1", 
expected = round(6.2045356213323, testfactors["# nr pH (Salt) - 1"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 1"].value, _results["# nr pH (Salt) - 1"].decimals); end
            },
{ label = "# nr CYA - 3", 
expected = round(-1362.2875895142, testfactors["# nr CYA - 3"].decimals), 
actual = function() return round(_results["# nr CYA - 3"].value, _results["# nr CYA - 3"].decimals); end
            },
{ label = "# nr pH - 2", 
expected = round(6.1944345916897, testfactors["# nr pH - 2"].decimals), 
actual = function() return round(_results["# nr pH - 2"].value, _results["# nr pH - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 2", 
expected = round(6.1571002211041, testfactors["# nr pH (Salt) - 2"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 2"].value, _results["# nr pH (Salt) - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 3", 
expected = round(-8.4220482127968, testfactors["# nr pH (Salt) - 3"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 3"].value, _results["# nr pH (Salt) - 3"].decimals); end
            },
{ label = "# nr CYA - 2", 
expected = round(0.60374514267343, testfactors["# nr CYA - 2"].decimals), 
actual = function() return round(_results["# nr CYA - 2"].value, _results["# nr CYA - 2"].decimals); end
            },
{ label = "# nr FCL - 3", 
expected = round(-17.529907749153, testfactors["# nr FCL - 3"].decimals), 
actual = function() return round(_results["# nr FCL - 3"].value, _results["# nr FCL - 3"].decimals); end
            },
{ label = "# nr pH - 1", 
expected = round(6.2571093845855, testfactors["# nr pH - 1"].decimals), 
actual = function() return round(_results["# nr pH - 1"].value, _results["# nr pH - 1"].decimals); end
            },
{ label = "# nr Br - 2", 
expected = round(-0.0039423335242555, testfactors["# nr Br - 2"].decimals), 
actual = function() return round(_results["# nr Br - 2"].value, _results["# nr Br - 2"].decimals); end
            }
} 
};
