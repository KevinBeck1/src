tests["601 ver13"] = 
{ 
desc = "601 ver13", 
mock = { 
raw = { 
["30"] = { 
	[390] = { 11999, 12117, 11611, 12082, 11381, 11588, 11767, 11863, 12356, 12099, 39722},
	[428] = { 15470, 15957, 15580, 16077, 15167, 15635, 15807, 15643, 16137, 15577, 42833},
	[470] = { 15823, 16064, 15492, 15991, 15126, 15836, 15877, 15994, 16520, 16203, 41757},
	[525] = { 15287, 15171, 14450, 14560, 13666, 14253, 13855, 14160, 14959, 15037, 38909},
	[568] = { 14379, 14500, 13992, 14607, 13840, 13652, 13589, 13400, 13858, 13521, 40058},
	[635] = { 16583, 16397, 15683, 16296, 15592, 15253, 15335, 15398, 15907, 15412, 41688}
	}

},
                 
},
                 
setup = function(self)
                 
writeHedder(self.desc);
                 
series["601 QC 30 sec"]:start();
                 
raw = self.mock.raw;
                 
series["601 QC 30 sec"]:finish();
                 
end,
                 
teardown = function()
                 
raw={};
                 
_result={};
                 
end,
                 
cases =
                 
{{ label = "# nr Br - 1", 
expected = round(-0.21596263692982, testfactors["# nr Br - 1"].decimals), 
actual = function() return round(_results["# nr Br - 1"].value, _results["# nr Br - 1"].decimals); end
            },
{ label = "# nr FCL - 2", 
expected = round(-0.002800065243522, testfactors["# nr FCL - 2"].decimals), 
actual = function() return round(_results["# nr FCL - 2"].value, _results["# nr FCL - 2"].decimals); end
            },
{ label = "# nr ALK - 1", 
expected = round(-17.340030714659, testfactors["# nr ALK - 1"].decimals), 
actual = function() return round(_results["# nr ALK - 1"].value, _results["# nr ALK - 1"].decimals); end
            },
{ label = "# nr ALK - 3", 
expected = round(-19131.224618515, testfactors["# nr ALK - 3"].decimals), 
actual = function() return round(_results["# nr ALK - 3"].value, _results["# nr ALK - 3"].decimals); end
            },
{ label = "# nr FCL - 1", 
expected = round(-0.058981836708683, testfactors["# nr FCL - 1"].decimals), 
actual = function() return round(_results["# nr FCL - 1"].value, _results["# nr FCL - 1"].decimals); end
            },
{ label = "# nr ALK - 2", 
expected = round(-24.671092263912, testfactors["# nr ALK - 2"].decimals), 
actual = function() return round(_results["# nr ALK - 2"].value, _results["# nr ALK - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 1", 
expected = round(6.177817681143, testfactors["# nr pH (Salt) - 1"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 1"].value, _results["# nr pH (Salt) - 1"].decimals); end
            },
{ label = "# nr pH - 3", 
expected = round(-28.512090974505, testfactors["# nr pH - 3"].decimals), 
actual = function() return round(_results["# nr pH - 3"].value, _results["# nr pH - 3"].decimals); end
            },
{ label = "# nr pH - 2", 
expected = round(6.1749724053076, testfactors["# nr pH - 2"].decimals), 
actual = function() return round(_results["# nr pH - 2"].value, _results["# nr pH - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 2", 
expected = round(6.1187933574099, testfactors["# nr pH (Salt) - 2"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 2"].value, _results["# nr pH (Salt) - 2"].decimals); end
            },
{ label = "# nr pH (Salt) - 3", 
expected = round(-8.788858920287, testfactors["# nr pH (Salt) - 3"].decimals), 
actual = function() return round(_results["# nr pH (Salt) - 3"].value, _results["# nr pH (Salt) - 3"].decimals); end
            },
{ label = "# nr Br - 3", 
expected = round(-65.515705521042, testfactors["# nr Br - 3"].decimals), 
actual = function() return round(_results["# nr Br - 3"].value, _results["# nr Br - 3"].decimals); end
            },
{ label = "# nr FCL - 3", 
expected = round(-15.48597139891, testfactors["# nr FCL - 3"].decimals), 
actual = function() return round(_results["# nr FCL - 3"].value, _results["# nr FCL - 3"].decimals); end
            },
{ label = "# nr pH - 1", 
expected = round(6.259541670877, testfactors["# nr pH - 1"].decimals), 
actual = function() return round(_results["# nr pH - 1"].value, _results["# nr pH - 1"].decimals); end
            },
{ label = "# nr Br - 2", 
expected = round(-0.003092415129234, testfactors["# nr Br - 2"].decimals), 
actual = function() return round(_results["# nr Br - 2"].value, _results["# nr Br - 2"].decimals); end
            }
} 
};
