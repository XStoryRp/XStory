KloudDev = {}

KloudDev.Debug = false

KloudDev.DrawSprite = false -- ox_target indicator
KloudDev.DrawText = "qb" -- "qb","ox"
KloudDev.Menu = "qb" -- "qb","ox"
KloudDev.Notify = "qb" -- "qb","esx","ox"
KloudDev.NotifyPos = "right" -- For ox_lib // 'top', 'top-right', 'top-left', 'bottom', 'bottom-right', 'bottom-left', 'center-right', 'center-left' // For QB change qb-core/config.lua
KloudDev.Progress = "bar" -- "bar","circle"
KloudDev.ProgressCirclePos = "bottom" -- "middle", "bottom"
KloudDev.DrawTextAlignment = "left" -- "top","right","left"
KloudDev.DrawMarkers = false -- Draw Marker for Zones

KloudDev.GetVehicleKeyEvent = function(veh, plate)
    SetVehicleDoorsLocked(veh, 3)
    TriggerServerEvent("qb-vehiclekeys:server:AcquireVehicleKeys", plate)
    TriggerEvent('mh-vehiclekeyitem:client:CreateTempKey', veh)
    -- exports['tsp_vehiclekeys']:GiveTempKeys(plate)
end

KloudDev.SetVehicleFuel = function(veh)
    -- Entity(veh).state.fuel = 100 -- for ox_fuel
    exports["fuel"]:SetFuel(veh, 100.0)
end

KloudDev.Carcass = {
    {
        Label = "Deer", -- This will appear on the menu
        Model = "a_c_deer", -- This will be the ped model that'll spawn on the machine
        Icon = "fas fa-drumstick-bite", -- Icon for menu
        Item = {
            Metadata = true, -- If true will use metadata instead
            Name = "deer_carcass", -- Item needed
            Output = "boxed_meat", -- Item output
            Amount = {
                Min = 2, -- Randomized Item output
                Max = 5
            }
        }
    },
    {
        Label = "Pig", -- This will appear on the menu
        Model = "a_c_pig", -- This will be the ped model that'll spawn on the machine
        Icon = "fas fa-drumstick-bite", -- Icon for menu
        Item = {
            Metadata = true, -- If true will use metadata instead
            Name = "pig_carcass", -- Item needed
            Output = "boxed_meat", -- Item output
            Amount = {
                Min = 2, -- Randomized Item output
                Max = 5
            }
        }
    }
}

KloudDev.Blip = {
    Name = "Cows",
    Sprite = 411,
    Scale = 1.2,
    Colour = 5,
    Flashes = false
}