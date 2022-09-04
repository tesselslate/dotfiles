local file = io.open("colors.lua", "w")
if file == nil then
    print("err")
    os.exit(1)
end

local function write(text)
    file:write(text .. "\n")
end

local function serialize(tbl)
    -- preprocess style
    if tbl["style"] ~= nil then
        local i = 0
        while true do
            local j = string.find(tbl["style"], ",", i + 1)
            if j == nil then
                local v = string.sub(tbl["style"], i + 1)
                if v ~= "NONE" then
                    tbl[v] = true
                end
                break
            end
            local v = string.sub(tbl["style"], i + 1, j - 1)
            if v ~= "NONE" then
                tbl[v] = true
            end
            i = j
        end
        tbl["style"] = nil
    end

    local str = {}
    for key, value in pairs(tbl) do
        if type(value) == "string" then
            if value ~= "NONE" then
                str[#str + 1] = key .. " = \"" .. value .. "\", "
            end
        else
            str[#str + 1] = key .. " = " .. tostring(value) .. ", "
        end
    end
    return table.concat(str)
end

local function writeHl(hl)
    for key, value in pairs(hl) do
        local line = "vim.api.nvim_set_hl(0, \"" .. key .. "\", { "
        line = line .. serialize(value) .. "})"
        write(line)
    end
end

writeHl(dofile(arg[1]))
