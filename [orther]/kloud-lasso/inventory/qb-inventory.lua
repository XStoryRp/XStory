-- if not Started("qb-inventory") then return end

local inventory = exports["qb-inventory"]

AddItem = function(inv, name, amount)
    return inventory:AddItem(inv, name, amount)
end

RemoveItem = function(inv, name, amount)
    return inventory:RemoveItem(inv, name, amount)
end