local Core = exports['qb-core']:GetCoreObject()

local cops = 0

robbed = {}
Config = {}

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(100)
    end
end

local function callCops(entity)
    local chance = 75
    if GetClockHours() >= 1 and GetClockHours() <= 6 then
        chance = 25
    end
    if math.random(1, 100) <= chance then
        SetTimeout(math.random(0, 15000), function()
            exports["ps-dispatch"]:CustomAlert({
                coords = vector3(0.0, 0.0, 0.0),
                dispatchCode = "10-35",
                description = "Rob citizen",
                radius = 0,
                priority = 1,
                recipientList = {"police"},
                blipflash = true,
                sound = "robberysound",
                message = Config.citizenRobbery["language"]["robbingCitizen"],
                gender = true,
                blipSprite = 58, 
                blipColour = 75, 
                blipScale = 1.5, 
                blipLength = 2
            })
            -- TriggerServerEvent('police:server:policeAlert', Config.citizenRobbery["language"]["robbingCitizen"])
        end)
    end
end

local function robCitizen(entity)
    callCops()
    robbed[entity] = true
    if math.random(0, 100) > Config.citizenRobbery["attackChance"] then
        TriggerServerEvent('hud:server:GainStress', math.random(5, 15))
        ClearPedTasks(entity)
        PlayPain(entity, 5, 0.0, true)
        TaskStandStill(entity, Config.citizenRobbery["searchingTime"])
        FreezeEntityPosition(entity, true)
        loadAnimDict("random@mugging3")
        TaskPlayAnim(entity, "random@mugging3", "handsup_standing_base", 8.0, -8, .01, 49, 0, 0, 0, 0)
        Core.Functions.Progressbar("robbing_citizen", Config.citizenRobbery["language"]["searching"], Config.citizenRobbery["searchingTime"], false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@gangops@facility@servers@bodysearch@",
            anim = "player_search",
            flags = 16,
        }, {}, {}, function()
            ClearPedTasks(PlayerPedId())
            FreezeEntityPosition(entity, false)
            TriggerServerEvent('0-npc:searchCitizen', entity, Config)
            ClearPedTasks(entity)
            TaskReactAndFleePed(entity, PlayerPedId())
        end, function()
            ClearPedTasks(PlayerPedId())
            ClearPedTasks(entity)
            FreezeEntityPosition(entity, false)
            TaskReactAndFleePed(entity, PlayerPedId())
        end)
    else
        TriggerServerEvent('hud:server:GainStress', math.random(10, 20))
        TaskCombatPed(entity, PlayerPedId(), 0, 16)
        GiveWeaponToPed(entity, GetHashKey(Config.citizenRobbery["attackGun"]), 5, false, true)
    end
end

RegisterNetEvent('police:SetCopCount', function(amount)
    cops = amount
end)

CreateThread(function()
    Core.Functions.TriggerCallback('0-npc:getConfig', function(data)
        Config = data
        exports['qb-target']:AddGlobalPed({
            options = {
                {
                    label = Config.citizenRobbery["language"]["robCitizen"],
                    icon = Config.citizenRobbery["targetIcon"],
                    action = function(entity)
                        robCitizen(entity)
                    end,
                    canInteract = function(entity, distance, data) 
                        return not IsPedDeadOrDying(entity, true) and IsPedArmed(PlayerPedId(), 1 | 4) and not IsPedAPlayer(entity) and GetPedType(entity) ~= PED_TYPE_ANIMAL and not robbed[entity] and cops >= Config.citizenRobbery["policeAmount"]
                    end, 
                },
            },
            distance = Config.citizenRobbery["targetDistance"],
        })
    end)
end)
