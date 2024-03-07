RegisterServerEvent("checkPing")
AddEventHandler("checkPing", function()
    local src = source
    local returnPing = GetPlayerPing(src)
    TriggerClientEvent("returnPing", src, returnPing)
end)

RegisterServerEvent("kickPing")
AddEventHandler("kickPing", function()
    local src = source
    DropPlayer(source, "You have been kicked, because you have high ping. Limit 210/ms")
end)