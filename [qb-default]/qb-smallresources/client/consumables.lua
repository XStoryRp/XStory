-- Variables

local QBCore = exports['qb-core']:GetCoreObject()
local alcoholCount = 0
local ParachuteEquiped = false
local currentVest = nil
local currentVestTexture = nil
local healing = false

-- Functions
RegisterNetEvent('QBCore:Client:UpdateObject', function()
    QBCore = exports['qb-core']:GetCoreObject()
end)

local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end

local function EquipParachuteAnim()
    loadAnimDict("clothingshirt")
    TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, false, false, false)
end

local function HealOxy()
    if not healing then
        healing = true
    else
        return
    end

    local count = 9
    while count > 0 do
        Wait(1000)
        count -= 1
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 6)
    end
    healing = false
end

local function TrevorEffect()
    StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Wait(3000)
    StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
    StopScreenEffect("DrugsTrevorClownsFight")
    StopScreenEffect("DrugsTrevorClownsFightIn")
    StopScreenEffect("DrugsTrevorClownsFightOut")
end

local function MethBagEffect()
    local startStamina = 8
    TrevorEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
    while startStamina > 0 do
        Wait(1000)
        if math.random(5, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina = startStamina - 1
        if math.random(5, 100) < 51 then
            TrevorEffect()
        end
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

local function EcstasyEffect()
    local startStamina = 30
    SetFlash(0, 0, 500, 7000, 500)
    while startStamina > 0 do
        Wait(1000)
        startStamina -= 1
        RestorePlayerStamina(PlayerId(), 1.0)
        if math.random(1, 100) < 51 then
            SetFlash(0, 0, 500, 7000, 500)
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
        end
    end
    if IsPedRunning(PlayerPedId()) then
        SetPedToRagdoll(PlayerPedId(), math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
    end
end

local function AlienEffect()
    StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Wait(math.random(5000, 8000))
    StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
    StopScreenEffect("DrugsMichaelAliensFightIn")
    StopScreenEffect("DrugsMichaelAliensFight")
    StopScreenEffect("DrugsMichaelAliensFightOut")
end

local function CrackBaggyEffect()
    local startStamina = 8
    local ped = PlayerPedId()
    AlienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.3)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 10 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina -= 1
        if math.random(1, 100) < 60 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 2000), math.random(1000, 2000), 3, false, false, false)
        end
        if math.random(1, 100) < 51 then
            AlienEffect()
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

local function CokeBaggyEffect()
    local startStamina = 20
    local ped = PlayerPedId()
    AlienEffect()
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.1)
    while startStamina > 0 do
        Wait(1000)
        if math.random(1, 100) < 20 then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        startStamina -= 1
        if math.random(1, 100) < 10 and IsPedRunning(ped) then
            SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
        end
        if math.random(1, 300) < 10 then
            AlienEffect()
            Wait(math.random(3000, 6000))
        end
    end
    if IsPedRunning(ped) then
        SetPedToRagdoll(ped, math.random(1000, 3000), math.random(1000, 3000), 3, false, false, false)
    end
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end

-- Events

RegisterNetEvent('consumables:client:Eat', function(itemName)
    -- exports["rpemotes"]:EmoteCommandStart('eat')
    QBCore.Functions.Progressbar("eat_something", "Eating..", math.random(6240,724000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mp_player_inteat@burger',
        anim = 'mp_player_int_eat_burger',
        flags = 49
    }, {
        model = 'prop_cs_burger_01',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.02),
        rotation = vec3(30, 0.0, 0.0),
    }, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + Config.ConsumablesEat[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(1, 2))
        -- exports["rpemotes"]:EmoteCancel(forceCancel)
    end)
end)

RegisterNetEvent('consumables:client:Drink', function(itemName)
    -- exports["rpemotes"]:EmoteCommandStart('edrink2')
    QBCore.Functions.Progressbar("drink_something", "Drinking..", math.random(12650,13550), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'vw_prop_casino_water_bottle_01a',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Config.ConsumablesDrink[itemName])
        -- TriggerServerEvent('hud:server:RelieveStress', math.random(1, 2))
        -- exports["rpemotes"]:EmoteCancel(forceCancel)
    end)
end)

RegisterNetEvent('consumables:client:DrinkAlcohol', function(itemName)
    -- exports["rpemotes"]:EmoteCommandStart("beercan")
    QBCore.Functions.Progressbar("snort_coke", "Drinking liquor..", math.random(13650,14550), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'mp_player_intdrink',
        anim = 'loop_bottle',
        flags = 49
    }, {
        model = 'prop_cs_beer_bot_40oz',
        bone = 60309,
        coords = vec3(0.0, 0.0, -0.05),
        rotation = vec3(0.0, 0.0, -40),
    }, {}, function() -- Done
        -- exports["rpemotes"]:EmoteCancel(forceCancel)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("consumables:server:drinkAlcohol", itemName)
        TriggerServerEvent("consumables:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Config.ConsumablesAlcohol[itemName])
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        alcoholCount += 1
        AlcoholLoop()
        if alcoholCount > 1 and alcoholCount < 5 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
        elseif alcoholCount >= 5 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
        end

    end, function() -- Cancel
        -- exports["rpemotes"]:EmoteCancel(forceCancel)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)

RegisterNetEvent('consumables:client:Custom', function(itemName)
    QBCore.Functions.TriggerCallback('consumables:itemdata', function(data)
        QBCore.Functions.Progressbar("custom_consumable", data['progress'].label, data['progress'].time, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = data['animation'].animDict,
            anim = data['animation'].anim,
            flags = data['animation'].flags,
        }, {
            model = data['prop'].model,
            bone = data['prop'].bone,
            coords = data['prop'].coords,
            rotation = data['prop'].rotation,
        }, {}, function() -- Done
            local replenish = data['replenish']
            ClearPedTasks(PlayerPedId())
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
            if replenish.type then
                TriggerServerEvent("consumables:server:add".. replenish.type, QBCore.Functions.GetPlayerData().metadata[string.lower(replenish.type)] + replenish.replenish)
            end
            if replenish.isAlcohol then
                alcoholCount += 1
                AlcoholLoop()
                if alcoholCount > 1 and alcoholCount < 4 then
                    TriggerEvent("evidence:client:SetStatus", "alcohol", 200)
                elseif alcoholCount >= 4 then
                    TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 200)
                end
            end
            if replenish.event then
                TriggerEvent(replenish.event)
            end
        end, function() -- Cancel
            ClearPedTasks(PlayerPedId())
            QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
        end)
    end, itemName)
end)

RegisterNetEvent('consumables:client:Cokebaggy', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("snort_coke", Lang:t('consumables.coke_progress'), math.random(5000, 8000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("consumables:server:useCokeBaggy")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cokebaggy"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 200)
        AddArmourToPed(ped,25)
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 20)
        TriggerServerEvent("consumables:server:addcokedict", QBCore.Functions.GetPlayerData().metadata["addictcoke"] + 50)
        CokeBaggyEffect()
    end, function() -- Cancel
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)


--  #Default Cokebaggy
-- RegisterNetEvent('consumables:client:Cokebaggy', function()
--     local ped = PlayerPedId()
--     QBCore.Functions.Progressbar("snort_coke", "Quick sniff...", math.random(5000, 8000), false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
--         disableMouse = false,
--         disableCombat = true,
--     }, {
--         animDict = "switch@trevor@trev_smoking_meth",
--         anim = "trev_smoking_meth_loop",
--         flags = 49,
--     }, {}, {}, function() -- Done
--         StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
--         TriggerServerEvent("consumables:server:useCokeBaggy")
--         TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cokebaggy"], "remove")
--         TriggerEvent("evidence:client:SetStatus", "widepupils", 200)
--         CokeBaggyEffect()
--     end, function() -- Cancel
--         StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
--         QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
--     end)
-- end)

RegisterNetEvent('consumables:client:Crackbaggy', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("snort_coke", "Smoking crack..", math.random(7000, 10000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("consumables:server:useCrackBaggy")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["crack_baggy"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 300)
        CrackBaggyEffect()
    end, function() -- Cancel
        StopAnimTask(ped, "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)

RegisterNetEvent('consumables:client:EcstasyBaggy', function()
    QBCore.Functions.Progressbar("use_ecstasy", "Pops Pills..", 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_suicide",
        anim = "pill",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        TriggerServerEvent("consumables:server:useXTCBaggy")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["xtcbaggy"], "remove")
        EcstasyEffect()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)

RegisterNetEvent('consumables:client:oxy', function()
    QBCore.Functions.Progressbar("use_oxy", "Healing..", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_suicide",
        anim = "pill",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        TriggerServerEvent("consumables:server:useOxy")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["oxy"], "remove")
        ClearPedBloodDamage(PlayerPedId())
        HealOxy()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)

RegisterNetEvent('consumables:client:meth', function()
    QBCore.Functions.Progressbar("snort_meth", "Smoking ass meth..", 1500, false, false, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("consumables:server:useMeth")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meth"], "remove")
        TriggerEvent("evidence:client:SetStatus", "widepupils", 300)
        TriggerEvent("evidence:client:SetStatus", "agitated", 300)
        AddArmourToPed(PlayerPedId(), 50)
        TriggerServerEvent("consumables:server:addmethdict", QBCore.Functions.GetPlayerData().metadata["addictmeth"] + 50)
        MethBagEffect()
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)


--  #Default meth
-- RegisterNetEvent('consumables:client:meth', function()
--     QBCore.Functions.Progressbar("snort_meth", "Smoking ass meth...", 1500, false, true, {
--         disableMovement = false,
--         disableCarMovement = false,
--         disableMouse = false,
--         disableCombat = true,
--     }, {
--         animDict = "switch@trevor@trev_smoking_meth",
--         anim = "trev_smoking_meth_loop",
--         flags = 49,
--     }, {}, {}, function() -- Done
--         StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
--         TriggerServerEvent("consumables:server:useMeth")
--         TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meth"], "remove")
--         TriggerEvent("evidence:client:SetStatus", "widepupils", 600)
--         TriggerEvent("evidence:client:SetStatus", "agitated", 500)
--         MethBagEffect()
--     end, function() -- Cancel
--         StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
--         QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
--     end)
-- end)

RegisterNetEvent('consumables:client:UseJoint', function()
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        -- TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        exports["emotes"]:EmoteCommandStart('smoke3')
    else
        -- TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        exports["emotes"]:EmoteCommandStart('smokeweed')
    end
    QBCore.Functions.Progressbar("smoke_joint", "Lighting joint..", 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["joint"], "remove")
        -- if IsPedInAnyVehicle(PlayerPedId(), false) then
        --     -- TriggerEvent('animations:client:EmoteCommandStart', {"smoke3"})
        --     exports["rpemotes"]:EmoteCommandStart('smoke3')
        -- else
        --     -- TriggerEvent('animations:client:EmoteCommandStart', {"smokeweed"})
        --     exports["rpemotes"]:EmoteCommandStart('smokeweed')
        -- end
        TriggerEvent("evidence:client:SetStatus", "weedsmell", 300)
        TriggerEvent('animations:client:SmokeWeed')
    end)
end)

RegisterNetEvent('consumables:client:UseParachute', function()
    EquipParachuteAnim()
    QBCore.Functions.Progressbar("use_parachute", "Putting on parachute..", math.random(6000,8000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local ped = PlayerPedId()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["parachute"], "remove")
        GiveWeaponToPed(ped, `GADGET_PARACHUTE`, 1, false, false)
        local ParachuteData = {
            outfitData = {
                ["bag"]   = { item = 7, texture = 0},  -- Adding Parachute Clothing
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', ParachuteData)
        ParachuteEquiped = true
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, false, false, false)
    end)
end)

RegisterNetEvent('consumables:client:ResetParachute', function()
    if ParachuteEquiped then
        EquipParachuteAnim()
        QBCore.Functions.Progressbar("reset_parachute", "Packing parachute..", math.random(8000,1100), false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            local ped = PlayerPedId()
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["parachute"], "add")
            local ParachuteRemoveData = {
                outfitData = {
                    ["bag"] = { item = 0, texture = 0} -- Removing Parachute Clothing
                }
            }
            TriggerEvent('qb-clothing:client:loadOutfit', ParachuteRemoveData)
            TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, false, false, false)
            TriggerServerEvent("qb-smallpenis:server:AddParachute")
            ParachuteEquiped = false
        end)
    else
        QBCore.Functions.Notify(Lang:t('consumables.no_parachute'), "error")
    end
end)

RegisterNetEvent('consumables:client:UseArmor', function()
    if GetPedArmour(PlayerPedId()) >= 75 then QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error') return end
    QBCore.Functions.Progressbar("use_armor", "Putting on the body armour..", math.random(300,700), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["armor"], "remove")
        TriggerServerEvent('hospital:server:SetArmor', 75)
        TriggerServerEvent("consumables:server:useArmor")
        SetPedArmour(PlayerPedId(), 75)
    end)
end)

RegisterNetEvent('consumables:client:UseHeavyArmor', function()
    if GetPedArmour(PlayerPedId()) == 100 then QBCore.Functions.Notify(Lang:t('consumables.armor_full'), 'error') return end
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.Progressbar("use_heavyarmor", "Putting on body armour..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        if not Config.DisableVestDrawable then
            if PlayerData.charinfo.gender == 0 then
                currentVest = GetPedDrawableVariation(ped, 9)
                currentVestTexture = GetPedTextureVariation(ped, 9)
                if GetPedDrawableVariation(ped, 9) == 7 then
                    SetPedComponentVariation(ped, 9, 19, GetPedTextureVariation(ped, 9), 2)
                else
                    SetPedComponentVariation(ped, 9, 5, 2, 2) -- Blue
                end
            else
                currentVest = GetPedDrawableVariation(ped, 30)
                currentVestTexture = GetPedTextureVariation(ped, 30)
                SetPedComponentVariation(ped, 9, 30, 0, 2)
            end
        end
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["heavyarmor"], "remove")
        TriggerServerEvent("consumables:server:useHeavyArmor")
        SetPedArmour(ped, 100)
    end)
end)

RegisterNetEvent('consumables:client:ResetArmor', function()
    local ped = PlayerPedId()
    if currentVest ~= nil and currentVestTexture ~= nil then
        QBCore.Functions.Progressbar("remove_armor", "Removing the body armour..", 1500, false, true, {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            SetPedComponentVariation(ped, 9, currentVest, currentVestTexture, 2)
            SetPedArmour(ped, 0)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["heavyarmor"], "add")
            TriggerServerEvent('consumables:server:resetArmor')
        end)
    else
        QBCore.Functions.Notify(Lang:t('consumables.armor_empty'), "error")
    end
end)

RegisterNetEvent('consumables:client:curecoke', function()
    QBCore.Functions.Progressbar("use_curecoke", "Use pills..", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_suicide",
        anim = "pill",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        TriggerServerEvent("consumables:server:usecurecoke")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["curecoke"], "remove")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)

RegisterNetEvent('consumables:client:curemeth', function()
    QBCore.Functions.Progressbar("use_curecoke", "Use pills..", 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_suicide",
        anim = "pill",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        TriggerServerEvent("consumables:server:usecuremeth")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["curemeth"], "remove")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)

RegisterNetEvent('consumables:client:Unpack9mm', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"healthkit"})
    QBCore.Functions.Progressbar("unpack_something", Lang:t('consumables.unpack_progress'), 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["9mm_box"], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pistol_ammo"], "add")
        TriggerServerEvent("consumables:server:Unpack9mm")
    end)
end)


-- RegisterNetEvent('consumables:client:UseRedSmoke', function()
--     if ParachuteEquiped then
--         local ped = PlayerPedId()
--         SetPlayerParachuteSmokeTrailColor(ped, 255, 0, 0)
--         SetPlayerCanLeaveParachuteSmokeTrail(ped, true)
--         TriggerEvent("inventory:client:Itembox", QBCore.Shared.Items["smoketrailred"], "remove")
--     else
--         QBCore.Functions.Notify("You need to have a paracute to activate smoke!", "error")
--     end
-- end)

--Threads
local looped = false
function AlcoholLoop()
    if not looped then
        looped = true
        CreateThread(function()
            while true do
                Wait(10)
                if alcoholCount > 0 then
                    Wait(1000 * 60 * 15)
                    alcoholCount -= 1
                else
                    looped = false
                    break
                end
            end
        end)
    end
end
