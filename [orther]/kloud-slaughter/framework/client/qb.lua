if GetResourceState("qb-core") ~= "started" then return end

QBCore = exports['qb-core']:GetCoreObject()

PlayerData = {}
PlayerJob = {}
PlayerLoaded = false
PlayerJob.duty = false

CreateVeh = function(data, model, coords, warp)
    QBCore.Functions.TriggerCallback('QBCore:Server:SpawnVehicle', function(netId)
        local veh = NetToVeh(netId)
        local litters = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','R','S','T','U','V','W','X','Y','Z'}
        SetVehicleEngineOn(veh, false, true, false)
        _g.SlaughterVeh = veh
        SetVehicleNumberPlateText(veh, tostring(math.random(1, 9))..litters[math.random(1,#litters)]..tostring(math.random(1,9)..litters[math.random(1,#litters)]..tostring(1,9)..litters[math.random(1,#litters)])..litters[math.random(1,#litters)]..litters[math.random(1,#litters)])
        -- SetVehicleNumberPlateText(veh, "KLD-" .. tostring(math.random(1000, 9999)))
        SetEntityHeading(veh, coords.w)
        KloudDev.SetVehicleFuel(veh)
        SetVehicleFixed(veh)
        SetEntityAsMissionEntity(veh, true, true)
        local plate = QBCore.Functions.GetPlate(veh)
        KloudDev.GetVehicleKeyEvent(veh, plate)
    end, model, coords, warp)
end

RegisterNetEvent("kloud-slaughter:client:changeDuty", function(data)
    local loc = KloudDev.Locations[data.id]
    local outfits = loc.Outfit
    local gender = QBCore.Functions.GetPlayerData().charinfo.gender
    local outfit = gender == 1 and outfits.Female or outfits.Male

    _g.IsBusy = true
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "StashOpen", 1.0)
    if not PlayerJob.duty then
        local prop = NotepadAnim(cache.ped, 3000)
        if loc.RestrictJob then
            if not Progress(3000, locale('LoggingIn')) then
                _g.IsBusy = false
                return
            end
        else
            if not Progress(3000, locale('ChangingClothes')) then
                _g.IsBusy = false
                return
            end
            Notify(locale("OnDuty"), "success")
        end
        DeleteObject(prop)
        PlayAnim(cache.ped, "move_m@_idles@shake_off", "shakeoff_1", 3500)
        Wait(750)
        TriggerEvent('qb-clothing:client:loadOutfit', {outfitData = outfit})
        for k, v in pairs(KloudDev.Locations) do
            if PlayerJob.Name == k then
                TriggerServerEvent("QBCore:ToggleDuty")
            else
                PlayerJob.duty = true
            end
        end
    else
        local prop = NotepadAnim(cache.ped, 3000)
        if loc.RestrictJob then
            if not Progress(3000, locale('LoggingOut')) then
                _g.IsBusy = false
                return
            end
        else
            if not Progress(3000, locale('ChangingClothes')) then
                _g.IsBusy = false
                return
            end
            Notify(locale("LeaveDuty"), "success")
        end
        DeleteObject(prop)
        for k, v in pairs(KloudDev.Locations) do
            if PlayerJob.Name == k then
                TriggerServerEvent("QBCore:ToggleDuty")
            else
                PlayerJob.duty = false
            end
        end
        PlayAnim(cache.ped, "move_m@_idles@shake_off", "shakeoff_1", 3500)
        Wait(750)
        TriggerServerEvent("qb-clothes:loadPlayerSkin")
        TriggerEvent("illenium-appearance:client:reloadSkin")
    end
    Wait(500)
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "timestamp", 0.5)
    _g.IsBusy = false
end)

---@diagnostic disable-next-line: param-type-mismatch
AddStateBagChangeHandler('isLoggedIn', nil, function(_bagName, _key, value, _reserved, _replicated)
    if value then
        PlayerData = QBCore.Functions.GetPlayerData()
        UpdateJobInfo(PlayerData.job)
    else
        table.wipe(PlayerData)
        table.wipe(PlayerJob)
    end
    PlayerLoaded = value
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    JobInfo = QBCore.Functions.GetPlayerData().job
    UpdateJobInfo(JobInfo)

    for k, v in pairs(KloudDev.Locations) do
        if PlayerJob.duty and PlayerJob.name == k then
            TriggerServerEvent("QBCore:ToggleDuty")
        end
    end

    if GetResourceState("ox_inventory") == "started" then
        Inventory:displayMetadata('meat', locale('Meat'))
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    table.wipe(PlayerData)
    table.wipe(PlayerJob)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    UpdateJobInfo(JobInfo)
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    for k, v in pairs(KloudDev.Locations) do
        if PlayerJob.duty and PlayerJob.name == k then
            PlayerJob.duty = duty
        end
    end
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(newPlayerData) 
    local invokingResource = GetInvokingResource()
    if invokingResource and invokingResource ~= 'qb-core' then return end
    PlayerData = newPlayerData
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName or not LocalPlayer.state.isLoggedIn then return end
    PlayerData = QBCore.Functions.GetPlayerData()
    UpdateJobInfo(PlayerData.job)
    PlayerLoaded = true

    if GetResourceState("ox_inventory") == "started" then
        Inventory:displayMetadata('meat', locale('Meat'))
    end

end)

UpdateJobInfo = function(info)
    PlayerJob.grade = {}
    PlayerJob.name = info.name
    PlayerJob.grade.level = info.grade.level
    for k, v in pairs(KloudDev.Locations) do
        if PlayerJob.duty and PlayerJob.name == k then
            PlayerJob.duty = info.onduty
        end
    end
end
