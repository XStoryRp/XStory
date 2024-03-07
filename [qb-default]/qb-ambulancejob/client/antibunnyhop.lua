local QBCore = exports['qb-core']:GetCoreObject()
CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            local chance_result = math.random()
            --You can change the chance as you want! Just changed 0.2!
            if chance_result < 0.2 then 
                Wait(600)
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
                -- QBCore.Functions.Notify('You are too tired!', 'error', 2500)
                SetPedToRagdoll(ped, 7000, 1, 2)
            else
                Wait(2000)
            end
        end
    end
end)