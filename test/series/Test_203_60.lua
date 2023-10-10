tests["203 Disk 60 sec"] =
{
    desc = "203 Disk 60 seconds",
    mock = {
        raw = {
            ["30"] = {
                [390] = { 4354,     2268,   3772,   1376,   5081,   6375,   4098,   1961,   3669,   1228,   4998,   6339},
                [525] = { 9686,     4517,   7755,   3256,   11158,  12821,  13899,  6761,   10990,  5182,   15851,  17349},
                [428] = { 7787,     3904,   6677,   2831,   9600,   11160,  19703,  8981,   15233,  6922,   21891,  21905 },
                [568] = { 4682,     2395,   3891,   1696,   5255,   5774,   13850,  6806,   11296,  4535,   16142,  16920 },
                [470] = { 12598,    6368,   10754,  4327,   15122,  16579,  29631,  15716,  23284,  12732,  34680,  35673 },
                [635] = { 7570,     10841,  10731,  9025,   20343,  26566,  5491,   2522,   4329,   1893,   5873,   5972 }
            },
            ["60"] = {
                [390] = { 4465,     2328,   3870,   1411,   5340,   6412,   4132,   1985,   3699,   1245,   5037,   6353 },
                [525] = { 9796,     4548,   7852,   3293,   11260,  12860,  13951,  6755,   10972,  5182,   15876,  17282 },
                [428] = { 7809,     3883,   6693,   2808,   9590,   11152,  19882,  9025,   15360,  6888,   22024,  22060 },
                [568] = { 4792,     2455,   3987,   1658,   5453,   5718,   13944,  6804,   11389,  4522,   16352,  16892 },
                [470] = { 12777,    6353,   10832,  4313,   15363,  16643,  29838,  15750,  23330,  12757,  34912,  35686 },
                [635] = { 7534,     10781,  10656,  8904,   20272,  26133,  5470,   2518,   4310,   1890,   5844,   5969}
            }
        }
    },

    setup = function(self)
        writeHedder(self.desc);
        series["203 QC 60 sec"]:start();
        raw = self.mock.raw;
        setmetatable (raw, mt_raw);
        series["203 QC 60 sec"]:finish();
    end,
    teardown = function()
        raw = {};
        setmetatable (raw, mt_raw);
        _result={};
    end,
    cases =
    {
        -- pH
        {
            label = "pH Well",
            expected = 1,
            actual = function() return Prod_203.wells.PH_Well end
        },
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
            label = "Free Chlorine Well",
            expected = 2,
            actual = function() return Prod_203.wells.FCL_Well end
        },
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
        {
            label = "Bromine Factor Code",
            expected = 5,
            actual = function() return _results["Bromine"].factor_code end
        },
        -- ALK
        {
            label = "ALK Well",
            expected = 3,
            actual = function() return Prod_203.wells.ALK_Well end
        },
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
        -- Salt
        {
            label = "Salt Well",
            expected = 4,
            actual = function() return Prod_203.wells.Salt_Well end
        },
        {
            label = "Salt Prescision",
            expected = 0,
            actual = function() return _results["Salt"].decimals end
        },
        {
            label = "Salt Factor Code",
            expected = 19,
            actual = function() return _results["Salt"].factor_code end
        },
        -- Copper
        {
            label = "Copper Well",
            expected = 5,
            actual = function() return Prod_203.wells.Copper_Well end
        },
        {
            label = "Copper Prescision",
            expected = 2,
            actual = function() return _results["Copper"].decimals end
        },
        {
            label = "Copper Factor Code",
            expected = 16,
            actual = function() return _results["Copper"].factor_code end
        },
        -- Hardness
        {
            label = "Hardness Well",
            expected = 6,
            actual = function() return Prod_203.wells.Hard_Well end
        },
        {
            label = "Hardness Prescision",
            expected = 0,
            actual = function() return _results["Hardness"].decimals end
        },
        -- TCL
        {
            label = "Total Chlorine Well",
            expected = 7,
            actual = function() return Prod_203.wells.TCL_Well end
        },
        {
            label = "Total Chlorine Value",
            expected = 7,
            actual = function() return _results["Total Chlorine"].value; end
        },
        {
            label = "Total Chlorine Prescision",
            expected = 2,
            actual = function() return _results["Total Chlorine"].decimals end
        },
        {
            label = "Total Chlorine Factor Code",
            expected = 3,
            actual = function() return _results["Total Chlorine"].factor_code end
        },
        -- iron
        {
            label = "Iron Well",
            expected = 8,
            actual = function() return Prod_203.wells.Iron_Well end
        },
        {
            label = "Iron Value",
            expected = 7,
            actual = function() return _results["Iron"].value; end
        },
        {
            label = "Iron Prescision",
            expected = 2,
            actual = function() return _results["Iron"].decimals end
        },
        {
            label = "Iron Factor Code",
            expected = 13,
            actual = function() return _results["Iron"].factor_code end
        },
        -- Phos
        {
            label = "Phosphate Well",
            expected = 9,
            actual = function() return Prod_203.wells.Phos_Well end
        },
        {
            label = "Phosphate Value",
            expected = 7,
            actual = function() return _results["Phosphate"].value; end
        },
        {
            label = "Phosphate Prescision",
            expected = 0,
            actual = function() return _results["Phosphate"].decimals end
        },
        {
            label = "Phosphate Factor Code",
            expected = 18,
            actual = function() return _results["Phosphate"].factor_code end
        },
        -- CYA
        {
            label = "CYA Well",
            expected = 10,
            actual = function() return Prod_203.wells.CYA_Well end
        },
        {
            label = "CYA Value",
            expected = 7,
            actual = function() return _results["CYA"].value; end
        },
        {
            label = "CYA Prescision",
            expected = 0,
            actual = function() return _results["CYA"].decimals end
        },
        {
            label = "CYA Factor Code",
            expected = 12,
            actual = function() return _results["CYA"].factor_code end
        },
        -- Blank
        {
            label = "Blank Well",
            expected = 11,
            actual = function() return Prod_203.wells.Blank end
        }
    }
};
