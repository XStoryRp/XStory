local function tPrint(tbl, indent)
    indent = indent or 0
    if type(tbl) == 'table' then
        for k, v in pairs(tbl) do
            local tblType = type(v)
            local formatting = ("%s ^3%s:^0"):format(string.rep("  ", indent), k)

            if tblType == "table" then
                print(formatting)
                tPrint(v, indent + 1)
            elseif tblType == 'boolean' then
                print(("%s^1 %s ^0"):format(formatting, v))
            elseif tblType == "function" then
                print(("%s^9 %s ^0"):format(formatting, v))
            elseif tblType == 'number' then
                print(("%s^5 %s ^0"):format(formatting, v))
            elseif tblType == 'string' then
                print(("%s ^2'%s' ^0"):format(formatting, v))
            else
                print(("%s^2 %s ^0"):format(formatting, v))
            end
        end
    else
        print(("%s ^0%s"):format(string.rep("  ", indent), tbl))
    end
end

RegisterServerEvent('QBCore:DebugSomething', function(tbl, indent)
    local resource = GetInvokingResource() or "qb-core"
    print(('\x1b[4m\x1b[36m[ %s : DEBUG]\x1b[0m'):format(resource))
    tPrint(tbl, indent)
    print('\x1b[4m\x1b[36m[ END DEBUG ]\x1b[0m')
end)

function QBCore.Debug(tbl, indent)
    TriggerEvent('QBCore:DebugSomething', tbl, indent)
    -- TriggerEvent("qb-log:server:CreateLog", "dev", tbl.."", "red", "```lua\n                       #Info Debug                              \n - tbl ".. tbl .. "\x1b - ".. indent .." \n                        # End Info Bebug                               ```")

end

function QBCore.ShowError(resource, msg)
    print('\x1b[31m[' .. resource .. ':ERROR]\x1b[0m ' .. msg)
    -- TriggerEvent("qb-log:server:CreateLog", "dev", resource.."" , "red", "```lua\n                       #Info                               \nResource: ".. resource .. "\x1b - ".. msg .." \n                        # End Info                                ```")
end

function QBCore.ShowSuccess(resource, msg)
    print('\x1b[32m[' .. resource .. ':LOG]\x1b[0m ' .. msg)
    -- TriggerEvent("qb-log:server:CreateLog", "dev", resource.."", "green", "```lua\n                       #Info                               \nResource: ".. resource .. "\x1b - ".. msg .." \n                        # End Info                                ```")

end
