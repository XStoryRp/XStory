local isVisible = false
local QBCore = exports['qb-core']:GetCoreObject()
-- local progressBar = Config.progressbar == 'circle' and lib.progressCircle or lib.progressBar
PlayerPed = cache.ped

lib.onCache('ped', function(newPed)
	PlayerPed = newPed
end)

local function nuiHandler(val)
    isVisible = val
    SetNuiFocus(val, val)
end

local function openBankUI(isAtm)
    SendNUIMessage({action = 'setLoading', status = true})
    nuiHandler(true)
    lib.callback('renewed-banking:server:initalizeBanking', false, function(accounts)
        if not accounts then
            nuiHandler(false)
            -- lib.notify({title = locale('bank_name'), description = locale('loading_failed'), type = 'error'})
            QBCore.Functions.Notify(locale('loading_failed'), 'error', 7500)
            return
        end
        SetTimeout(1000, function()
            SendNUIMessage({
                action = 'setVisible',
                status = isVisible,
                accounts = accounts,
                loading = false,
                atm = isAtm
            })
        end)
    end)
end

RegisterNetEvent('Renewed-Banking:client:openBankUI', function(data)
    local txt = data.atm and locale('open_atm') or locale('open_bank')
    TaskStartScenarioInPlace(PlayerPed, 'PROP_HUMAN_ATM', 0, true)
    QBCore.Functions.Progressbar('atm', txt, math.random(500,1000), false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Play When Done
        openBankUI(data.atm)
        Wait(500)
        ClearPedTasksImmediately(PlayerPed)    
    end, function() -- Play When Cancel
        ClearPedTasksImmediately(PlayerPed) --Stuff goes here
    end)
    -- if progressBar({
    --     label = txt,
    --     duration = math.random(500,1000),
    --     position = 'bottom',
    --     useWhileDead = false,
    --     allowCuffed = false,
    --     allowFalling = false,
    --     canCancel = true,
    --     disable = {
    --         car = true,
    --         move = true,
    --         combat = true,
    --         mouse = false,
    --     }
    -- }) then
    --     openBankUI(data.atm)
    --     Wait(500)
    --     ClearPedTasksImmediately(PlayerPed)
    -- else
    --     ClearPedTasksImmediately(PlayerPed)
    --     -- lib.notify({title = locale('bank_name'), description = locale('canceled'), type = 'error'})
    -- end
end)

RegisterNUICallback('closeInterface', function(_, cb)
    nuiHandler(false)
    cb('ok')
end)

-- RegisterCommand('closeBankUI', function() nuiHandler(false) end, false)

local bankActions = {'deposit', 'withdraw', 'transfer'}
CreateThread(function ()
    for k=1, #bankActions do
        RegisterNUICallback(bankActions[k], function(data, cb)
            local newTransaction = lib.callback.await('Renewed-Banking:server:'..bankActions[k], false, data)
            cb(newTransaction)
        end)
    end
    exports['qb-target']:AddTargetModel(Config.atms,{
        options = {{
            type = "client",
            event = "Renewed-Banking:client:openBankUI",
            icon = "fas fa-money-check",
            label = locale('view_bank'),
            atm = true
        }},
        distance = 1.3
    })
end)

local pedSpawned = false
local peds = {basic = {}, adv ={}}
local blips = {}
function CreatePeds()
    if pedSpawned then return end
    for k=1, #Config.peds do
        local model = joaat(Config.peds[k].model)

        RequestModel(model)
        while not HasModelLoaded(model) do Wait(0) end

        local coords = Config.peds[k].coords
        local bankPed = CreatePed(0, model, coords.x, coords.y, coords.z-1, coords.w, false, false)

        TaskStartScenarioInPlace(bankPed, 'PROP_HUMAN_STAND_IMPATIENT', 0, true)
        FreezeEntityPosition(bankPed, true)
        SetEntityInvincible(bankPed, true)
        SetBlockingOfNonTemporaryEvents(bankPed, true)
        table.insert(Config.peds[k].createAccounts and peds.adv or peds.basic, bankPed)

        blips[k] = AddBlipForCoord(coords.x, coords.y, coords.z-1)
        SetBlipSprite(blips[k], 108)
        SetBlipDisplay(blips[k], 4)
        SetBlipScale  (blips[k], 0.80)
        SetBlipColour (blips[k], 0)
        SetBlipAsShortRange(blips[k], true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('Bank')
        EndTextCommandSetBlipName(blips[k])
    end

    local targetOpts ={{
        name = 'renewed_banking_openui',
        event = 'Renewed-Banking:client:openBankUI',
        icon = 'fas fa-money-check',
        label = locale('view_bank'),
        atm = false,
        canInteract = function(_, distance)
            return distance < 4.5
        end
    }}
    exports['qb-target']:AddTargetEntity(peds.basic, {
        options = {
            {
                type = "client",
                event = "Renewed-Banking:client:openBankUI",
                icon = "fas fa-money-check",
                label = locale('manage_bank'),
                atm = false
            }
        },
        distance = 1.0
    })
    exports['qb-target']:AddTargetEntity(peds.adv, {
        options = {
            {
                type = "client",
                event = "Renewed-Banking:client:openBankUI",
                icon = "fas fa-money-check",
                label = locale('manage_bank'),
                atm = false
            },
            {
                type = "client",
                event = "Renewed-Banking:client:accountManagmentMenu",
                icon = "fas fa-money-check",
                label = locale('manage_bank')
            }
        },
        distance = 1.0
    })
    pedSpawned = true
end

function DeletePeds()
    if not pedSpawned then return end
    local k=1
    for x,v in pairs(peds)do
        for i=1, #v do
            DeletePed(v[i])
            RemoveBlip(blips[k])
            k += 1
        end
        peds[x] = {}
    end
    pedSpawned = false
end

AddEventHandler('onResourceStop', function(resource)
    if resource ~= GetCurrentResourceName() then return end
    exports['qb-target']:RemoveTargetModel(Config.atms, {'renewed_banking_openui'})
    exports['qb-target']:RemoveTargetEntity(peds.basic, {'renewed_banking_openui'})
    exports['qb-target']:RemoveTargetEntity(peds.adv, {'renewed_banking_openui','renewed_banking_accountmng'})
    DeletePeds()
end)

RegisterNetEvent('Renewed-Banking:client:sendNotification', function(msg)
    if not msg then return end
    SendNUIMessage({
        action = 'notify',
        status = msg,
    })
end)

RegisterNetEvent('Renewed-Banking:client:viewAccountsMenu', function()
    TriggerServerEvent('Renewed-Banking:server:getPlayerAccounts')
end)
