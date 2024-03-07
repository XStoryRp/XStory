local QBCore = exports['qb-core']:GetCoreObject()
local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(1)
    end
end

CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.General.TrashBinModels, {
        options = {
            {
                event = 'qb-trashsearch:server:searchTrash',
                type = 'server',
                icon = "fas fa-dumpster",
                label = Lang:t('info.search'),
            },
        },
        distance = Config.General.SearchDistance,
    })
end)

RegisterNetEvent('qb-trashsearch:client:searchTrash', function(binId)
    -- QBCore.Functions.Progressbar('qb-trashsearch:searchingTrash', Lang:t("progressbar.searching"), Config.General.DurationOfSearch, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        -- disableMovement = true,
        -- disableCarMovement = true,
        -- disableMouse = false,
        -- disableCombat = true,
    -- }, {
        -- animDict = Config.Animations.AnimationDictionary,
        -- anim = Config.Animations.Animation,
        -- flags = 16,
    -- }, {}, {}, function() -- Play When Done
        loadAnimDict("amb@prop_human_bum_bin@base")
        TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base", "base", 8.0, 1.0, -1, 20, 2, 0, 0, 0)
        -- TaskPlayAnim(PlayerPedId(),Config.Animations.AnimationDictionary,Config.Animations.Animation,2)
        -- Clear ped task
        ClearPedTasks(PlayerPedId())

        TriggerServerEvent('qb-trashsearch:server:searchedTrash', binId)

        -- Add stress
        if Config.Stress.AddStress then
            TriggerServerEvent('hud:server:GainStress', math.random(Config.Stress.MinStress, Config.Stress.MaxStress))
        end
    -- end, function() -- Play When Cancel
        -- Clear ped task
        ClearPedTasks(PlayerPedId())
    -- end)
end)

-- Haide Trash

Main = {}
local inside = false

CreateThread(function()
    Main:Int()
end)

function Main:Int()
    exports['qb-target']:AddTargetModel(Config.TrashCans.Model, {
        options = {
            {
                event = 'bbv:hideintrash:enter',
                type = 'client',
                icon = "fa-solid fa-trash-can",
                label = "Hide inside",
            },
        },
        distance = Config.TrashCans.Distance,
    })
    if inside == true then
        exports['qb-target']:AddTargetModel(Config.TrashCans.Model,{
        options = {
            {
            event = 'bbv:hideintrash:exit',
            type = 'client',
            icon = "fa-solid fa-trash-can",
            label = "Exit",
        },
        distance = Config.TrashCans.Distance
       },
    })
    end
end

RegisterNetEvent('bbv:hideintrash:enter',function()
    Main:Enter()
end)

RegisterNetEvent('bbv:hideintrash:exit',function()
    Main:Exit()
end)

function Main:Enter()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(PlayerPedId())
    for k,v in pairs(Config.TrashCans.Model) do
        local objectId = GetClosestObjectOfType(pedCoords, 1.0, Config.TrashCans.Model[k], false)
        if DoesEntityExist(objectId) then
            inside = true
            local objectcoords = GetEntityCoords(objectId)
            oldcoords = GetEntityCoords(ped)
            SetEntityCoords(ped, objectcoords.x, objectcoords.y, objectcoords.z, 0.0, 0.0, 0.0)
            FreezeEntityPosition(ped, true)
            SetEntityVisible(ped, false)
            return
        end
    end
end

function Main:Exit()
    local ped = PlayerPedId()
    if not inside then 
        self:Notify("You are not inside")
        return
    end
    inside = false
    SetEntityCoords(ped,oldcoords.x,oldcoords.y,oldcoords.z - 1)
    FreezeEntityPosition(ped, false)
    SetEntityVisible(ped, true)
end


function Main:Notify(msg)
    local message = msg
    if message == nil then 
        return 
    end

    local Notif = {
        text = message,
        color = color or 130,
        flash = flash or false,
        save = saveToBrief or true 
    }

    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(Notif.text)
    ThefeedSetNextPostBackgroundColor(Notif.color)
    EndTextCommandThefeedPostTicker(Notif.flash, Notif.save)
end