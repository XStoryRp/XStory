local lockpickCallback = nil
local tsp_ui = exports.tsp_ui
AddEventHandler('qb-lockpick:client:openLockpick', function(callback)
    lockpickCallback = callback
    openLockpick(true)
end)

RegisterNUICallback('callback', function(data, cb)
    openLockpick(false)
    if lockpickCallback then
        lockpickCallback(data.success)
    end
    cb('ok')
end)

RegisterNUICallback('exit', function(_, cb)
    openLockpick(false)
    cb('ok')
end)

openLockpick = function(bool)
    -- SetNuiFocus(bool, bool)
    -- SendNUIMessage({
    --     action = "ui",
    --     toggle = bool,
    -- })
    -- SetCursorLocation(0.5, 0.2)
    -- lockpicking = bool
    bool = tsp_ui:Progress(3, 55)
    lockpicking = bool
end