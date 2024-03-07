local QBCore = exports['qb-core']:GetCoreObject()
local KeysList = {}
local isTakingKeys = false
local isCarjacking = false
local canCarjack = true
local AlertSend = false
local lastPickedVehicle = nil
local usingAdvanced = false

local function GiveKeys(id, plate)
    local distance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(id))))
    if distance < 0.9 and distance > 0.0 then
        TriggerServerEvent('qb-vehiclekeys:server:GiveVehicleKeys', id, plate)
    else
        QBCore.Functions.Notify(Lang:t("notify.givekeys"),'error')
    end
end

local function GetKeys()
    QBCore.Functions.TriggerCallback('qb-vehiclekeys:server:GetVehicleKeys', function(_KeysList)
        KeysList = _KeysList
    end)
end

local function HasKeys(plate)
    return KeysList[plate]
end

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

local function GetVehicleInDirection(coordFromOffset, coordToOffset)
    local ped = PlayerPedId()
    local coordFrom = GetOffsetFromEntityInWorldCoords(ped, coordFromOffset.x, coordFromOffset.y, coordFromOffset.z)
    local coordTo = GetOffsetFromEntityInWorldCoords(ped, coordToOffset.x, coordToOffset.y, coordToOffset.z)
    local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
    local _, _, _, _, vehicle = GetShapeTestResult(rayHandle)
    return vehicle
end

local function GetVehicle()
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
    local RaycastOffsetTable = {
        { ['fromOffset'] = vector3(0.0, 0.0, 0.0), ['toOffset'] = vector3(0.0, 20.0, -10.0) }, -- Waist to ground 45 degree angle
        { ['fromOffset'] = vector3(0.0, 0.0, 0.7), ['toOffset'] = vector3(0.0, 10.0, -10.0) }, -- Head to ground 30 degree angle
        { ['fromOffset'] = vector3(0.0, 0.0, 0.7), ['toOffset'] = vector3(0.0, 10.0, -20.0) }, -- Head to ground 15 degree angle
    }
    local count = 0
    while vehicle == 0 and count < #RaycastOffsetTable do
        count = count + 1
        vehicle = GetVehicleInDirection(RaycastOffsetTable[count]['fromOffset'], RaycastOffsetTable[count]['toOffset'])
    end
    if not IsEntityAVehicle(vehicle) then vehicle = nil end
    return vehicle
end

local function isBlacklistedVehicle(vehicle)
    local isBlacklisted = false
    for _,v in ipairs(Config.NoLockVehicles) do
        if GetHashKey(v) == GetEntityModel(vehicle) then
            isBlacklisted = true
            break;
        end
    end
    if Entity(vehicle).state.ignoreLocks or GetVehicleClass(vehicle) == 13 then isBlacklisted = true end
    return isBlacklisted
end

local function ToggleVehicleLocks(veh)
    if veh then
        if not isBlacklistedVehicle(veh) then
            if HasKeys(QBCore.Functions.GetPlate(veh)) then
		if Config.UseKeyAsItem then		
		    QBCore.Functions.TriggerCallback('mh-vehiclekeyitem:server:IHaveTheKeyItem', function(result)
			if result then
			    local ped = PlayerPedId()
			    -- local vehLockStatus = GetVehicleDoorLockStatus(veh)
                local vehLockStatus, curVeh = GetVehicleDoorLockStatus(veh), GetVehiclePedIsIn(ped, false)
                local object = 0
                local lights = GetVehicleIndicatorLights(veh)
                if Config.LockToggleAnimation.Prop then
                    object = CreateObject(joaat(Config.LockToggleAnimation.Prop), 0, 0, 0, true, true, true)
                    while not DoesEntityExist(object) do Wait(1) end
                    AttachEntityToEntity(object, ped, GetPedBoneIndex(ped, Config.LockToggleAnimation.PropBone),0.1, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
                end
			    -- loadAnimDict("anim@mp_player_intmenu@key_fob@")
			    -- TaskPlayAnim(ped, 'anim@mp_player_intmenu@key_fob@', 'fob_click', 3.0, 3.0, -1, 49, 0, false, false, false)
                loadAnimDict(Config.LockToggleAnimation.AnimDict)
                TaskPlayAnim(ped, Config.LockToggleAnimation.AnimDict, Config.LockToggleAnimation.Anim, 8.0, -8.0, -1, 52, 0, false, false, false)
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5.0, Config.LockAnimSound, 0.9)

                -- if curVeh == 0 then Wait(Config.LockToggleAnimation.WaitTime) end
                -- if IsEntityPlayingAnim(ped, Config.LockToggleAnimation.AnimDict, Config.LockToggleAnimation.Anim, 3) then
                --     StopAnimTask(ped, Config.LockToggleAnimation.AnimDict, Config.LockToggleAnimation.Anim, 8.0)
                -- end
                TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5.0, Config.LockToggleSound, 0.9)

                if object ~= 0 and DoesEntityExist(object) then
                    DeleteObject(object)
                    object = 0
                end

			    NetworkRequestControlOfEntity(veh)
			    if vehLockStatus == 1 then
				SetVehicleDoorsLocked(veh, 3)
				-- QBCore.Functions.Notify("Voertuig vergrendeld!", "primary")
			    else
			    SetVehicleDoorsLocked(veh, 1)
				-- QBCore.Functions.Notify("Voertuig ontgrendeld!", "success")
			    end
                SetVehicleIndicatorLights(veh, 0 and 1, lights ~= 3 and true)
                Wait(450)
                SetVehicleIndicatorLights(veh,0 and 1, lights ~= 3 and false)
			    ClearPedTasks(ped)
			else
			    QBCore.Functions.Notify(Lang:t("notify.no_key_item"), 'error')
			end
		    end, QBCore.Functions.GetPlate(veh))
		else
		    local ped = PlayerPedId()
            local lights = GetVehicleIndicatorLights(veh)
                    local vehLockStatus = GetVehicleDoorLockStatus(veh)
                    loadAnimDict("anim@mp_player_intmenu@key_fob@")
                    TaskPlayAnim(ped, 'anim@mp_player_intmenu@key_fob@', 'fob_click', 3.0, 3.0, -1, 49, 0, false, false, false)
                    TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 5, "lock", 0.3)
                    NetworkRequestControlOfEntity(veh)
                    if vehLockStatus == 1 then
                        SetVehicleDoorsLocked(veh, 3)
                        -- QBCore.Functions.Notify("Voertuig vergrendeld!", "primary")
                    else
                        SetVehicleDoorsLocked(veh, 1)
                        -- QBCore.Functions.Notify("Voertuig ontgrendeld!", "success")
                    end
                    SetVehicleIndicatorLights(veh, 0, lights ~= 3 and true or false)
                    SetVehicleIndicatorLights(veh, 1, lights ~= 3 and true or false)
                    ClearPedTasks(ped)
		end				
            else
                QBCore.Functions.Notify(Lang:t("notify.no_key_item"), 'error')
            end
        else
            -- SetVehicleDoorsLocked(veh, 3)
        end
    end
end

local function GetOtherPlayersInVehicle(vehicle)
    local otherPeds = {}
    for seat=-1,GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))-2 do
        local pedInSeat = GetPedInVehicleSeat(vehicle, seat)
        if IsPedAPlayer(pedInSeat) and pedInSeat ~= PlayerPedId() then
            otherPeds[#otherPeds+1] = pedInSeat
        end
    end
    return otherPeds
end

local function GetPedsInVehicle(vehicle)
    local otherPeds = {}
    for seat=-1,GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))-2 do
        local pedInSeat = GetPedInVehicleSeat(vehicle, seat)
        if not IsPedAPlayer(pedInSeat) and pedInSeat ~= 0 then
            otherPeds[#otherPeds+1] = pedInSeat
        end
    end
    return otherPeds
end

local function IsBlacklistedWeapon()
    local weapon = GetSelectedPedWeapon(PlayerPedId())
    if weapon ~= nil then
        for _, v in pairs(Config.NoCarjackWeapons) do
            if weapon == GetHashKey(v) then
                return true
            end
        end
    end
    return false
end

-- local function AttemptPoliceAlert(type)
--     if not AlertSend then
--         local chance = Config.PoliceAlertChance
--         if GetClockHours() >= 1 and GetClockHours() <= 6 then
--             chance = Config.PoliceNightAlertChance
--         end
--         if math.random() <= chance then
--             exports['ps-dispatch']:VehicleTheft(vehicle)
--         --    TriggerServerEvent('police:server:policeAlert', 'Voertuigdiefstal aan de gang')
--         end
--         AlertSend = true
--         SetTimeout(Config.AlertCooldown, function()
--             AlertSend = false
--         end)
--     end
-- end

local function lockpickFinish(success)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local chance = math.random()
    if success then
        TriggerServerEvent('hud:server:GainStress', math.random(1, 5))
        lastPickedVehicle = vehicle
        if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
            TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', QBCore.Functions.GetPlate(vehicle))
	    TriggerEvent('mh-vehiclekeyitem:client:CreateTempKey', vehicle)
        else
            QBCore.Functions.Notify(Lang:t("notify.tunlock"), 'success')
            SetVehicleDoorsLocked(vehicle, 1)
        end
    else
        TriggerServerEvent('hud:server:GainStress', math.random(1, 25))
        if not AlertSend then
        local chance = Config.PoliceAlertChance
        if GetClockHours() >= 1 and GetClockHours() <= 6 then
            chance = Config.PoliceNightAlertChance
        end
        if math.random() <= chance then
            exports['ps-dispatch']:SuspiciousActivity()
        --    TriggerServerEvent('police:server:policeAlert', 'Voertuigdiefstal aan de gang')
        end
        AlertSend = true
        SetTimeout(Config.AlertCooldown, function()
            AlertSend = false
        end)
    end
        -- AttemptPoliceAlert("steal")
    end
    if usingAdvanced then
        if chance <= Config.RemoveLockpickAdvanced then
            TriggerServerEvent("inventory:server:breakLockpick", "advancedlockpick")
        end
    else
        if chance <= Config.RemoveLockpickNormal then
            TriggerServerEvent("inventory:server:breakLockpick", "lockpick")
        end
    end
end

local function LockpickDoor(isAdvanced)
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local vehicle = QBCore.Functions.GetClosestVehicle()
    if vehicle == nil or vehicle == 0 then return end
    if HasKeys(QBCore.Functions.GetPlate(vehicle)) then return end
    if #(pos - GetEntityCoords(vehicle)) > Config.LockToggleDist then QBCore.Functions.Notify(Lang:t("notify.vehclose"), "error") return end
    if not (GetVehicleDoorLockStatus(vehicle) > 0) then return end
    usingAdvanced = isAdvanced
    loadAnimDict("veh@break_in@0h@p_m_one@")
    TaskPlayAnim(ped, "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 3.0, 3.0, -1, 16, 0, 0, 0, 0)
    exports['tsp_ui']:Progress(function (success)
        if success then
            lockpickFinish(success)
            TaskPlayAnim(ped, "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 3.0, 3.0, -1, 16, 0, 0, 0, 0)
        else
            TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
            QBCore.Functions.Notify("You failed lockpick the vehicle!", "error")
        end
    end, 3, 55)
    -- TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
end

local function Hotwire(vehicle, plate)
    local hotwireTime = math.random(Config.minHotwireTime, Config.maxHotwireTime)
    local ped = PlayerPedId()
    exports['tsp_ui']:KeyCircle(function(success)
    loadAnimDict("machinic_loop_mechandplayer")
    TaskPlayAnim(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@" , "machinic_loop_mechandplayer" , 8.0, 8.0, -1, 16, 0, 0, 0, 0)
    IsHotwiring = true
    SetVehicleAlarm(vehicle, true)
    SetVehicleAlarmTimeLeft(vehicle, hotwireTime + 1000)
    -- QBCore.Functions.Progressbar("hotwire_vehicle", "Looking for the car keys...", hotwireTime, false, true, {
        -- disableMovement = true,
        -- disableCarMovement = true,
        -- disableMouse = false,
        -- disableCombat = true
    -- }, {
        -- animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        -- anim = "machinic_loop_mechandplayer",
        -- flags = 16
    -- }, {}, {}, function() -- Done
    if success then
        StopAnimTask(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
        if (math.random() <= Config.HotwireChance) then
            TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
	    TriggerEvent('mh-vehiclekeyitem:client:CreateTempKey', vehicle)
        else
            QBCore.Functions.Notify("You can\'t find the keys", "error")
        end
        Wait(Config.TimeBetweenHotwires)
        IsHotwiring = false
    -- end, function() -- Cancel
        StopAnimTask(ped, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        IsHotwiring = false
    -- end)
    Wait(10000)
    if not AlertSend then
        local chance = Config.PoliceAlertChance
        if GetClockHours() >= 1 and GetClockHours() <= 6 then
            chance = Config.PoliceNightAlertChance
        end
        if math.random() <= chance then
            exports['ps-dispatch']:SuspiciousActivity()
        --    TriggerServerEvent('police:server:policeAlert', 'Voertuigdiefstal aan de gang')
        end
        AlertSend = true
        SetTimeout(Config.AlertCooldown, function()
            AlertSend = false
             end)
        end
    else
    QBCore.Functions.Notify("Vehicle startup failure", 'error')
    end
    -- AttemptPoliceAlert("steal")
    end, 4, 40, 4)
end

local function CarjackVehicle(target)

    isCarjacking = true
    canCarjack = false
    loadAnimDict('mp_am_hold_up')
    local vehicle = GetVehiclePedIsUsing(target)
    local occupants = GetPedsInVehicle(vehicle)
    for p=1,#occupants do
        local ped = occupants[p]
        CreateThread(function()
            TaskPlayAnim(ped, "mp_am_hold_up", "holdup_victim_20s", 8.0, -8.0, -1, 49, 0, false, false, false)
            PlayPain(ped, 6, 0)
        end)
        Wait(math.random(200,500))
    end
    -- Cancel progress bar if: Ped dies during robbery, car gets too far away
    CreateThread(function()
        while isCarjacking do
            local distance = #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(target))
            if IsPedDeadOrDying(target) or distance > 7.5 then
                TriggerEvent("progressbar:client:cancel")
            end
            Wait(100)
        end
    end)
    QBCore.Functions.Progressbar("rob_keys", Lang:t("progress.car_theft"), Config.CarjackingTime, false, true, {}, {}, {}, {}, function()
        local hasWeapon, weaponHash = GetCurrentPedWeapon(PlayerPedId(), true)
        if hasWeapon and isCarjacking then
            if math.random() <= Config.CarjackChance[tostring(GetWeapontypeGroup(weaponHash))] then
                local plate = QBCore.Functions.GetPlate(vehicle)
                for p=1,#occupants do
                    local ped = occupants[p]
                    CreateThread(function()
                        TaskLeaveVehicle(ped, vehicle, 0)
                        PlayPain(ped, 6, 0)
                        Wait(1250)
                        ClearPedTasksImmediately(ped)
                        PlayPain(ped, math.random(7,8), 0)
                        MakePedFlee(ped)
                    end)
                end
                TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
                TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
	        TriggerEvent('mh-vehiclekeyitem:client:CreateTempKey', vehicle)
            else
                MakePedFlee(target)
                TriggerServerEvent('hud:server:GainStress', math.random(1, 4))
            end
            isCarjacking = false
            Wait(2000)
            if not AlertSend then
                local chance = Config.PoliceAlertChance
                if GetClockHours() >= 1 and GetClockHours() <= 6 then
                    chance = Config.PoliceNightAlertChance
                end
                if math.random() <= chance then
                    exports['ps-dispatch']:CarJacking(vehicle)
                --    TriggerServerEvent('police:server:policeAlert', 'Voertuigdiefstal aan de gang')
                end
                AlertSend = true
                SetTimeout(Config.AlertCooldown, function()
                    AlertSend = false
                end)
            end
            -- AttemptPoliceAlert("carjack")
            Wait(Config.DelayBetweenCarjackings)
            canCarjack = true
        end
    end, function()
        MakePedFlee(target)
        isCarjacking = false
        Wait(Config.DelayBetweenCarjackings)
        canCarjack = true
    end)
end

local function MakePedFlee(ped)
    SetPedFleeAttributes(ped, 0, 0)
    TaskReactAndFleePed(ped, PlayerPedId())
end



local function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

RegisterKeyMapping('togglelocks', "Toggle Vehicle Locks", 'keyboard', 'L')
RegisterCommand('togglelocks', function()
    ToggleVehicleLocks(GetVehicle())
end)

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() and QBCore.Functions.GetPlayerData() ~= {} then
	GetKeys()
    exports['qb-core']:HideText()
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    GetKeys()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    KeysList = {}
end)

RegisterNetEvent('qb-vehiclekeys:client:RemoveKeys', function(plate)
    if KeysList[plate] then KeysList[plate] = nil end
end)

RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)
    LockpickDoor(isAdvanced)
end)

RegisterNetEvent('vehiclekeys:client:SetOwner', function(plate)
    TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
end)

RegisterNetEvent('qb-vehiclekeys:client:AddKeys', function(plate)
    KeysList[plate] = true
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        local vehicle = GetVehiclePedIsIn(ped)
        local vehicleplate = QBCore.Functions.GetPlate(vehicle)
        local displayName = GetDisplayNameFromVehicleModel(vehicle)
        if plate == vehicleplate then
            SetVehicleEngineOn(vehicle, false, false, false)
        end
    end
end)

RegisterNetEvent('qb-vehiclekeys:client:GiveKeys', function(id)
    local targetVehicle = GetVehicle()
    if targetVehicle then
        local targetPlate = QBCore.Functions.GetPlate(targetVehicle)
        if HasKeys(targetPlate) then
            if id ~= nil then -- Give keys to specific ID
                GiveKeys(id, targetPlate)
            else
                if IsPedSittingInVehicle(PlayerPedId(), targetVehicle) then -- Give keys to everyone in vehicle
                    local otherOccupants = GetOtherPlayersInVehicle(targetVehicle)
                    for p=1,#otherOccupants do
                        TriggerServerEvent('qb-vehiclekeys:server:GiveVehicleKeys', GetPlayerServerId(NetworkGetPlayerIndexFromPed(otherOccupants[p])), targetPlate)
                    end
                else
                    GiveKeys(GetPlayerServerId(QBCore.Functions.GetClosestPlayer()), targetPlate)
                end
            end
        else
            QBCore.Functions.Notify(Lang:t("notify.pnokey"), 'error')
        end
    end
end)

CreateThread(function()
    while true do
        local sleep = 1000
        if LocalPlayer.state.isLoggedIn then
            sleep = 100
            local ped = PlayerPedId()
            local entering = GetVehiclePedIsTryingToEnter(ped)
            local carIsImmune = false
            if entering ~= 0 and not isBlacklistedVehicle(entering) then
                sleep = 2000
                local plate = QBCore.Functions.GetPlate(entering)
                local driver = GetPedInVehicleSeat(entering, -1)
                for _, veh in ipairs(Config.ImmuneVehicles) do
                    if GetEntityModel(entering) == GetHashKey(veh) then
                        carIsImmune = true
                    end
                end
                if driver ~= 0 and not IsPedAPlayer(driver) and not HasKeys(plate) and not carIsImmune then
                    if IsEntityDead(driver) then
                        if not isTakingKeys then
                            isTakingKeys = true
                            SetVehicleDoorsLocked(entering, 1)
                            QBCore.Functions.Progressbar("steal_keys", Lang:t("progress.takekeys_body"), 2500, false, false, {
                                disableMovement = false,
                                disableCarMovement = true,
                                disableMouse = false,
                                disableCombat = true
                            }, {}, {}, {}, function() -- Done
                                TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
				TriggerEvent('mh-vehiclekeyitem:client:CreateTempKey', entering)
                                isTakingKeys = false
                            end, function()
                                isTakingKeys = false
                            end)
                        end
                    else
                        -- SetVehicleDoorsLocked(entering, 2) -- Rijdende voertuigen 1 = niet op slot 2 = op slot
                    end
                elseif driver == 0 and entering ~= lastPickedVehicle and not HasKeys(plate) and not isTakingKeys then
                    -- SetVehicleDoorsLocked(entering, 2) -- Geparkeerde auto's 1 = niet op slot 2 = op slot
                end
            end
            -- Hotwiring while in vehicle, also keeps engine off for vehicles you don't own keys to
            if IsPedInAnyVehicle(ped, false) and not IsHotwiring then
                sleep = 1000
                local vehicle = GetVehiclePedIsIn(ped)
                local plate = QBCore.Functions.GetPlate(vehicle)
                if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() and not HasKeys(plate) and not isBlacklistedVehicle(vehicle) then
                    sleep = 5
                    local vehiclePos = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 1.0, 0.5)
                    -- DrawText3D(vehiclePos.x, vehiclePos.y, vehiclePos.z, "~g~[H]~w~ - Zoeken naar sleutels")
                    exports["qb-core"]:DrawText("[H] - Search for Keys",'bottom')
                    -- SetVehicleEngineOn(vehicle, false, false, true)
                    if IsControlJustPressed(0, 74) and IsHotwiring then
                        Hotwire(vehicle, plate)
                        exports["qb-core"]:HideText()
                    end
                end
            end
            if canCarjack then
                local playerid = PlayerId()
                local aiming, target = GetEntityPlayerIsFreeAimingAt(playerid)
                if aiming and (target ~= nil and target ~= 0) then
                    if DoesEntityExist(target) and IsPedInAnyVehicle(target, false) and not IsEntityDead(target) and not IsPedAPlayer(target) then
                        local targetveh = GetVehiclePedIsIn(target)
                        for _, veh in ipairs(Config.ImmuneVehicles) do
                            if GetEntityModel(targetveh) == GetHashKey(veh) then
                                carIsImmune = true
                            end
                        end
                        if GetPedInVehicleSeat(targetveh, -1) == target and not IsBlacklistedWeapon() then
                            local pos = GetEntityCoords(ped, true)
                            local targetpos = GetEntityCoords(target, true)
                            if #(pos - targetpos) < 5.0 and not carIsImmune then
                                CarjackVehicle(target)
                            end
                        end
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

exports('HasKeys', HasKeys)