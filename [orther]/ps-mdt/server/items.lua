QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("mdt" , function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local job = Player.PlayerData.job
    local vehicle = GetVehicleClass(18)
    if isAllowedMDT(job.name) then
        if PlayerData.job.name == "police" or PlayerData.job.type == "leo" or PlayerData.job.type == "ems" then
        -- if job.name == Config.Job['DOJ'] or job.name == Config.Job['StatePolice'] or job.name == Config.Job['Police'] or job.name == Config.Job['Sheriff'] or job.name == Config.Job['Corrections'] or job.name == Config.Job['FederalBureau'] or job.name == Config.Job['AffairsAgency'] or job.name == Config.Job['Military'] then
            if not Player.PlayerData.metadata["isdead"] and not Player.PlayerData.metadata["inlaststand"] and not Player.PlayerData.metadata["ishandcuffed"]  then
                if vehicle then
                TriggerClientEvent("job:client:mdt", source)
                if not vehicle then
                    return
                end
            end
        end
        end
        -- end
    end
end)


QBCore.Functions.CreateUseableItem("panicbutton" , function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	local job = Player.PlayerData.job
    local PlayerData = QBCore.Functions.GetPlayerData()
    if isAllowedPanic(job.name) then
        if PlayerData.job.name == "police" or PlayerData.job.type == "leo" then
            if not PlayerData.metadata["isdead"] and not PlayerData.metadata["inlaststand"] and not PlayerData.metadata["ishandcuffed"] and not IsPauseMenuActive() then
            TriggerClientEvent("ps-dispatch:client:officerdown", source)
        elseif PlayerData.job.name == "ambulance" or PlayerData.job.type == "ems" then
            TriggerClientEvent("ps-dispatch:client:emsdown", source)
        end
    end
end
end)



--====================================================================================
------------------------------------------
--                Functions             --
------------------------------------------
--====================================================================================\

function RefreshGUI()
    local PlayerData = QBCore.Functions.GetPlayerData()
    SetNuiFocus(false, false)
    SendNUIMessage({ type = "show", enable = false, job = PlayerData.job.name, rosterLink = Config.RosterLink[PlayerData.job.name], sopLink = Config.sopLink[PlayerData.job.name] })
    isOpen = false
end


function isAllowedPanic(job)
    for k, v in pairs(Config.AllowedPanic) do
        if job == v then
            return true
        end
    end
    return false
end

function isAllowedMDT(job)
    for k, v in pairs(Config.AllowedMDT) do
        if job == v then
            return true
        end
    end
    return false
end

function isCarPoliceMDT(vehicle)
    for k, v in pairs(GetVehicleClassFromName(18)) do
        if vehicle == v then
            return true
        end
    end
    return false
end
