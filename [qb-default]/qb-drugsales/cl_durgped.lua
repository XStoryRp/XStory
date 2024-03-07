local QBCore = exports[Config.Core]:GetCoreObject()

local numberofcops = 0
---spokojnie!
	local Dictspokojnie = "gestures@m@standing@casual"
	local Animspokojnie = "gesture_easy_now"
--super!
	local Dictsuper = "mp_action"
	local Animsuper = "thanks_male_06"
--A niech to!
	local Dictniechto = "gestures@m@standing@casual"
	local Animniechto = "gesture_damn"
--Zastanowienie
	local Dictzastanowienie = "amb@world_human_prostitute@cokehead@base"
	local Animzastanowienie = "base"
	local modezastanowienie = 49

exports['qb-target']:AddGlobalPed({
        options = { 
          { 
            type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
            event = "veeqsprzedawanie:sellmarihuana", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
            icon = 'fa-solid fa-cannabis', -- This is the icon that will display next to this trigger option
            label = _U("sellweed"), -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
            targeticon = 'fa-solid fa-cannabis', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
            item = Config.WeedItem, -- This is the item it has to check for, this option will only show up if the player has this item, this is OPTIONAL
          }
        },
        distance = 0.6, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})
exports['qb-target']:AddGlobalPed({
        options = { 
          { 
            type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
            event = "veeqsprzedawanie:sellmeta", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
            icon = 'fa-solid fa-pills', -- This is the icon that will display next to this trigger option
            label = _U("sellmeth"), -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
            targeticon = 'fa-solid fa-pills', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
            item = Config.MethItem, -- This is the item it has to check for, this option will only show up if the player has this item, this is OPTIONAL
          }
        },
        distance = 0.6, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})

exports['qb-target']:AddGlobalPed({
    options = { 
      { 
        type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
        event = "veeqsprzedawanie:sellkoka", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
        icon = 'fa-solid fa-prescription-bottle', -- This is the icon that will display next to this trigger option
        label = _U("sellcoke"), -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
        targeticon = 'fa-solid fa-prescription-bottle', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
        item = Config.CokeItem, -- This is the item it has to check for, this option will only show up if the player has this item, this is OPTIONAL
      }
    },
    distance = 0.6, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        
        Citizen.Wait(1)
    end
end

RegisterNetEvent('veeqsprzedawanie:sellmarihuana')
AddEventHandler('veeqsprzedawanie:sellmarihuana', function(data)
	local playerPed = PlayerPedId()
	local npcPed = data.entity 
	local playerCoords = GetEntityCoords(playerPed)

	if Config.NumberOfCops > 0 then
		TriggerServerEvent('checkC')
	end
	
if numberofcops >= Config.NumberOfCops then
	if npcPed ~= oldped then
		oldped = npcPed
		if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
			if DoesEntityExist(npcPed)then
				if IsPedDeadOrDying(npcPed) == false then
					if IsPedInAnyVehicle(npcPed) == false then
						TaskTurnPedToFaceCoord(npcPed, playerCoords.x, playerCoords.y, playerCoords.z)
						loadAnimDict(Dictspokojnie)
						TaskPlayAnim(playerPed, Dictspokojnie, Animspokojnie, 8.0, -8.0, -1, 0, 0, false, false, false)
						Citizen.Wait(2000)
						
						FreezeEntityPosition(npcPed, true)
						loadAnimDict(Dictzastanowienie)
						TaskPlayAnim(npcPed, Dictzastanowienie, Animzastanowienie, 8.0, -8.0, -1, modezastanowienie, 0, false, false, false)
						exports['an_progBar']:run(Config.SellingTime,_U("negotiateprice"),'#E14127')
						Citizen.Wait(Config.SellingTime*1000)
						local playerCoords = GetEntityCoords(playerPed)

						local npcCoords = GetEntityCoords(npcPed)

						
						local distance = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, npcCoords.x, npcCoords.y, npcCoords.z)
						if distance < 1.0 then
							local chance = math.random(1, 100)
							if chance <= Config.WeedChance then
									loadAnimDict(Dictsuper)
									TaskPlayAnim(playerPed, Dictsuper, Animsuper, 8.0, -8.0, -1, 0, 0, false, false, false)
									loadAnimDict('mp_common')
									TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, 8.0, 2000, 50, 0, false, false, false)
									TaskPlayAnim(playerPed, "mp_common", "givetake1_a", 8.0, 8.0, 2000, 50, 0, false, false, false)		
									Citizen.Wait(1000)
									SetEntityAsMissionEntity(oldped)
									SetPedAsNoLongerNeeded(oldped)
									FreezeEntityPosition(oldped, false)
									ClearPedTasks(oldped)
									TriggerServerEvent("veeq_drugselling:sellmarycha")
							else
								SetEntityAsMissionEntity(oldped)
								SetPedAsNoLongerNeeded(oldped)
								FreezeEntityPosition(oldped, false)
								ClearPedTasks(oldped)
								exports['ox_lib']:notify({
									position = 'top',
									title = _U("cancel"),
									icon = "fa-solid fa-cannabis",
									type = 'error'
								}) 
								loadAnimDict(Dictniechto)
								TaskPlayAnim(PlayerPedId(), Dictniechto, Animniechto, 8.0, -8.0, -1, 0, 0, false, false, false)
								-- local coords = GetEntityCoords(GetPlayerPed(-1))
								-- 	local drugsellll = {
								-- 		code = "10-95",
								-- 		street = exports['esx_dispatch']:GetStreetAndZone(),
								-- 		id = exports['esx_dispatch']:randomId(),
								-- 		priority = 1,
								-- 		title = _U("notifypolice"),
								-- 		duration = 10000,
								-- 		blipname = _U("notifypolice"),
								-- 		color = 1,
								-- 		sprite = 140,
								-- 		fadeOut = 30,
								-- 		position = {
								-- 			x = coords.x,
								-- 			y = coords.y,
								-- 			z = coords.z
								-- 		},
								-- 		job = "police"
								-- 	}
								-- 	TriggerServerEvent("dispatch:svNotify", drugsellll)
							end
						else
							SetEntityAsMissionEntity(oldped)
							ClearPedTasks(oldped)
							FreezeEntityPosition(oldped, false)
							exports['ox_lib']:notify({
								position = 'top',
								title = _U("toofar"),
								icon = "fa-solid fa-cannabis",
								type = 'error'
							}) 
						end
					end
				end 
			end
		end 
	else
		exports['ox_lib']:notify({
			position = 'top',
			title = _U("sameguy"),
			icon = "fa-solid fa-cannabis",
			type = 'error'
		}) 
	end
else
	exports['ox_lib']:notify({
		position = 'top',
		title = _U("nopolice"),
		icon = "fa-solid fa-cannabis",
		type = 'error'
	}) 
end
end)

RegisterNetEvent('veeqsprzedawanie:sellmeta')
AddEventHandler('veeqsprzedawanie:sellmeta', function(data)
	local playerPed = PlayerPedId()
	local npcPed = data.entity 

	-- Pobierz pozycję gracza
	local playerCoords = GetEntityCoords(playerPed)

	if Config.NumberOfCops > 0 then
		TriggerServerEvent('checkC')
	end
	
if numberofcops >= Config.NumberOfCops then
		if npcPed ~= oldped then
			oldped = npcPed
			if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
				if DoesEntityExist(npcPed)then
					if IsPedDeadOrDying(npcPed) == false then
						if IsPedInAnyVehicle(npcPed) == false then
		
						TaskTurnPedToFaceCoord(npcPed, playerCoords.x, playerCoords.y, playerCoords.z)
						loadAnimDict(Dictspokojnie)
						TaskPlayAnim(playerPed, Dictspokojnie, Animspokojnie, 8.0, -8.0, -1, 0, 0, false, false, false)
						Citizen.Wait(2000)
						--TaskStandStill(npcPed, -1)
						FreezeEntityPosition(npcPed, true)
						loadAnimDict(Dictzastanowienie)
						TaskPlayAnim(npcPed, Dictzastanowienie, Animzastanowienie, 8.0, -8.0, -1, modezastanowienie, 0, false, false, false)
						exports['an_progBar']:run(Config.SellingTime,_U("negotiateprice"),'#E14127')
						Citizen.Wait(Config.SellingTime*1000)
						local playerCoords = GetEntityCoords(playerPed)

						local npcCoords = GetEntityCoords(npcPed)

						
						local distance = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, npcCoords.x, npcCoords.y, npcCoords.z)
						if distance < 4.0 then
							local chance = math.random(1, 100)
							if chance <= Config.MethChance then
									loadAnimDict(Dictsuper)
									TaskPlayAnim(playerPed, Dictsuper, Animsuper, 8.0, -8.0, -1, 0, 0, false, false, false)
									loadAnimDict('mp_common')
									TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, 8.0, 2000, 50, 0, false, false, false)
									TaskPlayAnim(playerPed, "mp_common", "givetake1_a", 8.0, 8.0, 2000, 50, 0, false, false, false)

									Citizen.Wait(1000)
									SetEntityAsMissionEntity(oldped)
									SetPedAsNoLongerNeeded(oldped)
									FreezeEntityPosition(oldped, false)
									ClearPedTasks(oldped)
									TriggerServerEvent("veeq_drugselling:sellmeta")
							else
								SetEntityAsMissionEntity(oldped)
								SetPedAsNoLongerNeeded(oldped)
								FreezeEntityPosition(oldped, false)
								ClearPedTasks(oldped)
								exports['ox_lib']:notify({
									position = 'top',
									title = _U("cancel"),
									icon = "fa-solid fa-pills",
									type = 'error'
								}) 
								loadAnimDict(Dictniechto)
								TaskPlayAnim(PlayerPedId(), Dictniechto, Animniechto, 8.0, -8.0, -1, 0, 0, false, false, false)
								-- local coords = GetEntityCoords(GetPlayerPed(-1))
								-- 	local drugsellll = {
								-- 		code = "10-95",
								-- 		street = exports['esx_dispatch']:GetStreetAndZone(),
								-- 		id = exports['esx_dispatch']:randomId(),
								-- 		priority = 1,
								-- 		title = _U("notifypolice"),
								-- 		duration = 10000,
								-- 		blipname = _U("notifypolice"),
								-- 		color = 1,
								-- 		sprite = 140,
								-- 		fadeOut = 30,
								-- 		position = {
								-- 			x = coords.x,
								-- 			y = coords.y,
								-- 			z = coords.z
								-- 		},
								-- 		job = "police"
								-- 	}
								-- 	TriggerServerEvent("dispatch:svNotify", drugsellll)
							end
		else
			SetEntityAsMissionEntity(oldped)
			ClearPedTasks(oldped)
			FreezeEntityPosition(oldped, false)
			exports['ox_lib']:notify({
				position = 'top',
				title = _U("toofar"),
				icon = "fa-solid fa-pills",
				type = 'error'
			}) 
			end
		end
	end 
	end
	end 
	else
	exports['ox_lib']:notify({
	position = 'top',
	title = _U("sameguy"),
	icon = "fa-solid fa-pills",
	type = 'error'
	}) 
	end
else
	exports['ox_lib']:notify({
		position = 'top',
		title = _U("nopolice"),
		icon = "fa-solid fa-pills",
		type = 'error'
	}) 
end
end)

RegisterNetEvent('veeqsprzedawanie:sellkoka')
AddEventHandler('veeqsprzedawanie:sellkoka', function(data)
	local playerPed = PlayerPedId()
	local npcPed = data.entity -- NPC, którego obracamy w stronę gracza

	-- Pobierz pozycję gracza
	local playerCoords = GetEntityCoords(playerPed)
	if Config.NumberOfCops > 0 then
		TriggerServerEvent('checkC')
	end
	
if numberofcops >= Config.NumberOfCops then
		if npcPed ~= oldped then
			oldped = npcPed
			if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
				if DoesEntityExist(npcPed)then
					if IsPedDeadOrDying(npcPed) == false then
						if IsPedInAnyVehicle(npcPed) == false then
		-- Obróć NPC w stronę gracza
		TaskTurnPedToFaceCoord(npcPed, playerCoords.x, playerCoords.y, playerCoords.z)
		loadAnimDict(Dictspokojnie)
		TaskPlayAnim(playerPed, Dictspokojnie, Animspokojnie, 8.0, -8.0, -1, 0, 0, false, false, false)
		Citizen.Wait(2000)
		
		FreezeEntityPosition(npcPed, true)
		loadAnimDict(Dictzastanowienie)
		TaskPlayAnim(npcPed, Dictzastanowienie, Animzastanowienie, 8.0, -8.0, -1, modezastanowienie, 0, false, false, false)
		exports['an_progBar']:run(Config.SellingTime,_U("negotiateprice"),'#E14127')
		Citizen.Wait(Config.SellingTime*1000)
		local playerCoords = GetEntityCoords(playerPed)
		local npcCoords = GetEntityCoords(npcPed)
						local distance = Vdist(playerCoords.x, playerCoords.y, playerCoords.z, npcCoords.x, npcCoords.y, npcCoords.z)
						if distance < 4.0 then
							local chance = math.random(1, 100)
							if chance <= Config.CokeChance then
									loadAnimDict(Dictsuper)
									TaskPlayAnim(playerPed, Dictsuper, Animsuper, 8.0, -8.0, -1, 0, 0, false, false, false)
									loadAnimDict('mp_common')
									TaskPlayAnim(npcPed, "mp_common", "givetake1_a", 8.0, 8.0, 2000, 50, 0, false, false, false)
									TaskPlayAnim(playerPed, "mp_common", "givetake1_a", 8.0, 8.0, 2000, 50, 0, false, false, false)

									Citizen.Wait(1000)
									SetEntityAsMissionEntity(oldped)
									SetPedAsNoLongerNeeded(oldped)
									FreezeEntityPosition(oldped, false)
									ClearPedTasks(oldped)
									TriggerServerEvent("veeq_drugselling:sellkoka")
							else
								SetEntityAsMissionEntity(oldped)
								SetPedAsNoLongerNeeded(oldped)
								FreezeEntityPosition(oldped, false)
								ClearPedTasks(oldped)
								exports['ox_lib']:notify({
									position = 'top',
									title = _U("cancel"),
									icon = "fa-solid fa-prescription-bottle",
									type = 'error'
								}) 
								loadAnimDict(Dictniechto)
								TaskPlayAnim(PlayerPedId(), Dictniechto, Animniechto, 8.0, -8.0, -1, 0, 0, false, false, false)
								-- local coords = GetEntityCoords(GetPlayerPed(-1))
								-- 	local drugsellll = {
								-- 		code = "10-95",
								-- 		street = exports['esx_dispatch']:GetStreetAndZone(),
								-- 		id = exports['esx_dispatch']:randomId(),
								-- 		priority = 1,
								-- 		title = _U("notifypolice"),
								-- 		duration = 10000,
								-- 		blipname = _U("notifypolice"),
								-- 		color = 1,
								-- 		sprite = 140,
								-- 		fadeOut = 30,
								-- 		position = {
								-- 			x = coords.x,
								-- 			y = coords.y,
								-- 			z = coords.z
								-- 		},
								-- 		job = "police"
								-- 	}
								-- 	TriggerServerEvent("dispatch:svNotify", drugsellll)
							end
						else
							SetEntityAsMissionEntity(oldped)
							ClearPedTasks(oldped)
							FreezeEntityPosition(oldped, false)
							exports['ox_lib']:notify({
								position = 'top',
								title = _U("toofar"),
								icon = "fa-solid fa-prescription-bottle",
								type = 'error'
							}) 
						end
					end
				end 
			end
		end 
	else
		exports['ox_lib']:notify({
			position = 'top',
			title = _U("sameguy"),
			icon = "fa-solid fa-prescription-bottle",
			type = 'error'
		}) 
	end
else
	exports['ox_lib']:notify({
		position = 'top',
		title = _U("nopolice"),
		icon = "fa-solid fa-prescription-bottle",
		type = 'error'
	}) 
end
end)

RegisterNetEvent('checkC')
AddEventHandler('checkC', function(cops)
  numberofcops = cops
end)

