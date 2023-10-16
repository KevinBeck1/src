function add_result(name, value,factor_code,decimals)
    _results[name] = {
        ["value"] = value,
        ["decimals"] = decimals,
        ["factor_code"] = factor_code
    };
end

mt_tests = {
    __newindex = function(self, key, value)
        rawset(self, key, value);
        tryCall(add_test)(key);
    end,
};
tests = {};
setmetatable(tests, mt_tests);

_results = {};

function assert_equals(label, expected, actual)
    local act = tryCall(actual)() or 9999;
    local result = expected == act;

    local reult_string ="----+  " .. label .. " - expected: " .. expected .. " actual: " .. act .. " -- ";
    if result then
        reult_string = reult_string .. "PASS";
    else
        reult_string = reult_string .. "FAIL";
    end
    return result, reult_string;
end
function writeHedder(label)
    tryCall(write_log)(true,label);
end
function run_test(test)
    tests[test]:setup();
    for i, case in ipairs(tests[test].cases) do
        tryCall(case.setup)(tests[test]);
        tryCall(write_log)(assert_equals(case.label, case.expected, case.actual));
        tryCall(case.teardown)(tests[test]);
    end
    tests[test]:teardown();
end
