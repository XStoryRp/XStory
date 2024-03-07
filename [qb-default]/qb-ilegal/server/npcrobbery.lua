local Core = exports['qb-core']:GetCoreObject()

Config = {}

Config.citizenRobbery = {
    ["attackChance"] = 60,
    ["attackGun"] = "weapon_pistol",
    ["searchingTime"] = math.random(3050, 4000),
    ["targetDistance"] = 1.7,
    ["targetIcon"] = "fas solid fa-gun",
    ["policeAmount"] = 0,
    ["language"] = {
        ["robCitizen"] = "Rob citizen",
        ["searching"] = "Searching pockets",
        ["robbingCitizen"] = "Citizen is being robbed",
    },
    ["money"] = {
        ["chance"] = 65,
        ["amount"] = math.random(1, 100),
    },
    ["items"] = {
        ["phone"] = {
            ["chance"] = 45,
            ["amount"] = math.random(1, 1),
        },
        ["beer"] = {
            ["chance"] = 20,
            ["amount"] = math.random(1, 5),
        },
        ["sandwich"] = {
            ["chance"] = 15,
            ["amount"] = math.random(1, 5),
        },
        ["meth"] = {
            ["chance"] = 1.2,
            ["amount"] = math.random(1, 5),
        },
    }, 
}

Core.Functions.CreateCallback('0-npc:getConfig', function(source, cb)
    cb(Config)
end)

RegisterNetEvent('0-npc:searchCitizen', function(entity, data)
    local Player = Core.Functions.GetPlayer(source)
    if Player and entity and data then
        for k,v in pairs(data.citizenRobbery["items"]) do
            if math.random(0, 1000) < v.chance then
                Player.Functions.AddItem(k, v.amount)
                TriggerClientEvent('inventory:client:ItemBox', source, Core.Shared.Items[k], "add")
                if data.citizenRobbery["money"]["amount"] == Config.citizenRobbery["money"]["amount"] then
                    Player.Functions.AddMoney('cash', data.citizenRobbery["money"]["amount"], 'CItizen Rob , GG!')
                end
            end
        end
    end
end)
