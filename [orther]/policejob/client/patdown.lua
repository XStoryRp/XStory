local patdown = false

RegisterNetEvent('police:client:PatDownPlayer', function()
    if not IsPedRagdoll(PlayerPedId()) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1 then
                local playerId = GetPlayerServerId(player)
                if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(PlayerPedId()) then
                    exports["emotes"]:EmoteCommandStart("patrolf1")
                    -- TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                    Wait(1000)
                    TriggerServerEvent("police:server:PatDownPlayer", playerId)
                    exports["emotes"]:EmoteCancel()
                    -- TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    patdown = true
                else
                    QBCore.Functions.Notify("Can't pat someone down in a vehicle", "error")
                end
        else
            QBCore.Functions.Notify(Lang:t("error.none_nearby"), "error")
        end
    else
        Wait(2000)
    end
end)

RegisterNetEvent('police:client:SearchPlayer', function()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if patdown then
        if player ~= -1 and distance < 0.009 then
            local playerId = GetPlayerServerId(player)
            TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", playerId)
            TriggerServerEvent("police:server:SearchPlayer", playerId)
            patdown = false
        else
            QBCore.Functions.Notify(Lang:t("error.none_nearby"), "error")
        end
    else
        QBCore.Functions.Notify('You need to pat them down.', 'error', 7500)
    end
end)
