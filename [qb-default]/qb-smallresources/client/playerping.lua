local playerPing = 0

RegisterNetEvent("returnPing")
AddEventHandler("returnPing", function(returnPing)
    playerPing = returnPing
end)

Citizen.CreateThread(function()
    while true do
        TriggerServerEvent("checkPing")
        Wait(1500)
        if playerPing >= 500 then -- Here you can change max ping
            TriggerServerEvent("kickPing")
        end
    end
end)