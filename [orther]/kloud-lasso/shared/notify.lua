
Notify = function (msg, type)
    if KloudDev.Notify == "ox" then
        if not Started('ox_lib') then print("You need ox_lib running for the notifications to work") return end
        if type == "error" then
            lib.notify({
                description = msg,
                icon = 'ban',
                iconColor = '#C53030',
                position = KloudDev.NotifyPos or "top-right"
            })
        elseif type == "success" then
            lib.notify({
                description = msg,
                icon = 'check',
                iconColor = '#30c56a',
                position = KloudDev.NotifyPos or "top-right"
            })
        end
    elseif KloudDev.Notify == "qb" then
        TriggerEvent('QBCore:Notify', msg, type)
    elseif KloudDev.Notify == "esx" then
        TriggerEvent('esx:showNotification', msg, type)
    end
end

SVNotify = function (target, msg, type)
    if KloudDev.Notify == "ox" then
        if type == "error" then
            TriggerClientEvent('ox_lib:notify', target, {
                description = msg,
                icon = 'ban',
                iconColor = '#C53030',
                position = KloudDev.NotifyPos or "top-right"
            })
        elseif type == "success" then
            TriggerClientEvent('ox_lib:notify', target, {
                description = msg,
                icon = 'check',
                iconColor = '#30c56a',
                position = KloudDev.NotifyPos or "top-right"
            })
        end
    elseif KloudDev.Notify == "qb" then
        TriggerClientEvent('QBCore:Notify', target, msg, type)
    elseif KloudDev.Notify == "esx" then
        TriggerClientEvent('esx:showNotification', target, msg, type)
    end
end