tests["203 Disk 30 sec"] =
{
    desc = "203 Disk 30 second run",
    mock = {
        raw = {
            ["30"] = {
                [390] = {0,0,0,0,0,0,0,0,0,0,0,0},
                [525] = {0,0,0,0,0,0,0,0,0,0,0,0},
                [428] = {0,0,0,0,0,0,0,0,0,0,0,0},
                [568] = {0,0,0,0,0,0,0,0,0,0,0,0},
                [470] = {0,0,0,0,0,0,0,0,0,0,0,0},
                [635] = {0,0,0,0,0,0,0,0,0,0,0,0}
            }
        },
    },
    cases =
    {
        -- pH
        {
            label = "pH Prescision",
            expected = 2,
            actual = function() return _results["pH"].decimals end
        },
        {
            label = "pH Factor Code",
            expected = 8,
            actual = function() return _results["pH"].factor_code end
        },
        -- FCl
        {
            label = "Free Chlorine Prescision",
            expected = 2,
            actual = function() return _results["Free Chlorine"].decimals end
        },
        {
            label = "Free Chlorine Factor Code",
            expected = 2,
            actual = function() return _results["Free Chlorine"].factor_code end
        },
        -- Bromine
        {
            label = "Bromine Prescision",
            expected = 2,
            actual = function() return _results["Bromine"].decimals end
        },
        {
            label = "Bromine Factor Code",
            expected = 5,
            actual = function() return _results["Bromine"].factor_code end
        },
        
        -- ALK
        {
            label = "ALK Prescision",
            expected = 0,
            actual = function() return _results["ALK"].decimals end
        },
        {
            label = "ALK Factor Code",
            expected = 9,
            actual = function() return _results["ALK"].factor_code end
        },
        -- TCL
        {
            label = "Total Chlorine Prescision",
            expected = 2,
            actual = function() return _results["Total Chlorine"].decimals end
        },
        {
            label = "Total Chlorine Factor Code",
            expected = 3,
            actual = function() return _results["Total Chlorine"].factor_code end
        }
    },
    setup = function(self)
        writeHedder(self.desc);
        series["203 QC 30 sec"]:start();
        raw = self.mock.raw;
        series["203 QC 30 sec"]:finish();
    end,
    teardown = function()
        raw = {};
        setmetatable (raw, mt_raw);
        _result={};
    end
};
