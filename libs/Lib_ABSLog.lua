function getSingleBlankABS(wells)
    local abs ={};
    for timing, mat in pairs(raw) do
        abs[timing] = {};
        for wave,row in pairs(mat) do
            abs[timing][wave] ={};
            for well, trans in pairs(row) do
                abs[timing][wave][well] = abs (trans, raw[timing][wave][wells.Blank]);
            end
        end
    end
    return abs;
end

function ABSToString(abs)
    
end