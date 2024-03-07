CreateThread(function()
    for index, data in pairs(Config.TargetZones) do
        Framework:AddBoxZone(data, index)
    end

    for index, data in pairs(Config.TargetZones) do
        local loanped = GetHashKey(Config.PedModel)
        RequestModel(loanped)
        while not HasModelLoaded(loanped) do Wait(15) do end
        LoanBankped[k] = CreatePed(5, loanped, vector3(v.x,v.y,v.z,v.w),v.w, false, false)
        FreezeEntityPosition(LoanBankped[k], true)
        SetBlockingOfNonTemporaryEvents(LoanBankped[k], true)
        SetEntityInvincible(LoanBankped[k], true)
        Framework:AddBoxZone(data, index 
        {
            options = {
                {
                    type = "client",
                    event = data,
                    icon = "fas fa-swords",
                    label = "Acces Loan Menu",
                },
            },
            distance = 0.5
        })
        end
    end
end)