QBCore = exports['qb-core']:GetCoreObject()

_ShowNotification = function(msg)
    -- lib.notify({
        -- title = msg,
    -- })
    QBCore.Functions.Notify(msg, 'primary', 3500)
end

_ShowHelpNotification = function(msg)
    lib.showTextUI(msg)
end

_GetClosestVehicle = function(location)
    return QBCore.Functions.GetClosestVehicle(location)
end

_GetPlayerJobName = function()
    return QBCore.Functions.GetPlayerData().job.name
end