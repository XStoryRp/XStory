local knockedOut = false
local wait = 60
local lastTimerCheck = GetGameTimer()
local holdE = 0
local animDict = "dead"  -- Replace this with the name of the animation dictionary
local animName = "dead_a"  -- Replace this with the name of the animation
QBCore = exports['qb-core']:GetCoreObject()

function disableControls()
    DisableAllControlActions(0)
    EnableControlAction(0, 1, true)
    EnableControlAction(0, 2, true)
    EnableControlAction(0, 245, true)
    EnableControlAction(0, 38, true)
    EnableControlAction(0, 0, true)
    EnableControlAction(0, 322, true)
    EnableControlAction(0, 288, true)
    EnableControlAction(0, 213, true)
    EnableControlAction(0, 249, true)
    EnableControlAction(0, 46, true)
    EnableControlAction(0, 47, true)
    EnableControlAction(0, 212, true)
    EnableControlAction(0, 213, true) 
    EnableControlAction(0, 200, true)
end

-- Function to draw text on screen
function drawText(text, x, y, font, scale, red, green, blue, alpha)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(red, green, blue, alpha)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end


local lastKnockoutTime = 0
local immunityTime = 5 * 60 * 1000  -- 5 minutes in milliseconds

Citizen.CreateThread(function()

    local myPed
    local currentTime
    local chance
    local canBeKnockedOut

    local playerId = PlayerId()
    local animLoadStatus = false

    while true do
        Wait(1)

        myPed = GetPlayerPed(-1)
        currentTime = GetGameTimer()
        canBeKnockedOut = (currentTime - lastKnockoutTime) > immunityTime

        if not knockedOut then
            chance = math.random(100)  -- Generate a random number only when needed
            if canBeKnockedOut and IsPedInMeleeCombat(myPed) then
                QBCore.Functions.GetPlayerData(function(PlayerData)
                    if not PlayerData.metadata["isdead"] and not PlayerData.metadata["inlaststand"] then
                        if HasPedBeenDamagedByWeapon(myPed, GetHashKey("WEAPON_UNARMED"), 0) and GetEntityHealth(myPed) < 140 and chance <= 100 then
                            SetEntityProofs(myPed, false, true, false, false, false, false, false, false)  -- Only immune to unarmed damage
                            ClearPedTasksImmediately(myPed)

                            -- Load the animation if it's not loaded
                            if not animLoadStatus then
                                RequestAnimDict(animDict)
                                while not HasAnimDictLoaded(animDict) do
                                    Wait(10)  -- Slightly increased for better performance
                                end
                                animLoadStatus = true
                            end

                            TaskPlayAnim(myPed, animDict, animName, 8.0, -8.0, -1, 33, 0, false, false, false)

                            wait = 60
                            knockedOut = true
                            lastKnockoutTime = currentTime
                            SetEntityHealth(myPed, 200)
                            SetEveryoneIgnorePlayer(playerId, true)
                            TriggerServerEvent('myServer:playerKnockedOut', GetPlayerServerId(playerId))
                            -- exports['ps-dispatch']:Fight()
                        end
                    end
                end)
            end
        else
            -- Check if player is dead and end knocked-out state if true
            if IsEntityDead(myPed) then
                knockedOut = false
            else
                SetEntityProofs(myPed, false, true, false, false, false, false, false, false)  -- Only immune to unarmed damage
                DisablePlayerFiring(playerId, true)

                if wait > 0 then
                    if (currentTime - lastTimerCheck) >= 1000 then
                        wait = wait - 1
                        lastTimerCheck = currentTime
                    end
                    disableControls()
                    drawText("~w~ Unconscious: ~r~ " .. tostring(wait) .. " ~w~ Seconds Remaining.", 0.38, 0.90, 0, 0.5, 255, 255, 255, 255)
                elseif holdE < 5000 then
                    disableControls()
                    local remainingTime = math.ceil((5000 - holdE) / 1000)
                    drawText("Hold ~g~E ~w~to stand up. (" .. tostring(remainingTime) .. ")", 0.41, 0.90, 0, 0.5, 255, 255, 255, 255)
                    
                    if IsControlPressed(0, 38) then
                        holdE = holdE + 10
                    else
                        holdE = 0
                    end
                else
                    StopAnimTask(myPed, animDict, animName, 1.0)
                    SetEntityCanBeDamaged(myPed, true)
                    SetEntityHealth(myPed, 200)
                    knockedOut = false
                    lastKnockoutTime = currentTime
                    holdE = 0
                    SetEveryoneIgnorePlayer(playerId, false)
                end
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Wait(500)

        local myPed = GetPlayerPed(-1)

        if knockedOut then
            --print("knocked out")
            if not IsEntityPlayingAnim(myPed, animDict, animName, 3) then
                ---print("restarting anim")
                TaskPlayAnim(myPed, animDict, animName, 8.0, -8.0, -1, 33, 0, false, false, false)
            else
                ---print("animation is playing")
            end
        else
            ---print("not knocked out")
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)  -- Continue to use Wait(0) for immediate response
        if knockedOut then
            DisableAllControlActions(0)

            -- Here are the controls we want to allow:
            local allowedControls = {
                1, 2, 245, 38, 0, 322, 288, 213, 249, 46, 47, 212, 213, 200
            }

            for _, control in ipairs(allowedControls) do
                EnableControlAction(0, control, true)
            end

            -- Manually disable F2 and F3 without referencing an external table
            DisableControlAction(0, 289, true)  -- F2
            DisableControlAction(0, 170, true)  -- F3
        end
    end
end)


function IsPlayerKnockedOut()
    return knockedOut
end

RegisterNetEvent('myClient:playerKnockedOut')
AddEventHandler('myClient:playerKnockedOut', function(playerId)
    local targetPed = GetPlayerPed(GetPlayerFromServerId(playerId))
    if targetPed and targetPed ~= GetPlayerPed(-1) then
        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
            Wait(1)
        end
        TaskPlayAnim(targetPed, animDict, animName, 8.0, -8.0, -1, 33, 0, false, false, false)
    end
end)
