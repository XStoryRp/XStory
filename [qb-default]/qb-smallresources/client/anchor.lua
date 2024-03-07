local QBCore = exports['qb-core']:GetCoreObject()

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(5)
    end
end

RegisterNetEvent("qb-smallresources:ToggleAnchor", function()
    if IsPedInAnyBoat(PlayerPedId()) then
        if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
            if not isCrafting then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                local vehPlate = QBCore.Functions.GetPlate(veh)
                local hasKeys = exports['tsp_vehiclekeys']:HasKeys(vehPlate)
                --  exports['tsp_vehiclekeys']:GiveTempKeys(vehPlate) 
                local isCrafting = false
                local displayTime = 3000
                if hasKeys then
                    isAnchoredAndFrozen = IsBoatAnchoredAndFrozen(veh)
                    if isAnchoredAndFrozen then
                        isCrafting = true
                        loadAnimDict( "amb@world_human_clipboard@male@idle_a" ) 
                        TaskPlayAnim( PlayerPedId(), "amb@world_human_clipboard@male@idle_a", "idle_c", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
                        QBCore.Functions.Progressbar("reful_boat", "Raising Anchor", 5000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, {}, function() -- Done
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            SetBoatFrozenWhenAnchored(veh, false)
                            SetBoatAnchor(veh, false)
                            QBCore.Functions.Notify('You raise the anchor and are now able to navigate the boat.', 'success', displayTime)
                        end, function() -- Cancel
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            QBCore.Functions.Notify('Anchor toggling has been cancelled!', 'primary', displayTime)
                        end)
                    else
                        isCrafting = true
                        loadAnimDict( "amb@world_human_clipboard@male@idle_a" ) 
                        TaskPlayAnim( PlayerPedId(), "amb@world_human_clipboard@male@idle_a", "idle_c", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
                        QBCore.Functions.Progressbar("reful_boat", "Dropping Anchor", 5000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, {}, function() -- Done
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            SetBoatFrozenWhenAnchored(veh, true)
                            SetBoatAnchor(veh, true)
                            QBCore.Functions.Notify('You drop the anchor and the boat comes to a halt.', 'success', displayTime)
                        end, function() -- Cancel
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            QBCore.Functions.Notify('Anchor toggling has been cancelled!', 'primary', displayTime)
                        end)
                    end
                else
                    QBCore.Functions.Notify('You are not the owner of this boat!', 'error', displayTime)
                end
            end
        end
    end
end)
