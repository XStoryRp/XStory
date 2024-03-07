--[[local function disableCombatRollAndJump()
    local playerPed = PlayerPedId()
    
    if IsPedArmed(playerPed, 7) then -- Check if the player is holding a weapon
        DisableControlAction(0, 36, true) -- Disable combat roll (Control: "Jump")
        DisableControlAction(0, 22, true) -- Disable jump (Control: "CombatRoll")
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        disableCombatRollAndJump()
    end
end)]]
-- Client-Side
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        local playerPed = PlayerPedId()
        
        -- Disable combat roll
        DisableControlAction(0, 36, true) -- INPUT_DUCK
        
        -- Disable jump with a weapon in hand
        if IsPedArmed(playerPed, 6) then -- 6 denotes a weapon type (melee)
            DisableControlAction(0, 22, true) -- INPUT_JUMP
        end
    end
end)

-- Client-Side (receiving server events)
RegisterNetEvent("disableCombatRoll")
AddEventHandler("disableCombatRoll", function()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            
            DisableControlAction(0, 36, true) -- INPUT_DUCK
        end
    end)
end)


RegisterNetEvent("disableJumpWithWeapon")
AddEventHandler("disableJumpWithWeapon", function()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            
            local playerPed = PlayerPedId()
            
            if IsPedArmed(playerPed, 6) then -- 6 denotes a weapon type (melee)
                DisableControlAction(0, 22, true) -- INPUT_JUMP
            end
        end
    end)
end)
