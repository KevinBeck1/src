tests["TCl Low"] =
{
    desc = "Total Chlorine and Bromine with low values",
    mock = {
        raw = {
            ["30"] = {
                [525] = {
                    [7] = 13899,
                    [11] = 15851
                },
            }
        }
    },
    setup = function(self)
        writeHedder(self.desc);
        raw = self.mock.raw;
    end,
    teardown = function()
        raw = {};
        setmetatable(raw, mt_raw);
    end,
    cases =
    {
        {
            label = "Free Chlorine Value",
            expected = 3.73,
            actual = function() return TCL({ TCL_Well = 7, Blank = 11 }) end,
        }
    }
};
