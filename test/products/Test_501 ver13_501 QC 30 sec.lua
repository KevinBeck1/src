tests["501 ver13"] = 
{ 
desc = "501 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 12006, 12110, 11604, 12074, 11378, 11589, 11762, 11850, 12347, 12093, 39709, 21456},
	[428] = { 15476, 15971, 15579, 16070, 15144, 15641, 15731, 15577, 16113, 15563, 42822, 13235},
	[470] = { 15825, 16065, 15487, 15993, 15129, 15832, 15880, 15969, 16525, 16165, 41788, 13215},
	[525] = { 15253, 15156, 14435, 14546, 13650, 14243, 13839, 14144, 14947, 15034, 38899, 35435},
	[568] = { 14390, 14500, 14051, 14586, 13834, 13605, 13548, 13361, 13893, 13477, 40033, 23533},
	[635] = { 16594, 16406, 15680, 16302, 15606, 15273, 15343, 15409, 15937, 15417, 41707, 45686}
	}

},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["501 QC 30 sec"]:start();
                 
raw = self.mock.raw;
                 
series["501 QC 30 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "# nr Br - 1", 
expected = round(-0.21582065031699, testfactors["# nr Br - 1"].decimals), 
actual = function() return round(_results["# nr Br - 1"].value, _results["# nr Br - 1"].decimals); end
            },
{ label = "# nr FCL - 2", 
expected = round(-0.0035131047756002, testfactors["# nr FCL - 2"].decimals), 
actual = function() return round(_results["# nr FCL - 2"].value, _results["# nr FCL - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 3", 
expected = round(-7.2972440065354, testfactors["# nr pH (Salt) - 3"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 3"].value, _results["# nr pH (Salt) - 3"].decimals); end
            },
{ label = "# nr Br - 3", 
expected = round(-72.385019442167, testfactors["# nr Br - 3"].decimals), 
actual = function() return round(_results["# nr Br - 3"].value, _results["# nr Br - 3"].decimals); end
            },
{ label = "# nr FCL - 1", 
expected = round(-0.058944506288954, testfactors["# nr FCL - 1"].decimals), 
actual = function() return round(_results["# nr FCL - 1"].value, _results["# nr FCL - 1"].decimals); end
            },
{ label = "# nr pH - 3", 
expected = round(-14.383188944071, testfactors["# nr pH - 3"].decimals), 
actual = function() return round(_results["# nr pH - 3"].value, _results["# nr pH - 3"].decimals); end
            },
{ label = "# nr pH (Salt) - 1", 
expected = round(6.2019759213921, testfactors["# nr pH (Salt) - 1"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 1"].value, _results["# nr pH (Salt) - 1"].decimals); end
            },
{ label = "# nr TCL - 2", 
expected = round(-0.08013668038581, testfactors["# nr TCL - 2"].decimals), 
actual = function() return round(_results["# nr TCL - 2"].value, _results["# nr TCL - 2"].decimals); end
            },
{ label = "# nr pH - 2", 
expected = round(6.1854657530949, testfactors["# nr pH - 2"].decimals), 
actual = function() return round(_results["# nr pH - 2"].value, _results["# nr pH - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 2", 
expected = round(6.1503318876124, testfactors["# nr pH (Salt) - 2"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 2"].value, _results["# nr pH (Salt) - 2"].decimals); end
            },
{ label = "# nr TCL - 3", 
expected = round(-25.63530777317, testfactors["# nr TCL - 3"].decimals), 
actual = function() return round(_results["# nr TCL - 3"].value, _results["# nr TCL - 3"].decimals); end
            },
{ label = "# nr FCL - 3", 
expected = round(-17.529224590307, testfactors["# nr FCL - 3"].decimals), 
actual = function() return round(_results["# nr FCL - 3"].value, _results["# nr FCL - 3"].decimals); end
            },
{ label = "# nr TCL - 1", 
expected = round(-0.103568227151, testfactors["# nr TCL - 1"].decimals), 
actual = function() return round(_results["# nr TCL - 1"].value, _results["# nr TCL - 1"].decimals); end
            },
{ label = "# nr pH - 1", 
expected = round(6.253735618308, testfactors["# nr pH - 1"].decimals), 
actual = function() return round(_results["# nr pH - 1"].value, _results["# nr pH - 1"].decimals); end
            },
{ label = "# nr Br - 2", 
expected = round(-0.0057838505799048, testfactors["# nr Br - 2"].decimals), 
actual = function() return round(_results["# nr Br - 2"].value, _results["# nr Br - 2"].decimals); end
            }
} 
};
