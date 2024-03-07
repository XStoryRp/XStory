-- Server-Side (using FiveM server events)
RegisterServerEvent("disableRollAndJump")
AddEventHandler("disableRollAndJump", function()
    local src = source
    
    -- Disable combat roll
    TriggerClientEvent("disableCombatRoll", src)
    
    -- Disable jump with a weapon in hand
    TriggerClientEvent("disableJumpWithWeapon", src)
end)