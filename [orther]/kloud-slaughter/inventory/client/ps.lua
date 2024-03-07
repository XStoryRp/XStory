if GetResourceState("ps-inventory") ~= "started" then return end

OpenStash = function(id)
    local loc = KloudDev.Locations[id]
    TriggerServerEvent("inventory:server:OpenInventory", "stash", id.."_stash", {
        name = id.."_stash",
        label = loc.Stash.Label,
        slots = loc.Stash.Slots,
        maxweight = loc.Stash.Weight,
    })
    TriggerEvent("inventory:client:SetCurrentStash", id.."_stash")
end