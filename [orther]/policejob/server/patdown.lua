RegisterNetEvent('police:server:PatDownPlayer', function(playerId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local TestedPlayer = QBCore.Functions.GetPlayer(playerId)
    if not Player or not TestedPlayer then return end
    if TestedPlayer.PlayerData.money["cash"] >= 1000 then
     TriggerClientEvent('QBCore:Notify', src, "You see a buldge in their pocket", "primary", 7500)
     TriggerClientEvent('QBCore:Notify', TestedPlayer.PlayerData.source, "Being patted down", "primary", 7500)
    end
    for slot, item in pairs(TestedPlayer.PlayerData.items) do -- slot,
        if WeaponPatdownItems[item.name] then
            TriggerClientEvent('QBCore:Notify', src, "You feel something hard in their pocket ", 'success', 7500)
            TriggerClientEvent('QBCore:Notify', playerId, "They found your weapons! ", 'error', 7500)
        end
        if DrugPatdownItems[item.name] then
            TriggerClientEvent('QBCore:Notify', src, "You feel a bag of something in their pocket ", 'success', 7500)
            TriggerClientEvent('QBCore:Notify', playerId, "They found your drugs! ", 'error', 7500)
        end
    end
end)
