local QBCore = exports['qb-core']:GetCoreObject()
local ActivePolice = 0  		--<< needed policemen to activate the mission
local cashA = 3500				--<<how much minimum you can get from a robbery
local cashB = math.random(150,1200)			--<< how much maximum you can get from a robbery
local ActivationCost = math.random(150,1200)		--<< how much is the activation of the mission (clean from the bank)
local ResetTimer = 2700 * 1000  --<< timer every how many missions you can do, default is 600 seconds
local ActiveMission = 0
local copsOnDuty = 0

RegisterServerEvent('AttackTransport:akceptujto', function()
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	local accountMoney = xPlayer.PlayerData.money["bank"]
	if ActiveMission == 0 then
		if accountMoney < ActivationCost then
		TriggerClientEvent('QBCore:Notify', _source, "You need $"..ActivationCost.." in the bank to accept the mission")
		else
			for _, v in pairs(QBCore.Functions.GetPlayers()) do
				local Player = QBCore.Functions.GetPlayer(v)
				if Player ~= nil then
					if (Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty) then
						copsOnDuty = copsOnDuty + 1
					end
				end
			end
      if copsOnDuty >= ActivePolice then
				TriggerClientEvent("AttackTransport:Pozwolwykonac", _source)
				xPlayer.Functions.RemoveMoney('bank', ActivationCost, "armored-truck")

				OdpalTimer()
			else
				TriggerClientEvent('QBCore:Notify', _source, 'Need at least '..ActivePolice.. ' active police to activate the mission.')
			end
-- AI Police impl
-- 			if copsOnDuty >= 1 and copsOnDuty < 3 then
-- 				TriggerClientEvent('QBCore:Notify', _source, 'Need no active police or at least 3 to start.')
-- 			elseif copsOnDuty >= ActivePolice then
-- 				TriggerClientEvent("AttackTransport:Pozwolwykonac", _source)
-- 				xPlayer.Functions.RemoveMoney('bank', ActivationCost, "armored-truck")

-- 				OdpalTimer()
-- 			else
-- 				TriggerClientEvent('QBCore:Notify', _source, 'Need at least '..ActivePolice.. ' active police to activate the mission.')
-- 			end
		end
	else
		TriggerClientEvent('QBCore:Notify', _source, 'Someone is already carrying out this mission')
	end
end)


RegisterServerEvent('qb-armoredtruckheist:server:callCops', function(streetLabel, coords)
-- AI police impl
-- 	TriggerClientEvent('phade-aipolice:client:ApplyWantedLevel', source, 3)
    -- Shitty qb-policejob implementation
    TriggerClientEvent("qb-armoredtruckheist:client:robberyCall", -1, streetLabel, coords)
end)

function OdpalTimer()
	ActiveMission = 1
	Wait(ResetTimer)
	ActiveMission = 0
	TriggerClientEvent('AttackTransport:CleanUp', -1)
end

RegisterServerEvent('AttackTransport:zawiadompsy', function(x ,y, z)
	if copsOnDuty > 0 then
		TriggerClientEvent('AttackTransport:InfoForLspd', -1, x, y, z)
	end
end)

RegisterServerEvent('AttackTransport:graczZrobilnapad', function()
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	xPlayer.Functions.AddItem('black_money', math.random(cashA, cashB))

	if chance >= 95 then
		xPlayer.Functions.AddItem('security_card_01', 1)
		TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items['security_card_01'], "add")
	end
	Wait(2500)
end)