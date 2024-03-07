if GetResourceState("es_extended") ~= "started" then return end

ESX = exports["es_extended"]:getSharedObject()

PlayerData = {}
PlayerJob = {}
PlayerLoaded = false

CreateVeh = function(data, model, coords)
    ESX.Game.SpawnVehicle(model, coords, coords.w, function(veh)
        SetVehicleEngineOn(veh, false, true, false)
        _g.SlaughterVeh = veh
        SetVehicleNumberPlateText(veh, "KLD-" .. tostring(math.random(1000, 9999)))
        SetEntityHeading(veh, coords.w)
        KloudDev.SetVehicleFuel(veh)
        SetVehicleFixed(veh)
        SetEntityAsMissionEntity(veh, true, true)
        local plate = ESX.Game.GetVehicleProperties(veh).plate
        KloudDev.GiveVehicleKeyEvent(veh, plate)
    end, true)
end

RegisterNetEvent("kloud-slaughter:client:changeDuty", function(data)
    local loc = KloudDev.Locations[data.id]
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
        end
        DeleteObject(prop)
        PlayerJob.duty = true
        Notify(locale('OnDuty'), "success")
        PlayAnim(cache.ped, "move_m@_idles@shake_off", "shakeoff_1", 3500)
        Wait(750)
        TriggerEvent('skinchanger:getSkin', function(skin)
            local uniformObject
            sex = (skin.sex == 0) and "male" or "female"

            uniformObject = ConvertOutfitConfig(data.id, sex)

            if uniformObject then
                TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
            end
        end)
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
        end
        DeleteObject(prop)
        PlayerJob.duty = false
        Notify(locale('LeaveDuty'), "success")
        PlayAnim(cache.ped, "move_m@_idles@shake_off", "shakeoff_1", 3500)
        Wait(750)
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
            TriggerEvent('skinchanger:loadSkin', skin)
        end)
    end
    Wait(500)
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "timestamp", 0.5)
    _g.IsBusy = false
end)

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
    JobInfo = xPlayer.job
    UpdateJobInfo(JobInfo)

    PlayerJob.duty = false
    PlayerLoaded = true

    if GetResourceState("ox_inventory") == "started" then
        Inventory:displayMetadata('meat', locale('Meat'))
    end
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    table.wipe(PlayerData)
    table.wipe(PlayerJob)
end)

RegisterNetEvent('esx:setJob', function(JobInfo)
    UpdateJobInfo(JobInfo)
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    PlayerData = ESX.GetPlayerData()
    UpdateJobInfo(PlayerData.job)
    PlayerLoaded = ESX.PlayerLoaded

    if GetResourceState("ox_inventory") == "started" then
        Inventory:displayMetadata('meat', locale('Meat'))
    end
end)

UpdateJobInfo = function(info)
    PlayerJob.grade = {}
    PlayerJob.name = info.name
    PlayerJob.grade.level = info.grade
end

ConvertOutfitConfig = function(job, gender)
    local outfitTbl = {}
    local loc = KloudDev.Locations[job].Outfit

    for gender, tbl in pairs(loc) do
        outfitTbl[string.lower(gender)] = {}
        for item, texture in pairs(tbl) do
            if item == "pants" then
                outfitTbl[string.lower(gender)]["pants_1"] = texture.item
                outfitTbl[string.lower(gender)]["pants_2"] = texture.texture
            end
            if item == "arms" then
                outfitTbl[string.lower(gender)]["arms"] = texture.item
            end
            if item == "t-shirt" then
                outfitTbl[string.lower(gender)]["tshirt_1"] = texture.item
                outfitTbl[string.lower(gender)]["tshirt_2"] = texture.texture
            end
            if item == "vest" then
                outfitTbl[string.lower(gender)]["bproof_1"] = texture.item
                outfitTbl[string.lower(gender)]["bproof_2"] = texture.texture
            end
            if item == "decals" then
                outfitTbl[string.lower(gender)]["decals_1"] = texture.item
                outfitTbl[string.lower(gender)]["decals_2"] = texture.texture
            end
            if item == "accessory" then
                outfitTbl[string.lower(gender)]["chain_1"] = texture.item
                outfitTbl[string.lower(gender)]["chain_2"] = texture.texture
            end
            if item == "torso2" then
                outfitTbl[string.lower(gender)]["torso_1"] = texture.item
                outfitTbl[string.lower(gender)]["torso_2"] = texture.texture
            end
            if item == "shoes" then
                outfitTbl[string.lower(gender)]["shoes_1"] = texture.item
                outfitTbl[string.lower(gender)]["shoes_2"] = texture.texture
            end
            if item == "hat" then
                outfitTbl[string.lower(gender)]["helmet_1"] = texture.item - 1
                outfitTbl[string.lower(gender)]["helmet_2"] = texture.texture
            end
        end
    end

    return outfitTbl[gender]
end
