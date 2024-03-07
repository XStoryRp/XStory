local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('KickForAFK', function()
	DropPlayer(source, Lang:t('afk.kick_message'))
    -- TriggerEvent('qb-log:server:CreateLog', 'afkkick', 'Player KickForAFK', 'red', ''..source..' was kicked for 20 minits AFK')
end)

QBCore.Functions.CreateCallback('qb-afkkick:server:GetPermissions', function(source, cb)
    cb(QBCore.Functions.GetPermission(source))
end)