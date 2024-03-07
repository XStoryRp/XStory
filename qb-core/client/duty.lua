local QBCore = exports['qb-core']:GetCoreObject()

function LoadPlayerModel(skin)
    RequestModel(skin)
    while not HasModelLoaded(skin) do
        Citizen.Wait(0)
    end
end

local function ResetPed()

    local model = nil

    local gender = QBCore.Functions.GetPlayerData().charinfo.gender

    if gender == 1 then -- Gender is ONE for FEMALE
    model = GetHashKey("mp_f_freemode_01") -- Female Model
    else
    model = GetHashKey("mp_m_freemode_01") -- Male Model
    end

    LoadPlayerModel(model)

    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    Citizen.Wait(1000) -- Safety Delay

    TriggerServerEvent("qb-clothes:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
    TriggerServerEvent("qb-clothing:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES - Event 2

    SetPedMaxHealth(PlayerId(),  GetEntityMaxHealth(PlayerPedId()))
    Citizen.Wait(1000) -- Safety Delay
    SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
end

RegisterNetEvent('mxd-pedaddon:changeped', function()
    LoadPlayerModel(Config.Ped)
    SetPlayerModel(PlayerId(), Config.Ped)
    QBCore.Functions.Notify('Admin at Work', "success")
end)

RegisterNetEvent('mxd-pedaddon:resetped', function()
    ResetPed()
end)
