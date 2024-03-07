local QBCore = exports['qb-core']:GetCoreObject()

local shower = false

CreateThread(function()
    for i, v in pairs(Config.Locations) do
        local coords = Config.Locations[i].coords
        local spherename = Config.Locations[i].name
        if Config.Framework == 'QB' then
            exports['qb-target']:AddCircleZone(spherename, vector3(coords.x, coords.y, coords.z), 0.6, {
                name = spherename,
                useZ = true,
                }, {
                    options = {
                        {
                            type = "client",
                            event = 'serrulata-shower:client:takeShower',
                            icon = 'fas fa-shower',
                            label = 'Take Shower',
                            canInteract = function(entity, distance, coords, name)
                                if shower == false and distance < 1 then
                                    return true
                                else
                                    return false
                                end
                            end
                        },
                    },
                distance = 1.0
            })
        elseif Config.Framework == 'OX' then
            local coords = Config.Locations[i].coords
            local radius = Config.Locations[i].radius
            exports.ox_target:addSphereZone({ -- Enter
            coords = vector3(coords.x, coords.y, coords.z),
            radius = radius,
            options = {
                {
                    name = 'sphere',
                    icon = 'fas fa-shower',
                    label = 'Take Shower',
                    onSelect = function()
                        TriggerEvent('serrulata-shower:client:takeShower')
                    end,
                    canInteract = function(entity, distance, coords, name)
                        if shower == false and distance < 1 then
                            return true
                        else
                            return false
                        end
                    end
                },
            }
            })
        end
    end
end)
RegisterNetEvent('serrulata-shower:client:takeShower', function()
    local PlayerPed = plyPed
    if GetEntityModel(plyPed) == -1667301416 then
        sex = 'female'
    else
        sex = 'male'
    end
    if sex == 'male' then
        if shower == false then
            shower = true
            FreezeEntityPosition((PlayerPedId()), true)
            local coords = GetEntityCoords(PlayerPedId())
            maleProgressBar()
            while shower == true do
                if not HasNamedPtfxAssetLoaded("core") then
                    RequestNamedPtfxAsset("core")
                    while not HasNamedPtfxAssetLoaded("core") do
                        Wait(1)
                    end
                end
                UseParticleFxAssetNextCall("core") 
                particles  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) 
                UseParticleFxAssetNextCall("core") 
                Wait(5000)
            end
        end
    elseif sex == 'female' then
        if shower == false then
            shower = true
            FreezeEntityPosition((PlayerPedId()), true)
            local coords = GetEntityCoords(PlayerPedId())
            femaleProgressBar()
            while shower == true do
                if not HasNamedPtfxAssetLoaded("core") then
                    RequestNamedPtfxAsset("core")
                    while not HasNamedPtfxAssetLoaded("core") do
                        Wait(1)
                    end
                end
                UseParticleFxAssetNextCall("core") 
                particles  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) 
                UseParticleFxAssetNextCall("core") 
                Wait(5000)
            end
        end
    end
end)

function maleProgressBar()
    if shower == true then
        QBCore.Functions.Progressbar("shower", "Taking a shower", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@mp_yacht@shower@male@",
            anim = "male_shower_enter_into_idle",
            flags = 20,
        }, {}, {}, function() -- Done
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            TriggerServerEvent('hud:server:RelieveStress', math.random(10,30))
            shower = false
        end, function() -- Cancel
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            shower = false
        end)
    end
end
function femaleProgressBar()
    if shower == true then
        QBCore.Functions.Progressbar("shower", "Taking a shower", 9000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@mp_yacht@shower@female@",
            anim = "shower_enter_into_idle",
            flags = 16,
        }, {}, {}, function() -- Done
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            TriggerServerEvent('hud:server:RelieveStress', 25)
            shower = false
        end, function() -- Cancel
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            shower = false
        end)
    end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('onResourceStart', function(resource)
   if resource == GetCurrentResourceName() then
    --   print('Serrulata-Shower started')
   end
end)
AddEventHandler('onResourceStop', function(resource)
   if resource == GetCurrentResourceName() then
      if Config.Framework == 'QB' then
        exports['qb-target']:RemoveZone("sphere1")
        -- print('Serrulata-Shower stopped')
      elseif Config.Framework == 'OX' then
        -- print('Serrulata-Shower stopped')
      end
   end
end)
