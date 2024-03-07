local QBCore = exports['qb-core']:GetCoreObject()
local isCinematicModeEnabled = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = PlayerPedId()

        if IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if not isCinematicModeEnabled then
                DisableControlAction(0, 80, true) -- R-Key (Keycode: 80)
            end
        else
            isCinematicModeEnabled = false
        end
    end
end)

-- RegisterCommand("c", function(source, args, rawCommand)
--     TriggerEvent('chat:addSuggestion', '/cinematic', 'on/off - Enable Cinematic Mode in Vehicle', {})
--     if args[1] == "on" then
--         isCinematicModeEnabled = true
--     elseif args[1] == "off" then
--         isCinematicModeEnabled = false
--     end

--     if isCinematicModeEnabled then
--         QBCore.Functions.Notify("Cinematic Mode activated.", "success")
--     else
--         QBCore.Functions.Notify("Cinematic Mode deactivated.", "error")
--     end
-- end, false)