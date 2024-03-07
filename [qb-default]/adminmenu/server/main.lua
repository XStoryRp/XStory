QBCore = exports['qb-core']:GetCoreObject()

-- lib.addCommand('admin', {
--     help = 'Open the admin menu',
--     restricted = 'qbcore.mod'
-- }, function(source)
--     TriggerClientEvent('ps-adminmenu:client:OpenUI', source)
-- end)

QBCore.Commands.Add('admin', 'Admin Menu (Only Admin)', {}, true, function(source)
        TriggerClientEvent('ps-adminmenu:client:OpenUI', source)
end, 'god')

QBCore.Commands.Add('report', 'Report a player', {{name = 'playerID', help = 'playerID'}, { name = 'reason', help = 'reason' } }, false, function(source, args)
        local src = source
        local playerId = tonumber(args[1])
        table.remove(args, 1)
        local msg = table.concat(args, ' ')
        local OtherPlayer = QBCore.Functions.GetPlayer(playerId)
        if msg == '' then return TriggerClientEvent('QBCore:Notify', src, 'Message not be empty!', 'error') end
        if not OtherPlayer then return TriggerClientEvent('QBCore:Notify', src, 'Player is not online', 'error') end
        local Player = QBCore.Functions.GetPlayer(source)
        TriggerClientEvent('qb-admin:client:SendReport', -1, GetPlayerName(src), src, GetPlayerName(OtherPlayer), OtherPlayer, msg)
        TriggerEvent('qb-log:server:CreateLog', 'fivemerrors', 'New Admin Report', 'newred', '' .. GetPlayerName(source) .. ' {' .. Player.PlayerData.citizenid .. ', ' .. source .. '} created new report for  {' ..OtherPlayer.PlayerData.citizenid ..'} reason '.. msg ..' ')
end)

-- RegisterNetEvents
RegisterNetEvent('qb-admin:server:SendReport', function(name, targetName, targetSrc, msg)
        local src = source
        if QBCore.Functions.HasPermission(src, 'mod') or IsPlayerAceAllowed(src, 'command') then
            if QBCore.Functions.IsOptin(src) then
                TriggerClientEvent('chat:addMessage', src, {
                    color = { 255, 0, 0 },
                    multiline = true,
                    args = { locale("admin_report") ' - ' .. name .. ' ['..targetSrc..'] Reported '.. targetName..' for '.. msg}
                })
            end
        end
end)

-- Callbacks
