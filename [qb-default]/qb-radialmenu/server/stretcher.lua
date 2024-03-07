RegisterNetEvent('qb-radialmenu:server:RemoveStretcher', function(pos, stretcherObject)
    TriggerClientEvent('qb-radialmenu:client:RemoveStretcherFromArea', -1, pos, stretcherObject)
end)

-- RegisterNetEvent('qb-radialmenu:Stretcher:BusyCheck', function(id, type)
--     TriggerClientEvent('qb-radialmenu:Stretcher:client:BusyCheck', id, source, type)
-- end)

-- RegisterNetEvent('qb-radialmenu:server:BusyResult', function(isBusy, otherId, type)
--     TriggerClientEvent('qb-radialmenu:client:Result', otherId, isBusy, type)
-- end)


RegisterNetEvent('qb-radialmenu:Stretcher:BusyCheck', function(target, type)
    local src = source
    if not IsCloseToTarget(src, target) then return end
    TriggerClientEvent('qb-radialmenu:Stretcher:client:BusyCheck', target, source, type)
end)


RegisterNetEvent('qb-radialmenu:server:BusyResult', function(isBusy, target, type)
    local src = source
    if not IsCloseToTarget(src, target) then return end
    TriggerClientEvent('qb-radialmenu:client:Result', target, isBusy, type)
end)