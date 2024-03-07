QBCore = exports['qb-core']:GetCoreObject()
RegisterNetEvent('mechanic:client:RepairVehicle', function()
	local vehicle = QBCore.Functions.GetClosestVehicle()
	if vehicle ~= nil and vehicle ~= 0 then
		local pos = GetEntityCoords(PlayerPedId())
		local vehpos = GetEntityCoords(vehicle)
		if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, vehpos.x, vehpos.y, vehpos.z, true) < 5.0) and not IsPedInAnyVehicle(PlayerPedId()) then
			local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
			if (IsBackEngine(GetEntityModel(vehicle))) then
				drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
			end
			if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, drawpos) < 1.0) and not IsPedInAnyVehicle(PlayerPedId()) then
				RepairVehicle(vehicle)
			else
				ShowEnginePos = true
			end
		end
	end
end)

function RepairVehicle(vehicle)
	TaskPlayAnim(PlayerPedId(), "mini@repair", "fixing_a_player", 3.0, 3.0, -1, 16, 0, 0, 0, 0 )
	if (IsBackEngine(GetEntityModel(vehicle))) then
        SetVehicleDoorOpen(vehicle, 5, false, false)
    else
        SetVehicleDoorOpen(vehicle, 4, false, false)
    end
	local success = exports['tsp_ui']:RapidLines(math.random(1,3), math.random(7,5), math.random(1,20))
	-- exports['ps-ui']:Circle(function(success)

		if success then
			-- QBCore.Functions.Progressbar("repair_vehicle", "Repairing..", 600, false, false, {
				-- disableMovement = true,
				-- disableCarMovement = true,
				-- disableMouse = false,
				-- disableCombat = true,
			-- }, {
				-- animDict = "mini@repair",
				-- anim = "fixing_a_player",
				-- flags = 16,
			-- }, {}, {}, function()
				-- QBCore.Functions.Notify("Vehicle engine partially repaired")
				QBCore.Functions.Notify("Vehicle fully repaired!", "success")
				SetVehicleEngineHealth(vehicle, 300.0)
				SetVehicleTyreFixed(vehicle, 0)
				SetVehicleTyreFixed(vehicle, 1)
				SetVehicleTyreFixed(vehicle, 2)
				SetVehicleTyreFixed(vehicle, 3)
				SetVehicleTyreFixed(vehicle, 4)
				if (IsBackEngine(GetEntityModel(vehicle))) then
					SetVehicleDoorShut(vehicle, 5, false)
				else
					SetVehicleDoorShut(vehicle, 4, false)
				end
				TriggerServerEvent('mechanic:server:RemoveItem', "repairkit")
			-- end, function()
				StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
				if (IsBackEngine(GetEntityModel(vehicle))) then
					SetVehicleDoorShut(vehicle, 5, false)
				else
					SetVehicleDoorShut(vehicle, 4, false)
				end
			-- end)
		else
			if (IsBackEngine(GetEntityModel(vehicle))) then
				SetVehicleDoorShut(vehicle, 5, false)
			else
				SetVehicleDoorShut(vehicle, 4, false)
			end
			QBCore.Functions.Notify("Fail to repair vehicle!", 'error')
			StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 0.5)
	end

	-- end, 10, math.random(15,50)) -- NumberOfCircles, MS
	-- QBCore.Functions.Progressbar("repair_vehicle", "Repairing..", 10000, false, true, {
	-- 	disableMovement = true,
	-- 	disableCarMovement = true,
	-- 	disableMouse = false,
	-- 	disableCombat = true,
	-- }, {
	-- 	animDict = "mini@repair",
	-- 	anim = "fixing_a_player",
	-- 	flags = 16,
	-- }, {}, {}, function()
	-- 	StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
	-- 	-- QBCore.Functions.Notify("Vehicle engine partially repaired")
	-- 	SetVehicleEngineHealth(vehicle, 400.0)
	-- 	SetVehicleTyreFixed(vehicle, 0)
	-- 	SetVehicleTyreFixed(vehicle, 1)
	-- 	SetVehicleTyreFixed(vehicle, 2)
	-- 	SetVehicleTyreFixed(vehicle, 3)
	-- 	SetVehicleTyreFixed(vehicle, 4)
	-- 	if (IsBackEngine(GetEntityModel(vehicle))) then
	-- 		SetVehicleDoorShut(vehicle, 5, false)
	-- 	else
	-- 		SetVehicleDoorShut(vehicle, 4, false)
	-- 	end
	-- 	TriggerServerEvent('mechanic:server:RemoveItem', "repairkit")
	-- end, function()
	-- 	StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
	-- 	if (IsBackEngine(GetEntityModel(vehicle))) then
	-- 		SetVehicleDoorShut(vehicle, 5, false)
	-- 	else
	-- 		SetVehicleDoorShut(vehicle, 4, false)
	-- 	end
	-- end)
end

RegisterNetEvent('mechanic:client:AdvancedRepairVehicle', function()
	local vehicle = QBCore.Functions.GetClosestVehicle()
	if vehicle ~= nil and vehicle ~= 0 then
		local pos = GetEntityCoords(PlayerPedId())
		local vehpos = GetEntityCoords(vehicle)
		if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, vehpos.x, vehpos.y, vehpos.z, true) < 5.0) and not IsPedInAnyVehicle(PlayerPedId()) then
			local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
			if (IsBackEngine(GetEntityModel(vehicle))) then
				drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
			end
			if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, drawpos) < 2.0) and not IsPedInAnyVehicle(PlayerPedId()) then
				AdvancedRepairVehicle(vehicle)
			else
				ShowEnginePos = true
			end
		end
	end
end)

function AdvancedRepairVehicle(vehicle)
	TaskPlayAnim(PlayerPedId(), "mini@repair", "fixing_a_player", 3.0, 3.0, -1, 16, 0, 0, 0, 0 )
	if (IsBackEngine(GetEntityModel(vehicle))) then
        SetVehicleDoorOpen(vehicle, 5, false, false)
    else
        SetVehicleDoorOpen(vehicle, 4, false, false)
    end
	local success = exports['tsp_ui']:RapidLines(math.random(1,3), math.random(7,4), math.random(1,20))
	-- exports['ps-ui']:Circle(function(success)
		if success then
				QBCore.Functions.Notify("Vehicle repaired")
				SetVehicleEngineHealth(vehicle, 350.0)
				SetVehicleTyreFixed(vehicle, 0)
				SetVehicleTyreFixed(vehicle, 1)
				SetVehicleTyreFixed(vehicle, 2)
				SetVehicleTyreFixed(vehicle, 3)
				SetVehicleTyreFixed(vehicle, 4)
				if (IsBackEngine(GetEntityModel(vehicle))) then
					SetVehicleDoorShut(vehicle, 5, false)
				else
					SetVehicleDoorShut(vehicle, 4, false)
				end
				TriggerServerEvent('mechanic:server:RemoveItem', "advancedrepairkit")
				StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
				if (IsBackEngine(GetEntityModel(vehicle))) then
					SetVehicleDoorShut(vehicle, 5, false)
				else
					SetVehicleDoorShut(vehicle, 4, false)
				end
		else
			if (IsBackEngine(GetEntityModel(vehicle))) then
				SetVehicleDoorShut(vehicle, 5, false)
			else
				SetVehicleDoorShut(vehicle, 4, false)
			end
			QBCore.Functions.Notify("Fail to repair vehicle", 'error')
			StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 0.5)
		end
	-- end, 5, math.random(3,20)) -- NumberOfCircles, MS
	-- QBCore.Functions.Progressbar("repair_vehicle", "Repairing..", 14000, false, true, {
	-- 	disableMovement = true,
	-- 	disableCarMovement = true,
	-- 	disableMouse = false,
	-- 	disableCombat = true,
	-- }, {
	-- 	animDict = "mini@repair",
	-- 	anim = "fixing_a_player",
	-- 	flags = 16,
	-- }, {}, {}, function()
	-- 	StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
	-- 	QBCore.Functions.Notify("Vehicle repaired")
	-- 	SetVehicleEngineHealth(vehicle, 1000.0)
	-- 	SetVehicleTyreFixed(vehicle, 0)
	-- 	SetVehicleTyreFixed(vehicle, 1)
	-- 	SetVehicleTyreFixed(vehicle, 2)
	-- 	SetVehicleTyreFixed(vehicle, 3)
	-- 	SetVehicleTyreFixed(vehicle, 4)
	-- 	SetVehicleFixed(vehicle)
	-- 	if (IsBackEngine(GetEntityModel(vehicle))) then
	-- 		SetVehicleDoorShut(vehicle, 5, false)
	-- 	else
	-- 		SetVehicleDoorShut(vehicle, 4, false)
	-- 	end
	-- 	TriggerServerEvent('mechanic:server:RemoveItem', "advancedrepairkit")
	-- end, function()
	-- 	StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
	-- 	if (IsBackEngine(GetEntityModel(vehicle))) then
	-- 		SetVehicleDoorShut(vehicle, 5, false)
	-- 	else
	-- 		SetVehicleDoorShut(vehicle, 4, false)
	-- 	end
	-- end)
end

RegisterNetEvent('mechanic:client:CleanVehicle', function()
	local vehicle = QBCore.Functions.GetClosestVehicle()
	if vehicle ~= nil and vehicle ~= 0 then
		local pos = GetEntityCoords(PlayerPedId())
		local vehpos = GetEntityCoords(vehicle)
		if (GetDistanceBetweenCoords(pos.x, pos.y, pos.z, vehpos.x, vehpos.y, vehpos.z, true) < 3.0) and not IsPedInAnyVehicle(PlayerPedId()) then
			CleanVehicle(vehicle)	
		end
	end
end)

function CleanVehicle(vehicle)
	TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_MAID_CLEAN", 0, true)
	QBCore.Functions.Progressbar("repair_vehicle", "Cleaning Vehicle...", 2000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function() -- Done
		-- QBCore.Functions.Notify("Vehicle Cleaned")
		SetVehicleDirtLevel(vehicle)
        SetVehicleUndriveable(vehicle, false)
		WashDecalsFromVehicle(vehicle, 1.0)
		ClearAllPedProps(PlayerPedId())
		ClearPedTasks(PlayerPedId())
	end, function()
		ClearAllPedProps(PlayerPedId())
		ClearPedTasks(PlayerPedId())
	end)
end

function IsBackEngine(vehModel)
    for _, model in pairs(BackEngineVehicles) do
        if GetHashKey(model) == vehModel then
            return true
        end
    end
    return false
end

local function notification(msg)
	QBCore.Functions.Notify(msg)
end

local function isPedDrivingAVehicle()
	local ped = PlayerPedId()
	vehicle = GetVehiclePedIsIn(ped, false)
	if IsPedInAnyVehicle(ped, false) then
		if GetPedInVehicleSeat(vehicle, -1) == ped then
			local class = GetVehicleClass(vehicle)
			if class ~= 15 and class ~= 16 and class ~=21 and class ~=13 then
				return true
			end
		end
	end
	return false
end