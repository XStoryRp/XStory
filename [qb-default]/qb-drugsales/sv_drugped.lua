local QBCore = exports[Config.Core]:GetCoreObject()

RegisterNetEvent('veeq_drugselling:sellmarycha', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local ilemarychyweq = xPlayer.getInventoryItem("bagofdope").count
    local x
    if ilemarychyweq == 1 then
        x = 1
    elseif ilemarychyweq == 2 then
        x = math.random(1,2)
    elseif ilemarychyweq == 3 then
        x = math.random(1,3)
    elseif ilemarychyweq == 4 then
        x = math.random(1,4)
    elseif ilemarychyweq >= 5 then
        x = math.random(1,5)
    end

    local cenamarychy = math.random(Config.WeedPriceMin, Config.WeedPriceMax) * x

    xPlayer.removeInventoryItem('bagofdope', x)
    xPlayer.addInventoryItem('black_money', cenamarychy)

    TriggerClientEvent('ox_lib:notify', source, {
        title = _U("yousold") .. x .. "g " .. _U("for") .. cenamarychy .. _U("currency"),
        position = "top",
        type = "success",
        icon = "fa-solid fa-cannabis",
    })
end)

RegisterNetEvent('veeq_drugselling:sellmeta', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local ilemetyweq = xPlayer.getInventoryItem("meth").count
    local x
    if ilemetyweq == 1 then
        x = 1
    elseif ilemetyweq == 2 then
        x = math.random(1,2)
    elseif ilemetyweq == 3 then
        x = math.random(1,3)
    elseif ilemetyweq == 4 then
        x = math.random(1,4)
    elseif ilemetyweq >= 5 then
        x = math.random(1,5)
    end

    local cenamety = math.random(Config.MethPriceMin, Config.MethPriceMax) * x

    xPlayer.removeInventoryItem('meth', x)
    xPlayer.addInventoryItem('black_money', cenamety)

    TriggerClientEvent('ox_lib:notify', source, {
        title = _U("yousold") .. x .. "g " .. _U("for") .. cenamety .. _U("currency"),
        position = "top",
        type = "success",
        icon = "fa-solid fa-pills",
    })
end)


RegisterNetEvent('veeq_drugselling:sellkoka', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local ilekokiyweq = xPlayer.getInventoryItem("coke_pooch").count
    local x
    if ilekokiyweq == 1 then
        x = 1
    elseif ilekokiyweq == 2 then
        x = math.random(1,2)
    elseif ilekokiyweq == 3 then
        x = math.random(1,3)
    elseif ilekokiyweq == 4 then
        x = math.random(1,4)
    elseif ilekokiyweq >= 5 then
        x = math.random(1,5)
    end

    local cenakoki = math.random(Config.CokePriceMin, Config.CokePriceMax) * x

    xPlayer.removeInventoryItem('coke_pooch', x)
    xPlayer.addInventoryItem('black_money', cenakoki)

    TriggerClientEvent('ox_lib:notify', source, {
        title = _U("yousold") .. x .. "g " .. _U("for") .. cenakoki .. _U("currency"),
        position = "top",
        type = "success",
        icon = "fa-solid fa-pills",
    })
end)

RegisterNetEvent('checkC')
AddEventHandler('checkC', function()
	local xPlayers = QBCore.Functions.GetPlayers()
	local cops = 0
	for i=1, #xPlayers, 1 do
 	local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
 	if xPlayer.job.name == 'police' then
			cops = cops + 1
		end
	end
	TriggerClientEvent("checkC", source, cops)
end)