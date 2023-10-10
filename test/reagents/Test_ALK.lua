tests["Alk from QC data"] =
{
    desc = "Alk values:",
    eval = function()
        local alk = ALK(
            {
                ALK_Well = "Sample",
                Blank = "Blank"
            }
        );
        return round(alk, 0);
    end,
    mock = {
        raw = {
            setup = function(args)
                raw["30"] = {
                    [635] = {
                        ["Sample"] = args.sample,
                        ["Blank"] = args.blank
                    }
                };
            end,
            teardown = function()
                raw["30"] = {
                    [635] = {
                        ["Sample"] = nil,
                        ["Blank"] = nil
                    }
                };
            end,
        }
    },
    setup = function(self)
        writeHedder(self.desc);
        raw = {
            ["30"] = {
                [635] = {}
            }
        };
        for i, case in pairs(self.cases) do
            case.actual = self.eval;
            case.teardown = self.mock.raw.teardown;
        end
        ;
    end,
    teardown = function()
        raw = {};
        setmetatable(raw, mt_raw);
    end,
    cases =
    {
        {
            label = "Cu 2.0",
            expected = 5,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 35706,
                    blank = 41238
                };
            end
        },
        {
            label = "Fe 2.0",
            expected = -19,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 45746,
                    blank = 47097
                };
            end
        },
        {
            label = "pH 6.8",
            expected = 31,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 37077,
                    blank = 47600
                };
            end
        },
        {
            label = "pH 8.2",
            expected = 110,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 12745,
                    blank = 47734
                };
            end
        },
        {
            label = "Phos 1500",
            expected = 110,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 12800,
                    blank = 47765
                };
            end
        },
        {
            label = "S1",
            expected = 36,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 37280,
                    blank = 50131
                };
            end
        },
        {
            label = "S2",
            expected = 90,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 18858,
                    blank = 48098
                };
            end
        },
        {
            label = "S3",
            expected = 182,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 5828,
                    blank = 50805
                };
            end
        },
        {
            label = "S4",
            expected = 11,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 42379,
                    blank = 49954
                };
            end
        },
        {
            label = "S5",
            expected = 17,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 40034,
                    blank = 48154
                };
            end
        },
        {
            label = "S6",
            expected = 25,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 42056,
                    blank = 52602
                };
            end
        },
        {
            label = "Salt 3000",
            expected = 25,
            setup = function(self)
                return self.mock.raw.setup {
                    sample = 37992,
                    blank = 47383
                };
            end
        }
    }
};
