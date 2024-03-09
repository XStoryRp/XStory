-- ####################################################################################################################################################
--                                                                       Functions
-- ####################################################################################################################################################


loadDict = function(dict)
    while not HasAnimDictLoaded(dict) do Wait(0) RequestAnimDict(dict) end
    return dict
end

ShowNotification = function(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(msg)
	DrawNotification(0,1)
end


GetClosestVehicleToPlayer = function()
	local plyPed = PlayerPedId()
	local plyPos = GetEntityCoords(plyPed, false)
	local plyOffset = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 1.0, 0.0)
	local radius = 3.0
	local rayHandle = StartShapeTestCapsule(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, radius, 10, plyPed, 7)
	local _, _, _, _, vehicle = GetShapeTestResult(rayHandle)
	return vehicle
end

CanUseWeapon = function(allowedWeapons)
	local plyPed = PlayerPedId()
	local plyCurrentWeapon = GetSelectedPedWeapon(plyPed)
	for i = 1, #allowedWeapons do
		if allowedWeapons[i] == plyCurrentWeapon then
			return true
		end
	end
	return false
end

GetDriverOfVehicle = function(vehicle)
	local driver = GetPedInVehicleSeat(vehicle, -1)
    if driver then
        if IsPedAPlayer(driver) then
            local plyId = NetworkGetPlayerIndexFromPed(driver)
            if NetworkGetPlayerIndexFromPed(driver) > 0 then
                return plyId
            else
                return -1
            end
        else
            return -1
        end
    else
        return -1
	end
end

GetClosestVehicleTire = function(vehicle)
	local tireBones = {"wheel_lf", "wheel_rf", "wheel_lm1", "wheel_rm1", "wheel_lm2", "wheel_rm2", "wheel_lm3", "wheel_rm3", "wheel_lr", "wheel_rr"}
	local tireIndex = {
		["wheel_lf"] = 0,
		["wheel_rf"] = 1,
		["wheel_lm1"] = 2,
		["wheel_rm1"] = 3,
		["wheel_lm2"] = 45,
		["wheel_rm2"] = 47,
		["wheel_lm3"] = 46,
		["wheel_rm3"] = 48,
		["wheel_lr"] = 4,
		["wheel_rr"] = 5,
	}
	local plyPed = PlayerPedId()
	local plyPos = GetEntityCoords(plyPed, false)
	local minDistance = 0.6
	local closestTire = nil
	
	for a = 1, #tireBones do
		local bonePos = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, tireBones[a]))
		local distance = #(plyPos - vector3(bonePos.x, bonePos.y, bonePos.z))

		if closestTire == nil then
			if distance <= minDistance then
				closestTire = {bone = tireBones[a], boneDist = distance, bonePos = bonePos, tireIndex = tireIndex[tireBones[a]]}
			end
		else
			if distance < closestTire.boneDist then
				closestTire = {bone = tireBones[a], boneDist = distance, bonePos = bonePos, tireIndex = tireIndex[tireBones[a]]}
			end
		end
	end

	return closestTire
end




-- ####################################################################################################################################################
--                                                                       Functions
-- ####################################################################################################################################################


CreateThread(function()
    local bones = {'wheel_lf', 'wheel_rf', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3', 'wheel_lr', 'wheel_rr'}
    exports[Config.TargetSystem]:AddTargetBone(bones, {
        options = {
            {
                event = 'wasabi_tireslash:slash',
                icon = '',
                label = 'Slash Tire',
                num = 1
            },
        },
        distance = 1.3
    })
end)

RegisterNetEvent('wasabi_tireslash:slash', function()
    local vehicle = GetClosestVehicleToPlayer()
    if vehicle ~= 0 then
        if CanUseWeapon(Config.allowedWeapons) then
            local closestTire = GetClosestVehicleTire(vehicle)
            if closestTire ~= nil then
                if IsVehicleTyreBurst(vehicle, closestTire.tireIndex, 0) == false then
                    local animDict = 'melee@knife@streamed_core_fps'
                    local animName = 'ground_attack_on_spot'
                    loadDict('melee@knife@streamed_core_fps')
                    local animDuration = GetAnimDuration(animDict, animName)
                    TaskPlayAnim(PlayerPedId(), animDict, animName, 8.0, -8.0, animDuration, 15, 1.0, 0, 0, 0)
                    Wait((animDuration / 2) * 1000)
                    local driverId = GetDriverOfVehicle(vehicle)
                    local driverServId = GetPlayerServerId(driverId)
                    if driverServId == 0 then
                        SetEntityAsMissionEntity(vehicle, true, true)
                        SetVehicleTyreBurst(vehicle, closestTire.tireIndex, 0, 100.0)
                        SetEntityAsNoLongerNeeded(vehicle)
                    else
                        TriggerServerEvent('wasabi_tireslash:sync', driverServId, closestTire.tireIndex)
                    end
                    Wait((animDuration / 2) * 1000)
                    ClearPedTasks(PlayerPedId())
                    RemoveAnimDict(animDict)
                else
                    -- TriggerEvent('wasabi_tireslash:notify', Language['already_slashed'])
                end
            end
        else
            -- TriggerEvent('wasabi_tireslash:notify', Language['no_weapon'])
        end
    end
end)

RegisterNetEvent('wasabi_tireslash:sync')
AddEventHandler('wasabi_tireslash:sync', function(tireIndex)
	-- TriggerEvent('wasabi_tireslash:notify', Language['car_slashed'])
	local vehicle = GetVehiclePedIsIn(PlayerPedId(), false) or GetVehiclePedIsIn(PlayerPedId(), true)
	SetVehicleTyreBurst(vehicle, tireIndex, 0, 70.0)
end)