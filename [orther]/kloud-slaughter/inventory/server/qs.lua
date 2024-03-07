if GetResourceState("qs-inventory") ~= "started" then return end

CheckStorage = function(id)
    if exports['qs-inventory']:CanCarryItem(source, KloudDev.Locations[id].Item.BoxItemName, 1) then return true end
    return false
end

AddItem = function(id, inv, item, amount, metadata)
    if exports['qs-inventory']:AddItem(source, item, amount, nil, metadata) then return true end
    return false
end


AddPlayerItem = function (inv, itemName, amount, metadata)
    if exports["qs-inventory"]:AddItem(inv, itemName, amount, nil, metadata) then
        return true
    end
    return false
end

RemoveItem = function(inv, itemName, amount)
    if exports["qs-inventory"]:RemoveItem(inv, itemName, amount) then
        return true
    end
    return false
end



for job, value in pairs(KloudDev.Locations) do
    exports['qs-inventory']:CreateUsableItem(value.Item.BoxItemName, function(source, item)
        local Player = GetPlayer(source)
        local meatInfo = item.info.meat
        
        if exports["qs-inventory"]:RemoveItem(source, item.name, 1, item.slot) then
            exports["qs-inventory"]:AddItem(source, value.Item.ContentItemName, meatInfo)
        end
    end)
end


