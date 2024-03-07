local function addictMethEffect()
    player = PlayerPedId()
    DoScreenFadeOut(1000)
    SetTimecycleModifier('spectator5')
    SetPedMotionBlur(player, true)
    SetPedMovementClipset(player, 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    SetPedIsDrunk(player, true)
    SetPedAccuracy(player, 0)
    Wait(1000)
    DoScreenFadeIn(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(player, 0)
    SetPedIsDrunk(player, false)
    SetPedMotionBlur(player, false)
end

CreateThread(function()
    while true do
        local sleep = 0
        if LocalPlayer.state.isLoggedIn then
            sleep = (1000 * 60) * QBCore.Config.UpdateInterval
            TriggerServerEvent('QBCore:UpdatePlayer')
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        local sleep = 0
        if LocalPlayer.state.isLoggedIn then
            sleep = (1000 * 60) * QBCore.Config.UpdateInterval
            local hungerRate = 0
            local thirstRate = 0
            if exports["ps-buffs"]:HasBuff("super-hunger") then hungerRate = QBCore.Config.Player.HungerRate/2 else hungerRate = QBCore.Config.Player.HungerRate end
            if exports["ps-buffs"]:HasBuff("super-thirst") then thirstRate = QBCore.Config.Player.ThirstRate/2 else thirstRate = QBCore.Config.Player.ThirstRate end
            TriggerServerEvent('QBCore:UpdatePlayerbuffs', hungerRate, thirstRate)
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            if (QBCore.PlayerData.metadata['hunger'] <= 0 or QBCore.PlayerData.metadata['thirst'] <= 0) and not QBCore.PlayerData.metadata['isdead'] then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                local decreaseThreshold = math.random(5, 10)
                SetEntityHealth(ped, currentHealth - decreaseThreshold)
            end
            if QBCore.PlayerData.metadata['addictmeth'] <= 30 then
                ------- chwaya wabna
                addictMethEffect()
                if QBCore.PlayerData.metadata['addictmeth'] <= 0 then
                    TriggerEvent('animations:client:EmoteCommandStart', {"fallover5"})
                    QBCore.Functions.Notify("Lezmek meth makech tmout", "error")
                    TriggerEvent('animations:client:Walk', {"drunk3"})
                    
                    local ped = PlayerPedId()
                    
                    DoScreenFadeOut(1000)
                    SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                    DoScreenFadeIn(1000)
                    
                    local currentHealth = GetEntityHealth(ped)
                    SetEntityHealth(ped, currentHealth - 2)
                end
            end
            if QBCore.PlayerData.metadata['addictcoke'] <= 30 then
                ------- chwaya wabna
                addictMethEffect()
                if QBCore.PlayerData.metadata['addictcoke'] <= 0 then
                    QBCore.Functions.Notify("Lezmek coke", "error")
                    TriggerEvent('animations:client:Walk', {"drunk"})
                    local ped = PlayerPedId()

                    DoScreenFadeOut(1000)
                    SetPedToRagdollWithFall(ped, 2500, 4000, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                    DoScreenFadeIn(1000)
                    
                    local currentHealth = GetEntityHealth(ped)
                    SetEntityHealth(ped, currentHealth - 3)
                end
            end
        end
        Wait(QBCore.Config.StatusInterval)
    end
end)




-- #Default loops
-- CreateThread(function()
--     while true do
--         local sleep = 0
--         if LocalPlayer.state.isLoggedIn then
--             sleep = (1000 * 60) * QBCore.Config.UpdateInterval
--             TriggerServerEvent('QBCore:UpdatePlayer')
--         end
--         Wait(sleep)
--     end
-- end)

-- CreateThread(function()
--     while true do
--         if LocalPlayer.state.isLoggedIn then
--             if (QBCore.PlayerData.metadata['hunger'] <= 0 or QBCore.PlayerData.metadata['thirst'] <= 0) and not QBCore.PlayerData.metadata['isdead'] then
--                 local ped = PlayerPedId()
--                 local currentHealth = GetEntityHealth(ped)
--                 local decreaseThreshold = math.random(1, 5)
--                 SetEntityHealth(ped, currentHealth - decreaseThreshold)
--             end
--         end
--         Wait(QBCore.Config.StatusInterval)
--     end
-- end)
