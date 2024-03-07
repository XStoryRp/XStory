--[[ ===================================================== ]]--
--[[         MH Vehicle Key Item Script by MaDHouSe        ]]--
--[[ ===================================================== ]]--

local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local MenuItemId = nil
local currenVehicle = nil




local function GetVehicleData(vehicle)
	local props = QBCore.Functions.GetVehicleProperties(vehicle)
	if props then
		return GetDisplayNameFromVehicleModel(props.model), props.plate
	else
		return false
	end
end

local function DoIHaveTheVehicleKeyItem(vehicle)
	QBCore.Functions.TriggerCallback('mh-vehiclekeyitem:server:IHaveTheKeyItem', function(result)
		if not result then
			SetVehicleEngineOn(vehicle, false, false, true)
			-- SetVehicleDoorsLocked(vehicle, 2)
			TriggerEvent('qb-vehiclekeys:client:RemoveKeys', QBCore.Functions.GetPlate(vehicle))
			TriggerServerEvent('mh-vehiclekeyitem:server:DeleteVehicleKey')
		end
	end, QBCore.Functions.GetPlate(vehicle))
end

local function CreateTempKey(vehicle)
	if vehicle then
		local model, plate = GetVehicleData(vehicle)
		TriggerServerEvent('mh-vehiclekeyitem:server:CreateTempVehiclekey', {model = model, plate = plate})
	else
		QBCore.Functions.Notify(Lang:t('error.no_key'), 'error')
	end
end
exports('CreateTempKey', CreateTempKey)

local function DeleteKey(plate)
	TriggerServerEvent('mh-vehiclekeyitem:server:DeleteKey', plate)
end
exports('DeleteKey', DeleteKey)

local function HasKey(plate)
    QBCore.Functions.TriggerCallback('mh-vehiclekeyitem:server:IHaveTheKeyItem', function(result)
        if result then
            return true
        else
            QBCore.Functions.Notify(Lang:t('error.nokey'), 'error')
            return false
        end
    end, plate)
end
exports('HasKey', HasKey)

function GetVehicle()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local vehicle = GetVehiclePedIsIn(PlayerPedId())

    while vehicle == 0 do
        vehicle = QBCore.Functions.GetClosestVehicle()
        if #(pos - GetEntityCoords(vehicle)) > 4 then
            -- QBCore.Functions.Notify(Lang:t("notify.vehclose"), "error")
            return
        end
    end

    if not IsEntityAVehicle(vehicle) then vehicle = nil end
    return vehicle
end

function isBlacklistedVehicle(vehicle)
    local isBlacklisted = false
    for _,v in ipairs(Config.NoLockVehicles) do
        if joaat(v) == GetEntityModel(vehicle) then
            isBlacklisted = true
            break;
        end
    end
    if Entity(vehicle).state.ignoreLocks or GetVehicleClass(vehicle) == 13 then isBlacklisted = true end
    return isBlacklisted
end

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	PlayerData = QBCore.Functions.GetPlayerData()
	TriggerServerEvent('mh-vehiclekeyitem:server:onjoin')
	TriggerServerEvent('mh-vehiclekeyitem:server:DeleteVehicleKey')
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(data)
    PlayerData = data
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
		PlayerData = QBCore.Functions.GetPlayerData()
        TriggerServerEvent('mh-vehiclekeyitem:server:onjoin')
		TriggerServerEvent('mh-vehiclekeyitem:server:DeleteVehicleKey')
    end
end)

RegisterNetEvent('mh-vehiclekeyitem:client:menu', function()
    local playerlist = {}
	local vehicleList = {}
	QBCore.Functions.TriggerCallback("mh-mygaragemenu:server:getMyVehicles", function(myVehicles)
		if myVehicles ~= nil then
			QBCore.Functions.TriggerCallback('mh-vehiclekeyitem:server:GetOnlinePlayers', function(online)
				for k, vehicle in pairs(myVehicles) do
					vehicleList[#vehicleList + 1] = {value = vehicle.plate, text = vehicle.vehicle.." ("..vehicle.plate..")"}
				end
				for key, v in pairs(online) do
					playerlist[#playerlist + 1] = {value = v.source, text = "#"..v.source.." "..v.fullname}
				end
				local menu = exports["qb-input"]:ShowInput({
					header = "Sell your vehicle",
					submitText = "",
					inputs = {
						{
							text = "CitizenID",
							name = "id",
							type = "select",
							options = playerlist,
							isRequired = true
						},
						{
							text = "Select a vehicle",
							name = "vehicle",
							type = "select",
							options = vehicleList,
							isRequired = true
						},
					}
				})
				if menu then
					if not menu.id or not menu.vehicle then
						return
					else
						local target = GetPlayerFromServerId(menu.id)
						local targetPed = GetPlayerPed(target)
						local vehicle = GetVehiclePedIsIn(targetPed)
						if vehicle then
							TriggerServerEvent('mh-vehiclekeyitem:server:doAction', tonumber(menu.id), tostring(menu.vehicle), vehicle)
						else
							QBCore.Functions.Notify(Lang:t('error.no_in_car'), 'error')
						end
					end
				end
			end)
		end
	end)
end)

RegisterNetEvent('qb-radialmenu:client:onRadialmenuOpen', function()
	QBCore.Functions.TriggerCallback("mh-vehiclekeyitem:server:hasAccess", function(access)
		if access then
			if IsPedInAnyVehicle(PlayerPedId(), false) then
				local _, plate = GetVehicleData(GetVehiclePedIsIn(PlayerPedId()))
				if plate ~= nil then
					QBCore.Functions.TriggerCallback("mh-vehiclekeyitem:server:isOwner", function(isOwner)
						if isOwner then
							if MenuItemId ~= nil then
								exports['qb-radialmenu']:RemoveOption(MenuItemId)
								MenuItemId = nil
							end
							MenuItemId = exports['qb-radialmenu']:AddOption({
								id = 'mykeys',
								title = "Sleutel Opties",
								icon = 'key',
								type = 'client',
								event = 'mh-vehiclekeyitem:client:menu',
								shouldClose = true
							}, MenuItemId)
						else
							if MenuItemId ~= nil then
								exports['qb-radialmenu']:RemoveOption(MenuItemId)
								MenuItemId = nil
							end
						end
					end, plate)
				else
					if MenuItemId ~= nil then
						exports['qb-radialmenu']:RemoveOption(MenuItemId)
						MenuItemId = nil
					end
				end
			else
				if MenuItemId ~= nil then
					exports['qb-radialmenu']:RemoveOption(MenuItemId)
					MenuItemId = nil
				end
			end
		else
			if MenuItemId ~= nil then
				exports['qb-radialmenu']:RemoveOption(MenuItemId)
				MenuItemId = nil
			end
		end
	end)
end)

RegisterNetEvent('mh-vehiclekeyitem:client:DeleteKey', function(plate)
	TriggerServerEvent('mh-vehiclekeyitem:server:DeleteKey', plate)
end)

RegisterNetEvent('mh-vehiclekeyitem:client:CreateTempKey', function(vehicle)
    if vehicle then
        local model, plate = GetVehicleData(vehicle)
        TriggerServerEvent('mh-vehiclekeyitem:server:CreateTempVehiclekey', {model = model, plate = plate})
    else
        QBCore.Functions.Notify(Lang:t('info.no_veh_found'), 'error')
    end
end)

RegisterNetEvent('mh-vehiclekeyitem:client:givekey', function(vehicle, plate)
	local ped = PlayerPedId()
	if IsPedInAnyVehicle(ped, false) then
		local pedvehicle = GetVehiclePedIsIn(ped)
		if pedvehicle == vehicle then
			local displaytext, plate = GetVehicleData(pedvehicle)
			TriggerServerEvent('mh-vehiclekeyitem:server:CreateNewVehiclekey', {model = displaytext, plate = plate})
		else
			QBCore.Functions.Notify(Lang:t('error.no_right_veh'), "error")
		end
	else
		QBCore.Functions.Notify(Lang:t('error.no_in_veh'), "error")
	end
end)

RegisterNetEvent('mh-vehiclekeyitem:client:givenewkey', function()
	local ped = PlayerPedId()
	if IsPedInAnyVehicle(ped, false) then
		local vehicle = GetVehiclePedIsIn(ped)
		local displaytext, plate = GetVehicleData(vehicle)
		TriggerServerEvent('mh-vehiclekeyitem:server:CreateNewVehiclekey', {model = displaytext, plate = plate})
	else
		QBCore.Functions.Notify(Lang:t('error.no_in_veh'), "error")
	end
end)

RegisterNetEvent('mh-vehiclekeyitem:client:CreateVehicleOwnerKey', function(vehicle)
	local ped = PlayerPedId()
	local displaytext, plate = GetVehicleData(vehicle)
	TriggerServerEvent('mh-vehiclekeyitem:server:CreateNewVehiclekey', {model = displaytext, plate = plate})
end)

RegisterNetEvent('mh-vehiclekeyitem:client:UseKey', function(item) 
	if item and item.name == Config.KeyItem then
		local vehicle, distance = QBCore.Functions.GetClosestVehicle(GetEntityCoords(PlayerPedId())) 
		if distance <= 1.5 then
			local displaytext, plate = GetVehicleData(vehicle)
			if item.info.plate == plate then
				TriggerEvent('qb-vehiclekeys:client:AddKeys', plate)
				TriggerServerEvent('mh-vehiclekeyitem:server:DeleteVehicleKey')
				QBCore.Functions.Notify(Lang:t('info.you_can_use_the_key', {model = displaytext}), 'success')
			else
				QBCore.Functions.Notify(Lang:t('error.not_have_the_right_key', {model = displaytext}), 'error')
			end
		else
			QBCore.Functions.Notify(Lang:t('error.veh_no_near'), 'error')
		end
	end
end)


local NotifyCooldown = false
function ToggleEngine(veh)
    if veh then
        local EngineOn = GetIsVehicleEngineRunning(veh)
        if not isBlacklistedVehicle(veh) then
            if HasKeys(QBCore.Functions.GetPlate(veh))  then
                if EngineOn then
                    SetVehicleEngineOn(veh, false, false, true)
                else
                    if exports['fuel']:GetFuel(veh) ~= 0 then
                        SetVehicleEngineOn(veh, true, false, true)
                    else
                        if not NotifyCooldown then
                            RequestAmbientAudioBank("DLC_PILOT_ENGINE_FAILURE_SOUNDS", 0)
                            PlaySoundFromEntity(l_2613, "Landing_Tone", PlayerPedId(), "DLC_PILOT_ENGINE_FAILURE_SOUNDS", 0, 0)
                            NotifyCooldown = true
                            QBCore.Functions.Notify('No fuel..', 'error')
                            Wait(1500)
                            StopSound(l_2613)
                            Wait(3500)
                            NotifyCooldown = false
                        end
                    end                
                end
            end
        end
    end
end

-- RegisterKeyMapping('+engine', 'Toggle Engine', 'keyboard', 'G')
-- RegisterCommand('+engine', function()
-- 	local ped = PlayerPedId()
-- 	local vehicle = GetVehiclePedIsIn(ped, false)
-- 	local engineStatus = GetIsVehicleEngineRunning(vehicle)
-- 	if vehicle ~= 0 then
-- 		if not engineStatus then
-- 			SetVehicleEngineOn(vehicle, true, false, true)
-- 			QBCore.Functions.Notify(Lang:t("info.engine_on"))
-- 		else 
-- 			SetVehicleEngineOn(vehicle, false, false, true)
-- 			QBCore.Functions.Notify(Lang:t("info.engine_off"))
-- 		end 
-- 	end
-- end)

RegisterKeyMapping('engine', "Toggle Vehicle Engine", 'keyboard', 'IOM_WHEEL_UP')
RegisterCommand('engine', function()
    local vehicle = GetVehicle()
    if vehicle and IsPedInVehicle(PlayerPedId(), vehicle) then
        ToggleEngine(vehicle)
    end
end)


CreateThread(function()
    while true do
		local sleep = 1000
		if LocalPlayer.state.isLoggedIn then
			if IsPedInAnyVehicle(PlayerPedId(), false) then
				sleep = 500
				if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then 
					DoIHaveTheVehicleKeyItem(GetVehiclePedIsIn(PlayerPedId()))
				end
			else
				sleep = 1000
				currenVehicle = nil
			end
		end
		Wait(sleep)
    end
end)
