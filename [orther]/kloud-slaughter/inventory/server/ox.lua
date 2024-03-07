if GetResourceState("ox_inventory") ~= "started" then return end

Inventory = exports.ox_inventory

AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        for k, v in pairs(KloudDev.Locations) do
            Inventory:RegisterStash(k.."_stash", v.Stash.Label, v.Stash.Slots, v.Stash.Weight, false)
        end
    end
end)

CheckStorage = function(id)
    if Inventory:GetSlotForItem(id.."_stash", KloudDev.Locations[id].Item.BoxItemName, false) then return true end
    return false
end

AddItem = function(id, inv, item, amount, metadata)
    local loc = KloudDev.Locations[id]
    if not loc.RestrictJob then
        if Inventory:AddItem(source, item, amount, metadata) then return true end
        return false
    end
    if Inventory:AddItem(inv, item, amount, metadata) then return true end
    return false
end

AddPlayerItem = function(inv, item, amount, metadata)
    if Inventory:AddItem(inv, item, amount, metadata) then return true end
    return false
end

RemoveItem = function(inv, item, amount)
    if Inventory:RemoveItem(inv, item, amount) then return true end
    return false
end


