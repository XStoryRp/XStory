if GetResourceState("ox_inventory") ~= "started" then return end

Inventory = exports.ox_inventory

OpenStash = function(id)
    Inventory:openInventory("stash", {id = id.."_stash"})
end