if GetResourceState("ps-inventory") ~= "started" then return end

for k, v in pairs(KloudDev.Locations) do
    local items = {}

    QBCore.Functions.TriggerCallback("ps-inventory:server:GetStashItems", _, function(item)
        items = item
        if json.encode(items) == "[]" then TriggerEvent('ps-inventory:server:SaveStashItems', k.."_stash", {}) end

    end, k.."_stash")
end

CheckStorage = function (id)
    local items = {}
    local loc = KloudDev.Locations[id]

    if not loc.RestrictJob then return true end

    QBCore.Functions.TriggerCallback("ps-inventory:server:GetStashItems", _, function(item)
        items = item

        if json.encode(items) == "[]" then TriggerEvent('ps-inventory:server:SaveStashItems', id.."_stash", {})
            return false
        end

    end, id.."_stash")

    if #items + 1 > loc.Stash.Slots then
        return false
    end

    return true
end

AddItem = function (id, inv, itemName, amount, metadata)
    local items = {}
    local loc = KloudDev.Locations[id]
    local itemInfo = QBCore.Shared.Items[itemName:lower()]

    if itemInfo == nil then
        print(itemName.." not found in qb-core/shared/items.lua.")
        return false
    end

    if not loc.RestrictJob then
        if not AddPlayerItem(source, itemName, amount, metadata) then return false end
    end

    QBCore.Functions.TriggerCallback("ps-inventory:server:GetStashItems", _, function(item)
        items = item
        if json.encode(items) == "[]" then
            TriggerEvent('ps-inventory:server:SaveStashItems', id.."_stash", {
                [1] = {
                    name = itemInfo.name,
                    amount = amount,
                    info = metadata,
                    weight = itemInfo.weight,
                    type = "item",
                    image = itemInfo.image,
                    label = itemInfo.label,
                    unique = true,
                    slot = 1,
                }
            })
            return true
        end

        if #items == loc.Stash.Slots then return false end

        table.insert(items,
            {
                name = itemInfo.name,
                amount = amount,
                info = metadata,
                weight = itemInfo.weight,
                type = "item",
                image = itemInfo.image,
                label = itemInfo.label,
                unique = true,
                slot = #items + 1,
            }
        )

        TriggerEvent('ps-inventory:server:SaveStashItems', id.."_stash", items)

        return true

    end, id.."_stash")

    return false
end


AddPlayerItem = function (inv, itemName, amount, metadata)
    if exports["ps-inventory"]:AddItem(inv, itemName, amount, nil, metadata) then
        for i = 1, amount do
            TriggerClientEvent('inventory:client:ItemBox', inv, QBCore.Shared.Items[itemName], 'add')
        end
        return true
    end
    return false
end

RemoveItem = function(inv, itemName, amount)
    local Player = GetPlayer(inv)

    if Player.Functions.RemoveItem(itemName, amount) then
        TriggerClientEvent('inventory:client:ItemBox', inv, QBCore.Shared.Items[itemName], 'remove', amount)
        return true
    end
    return false
end

for job, value in pairs(KloudDev.Locations) do
    QBCore.Functions.CreateUseableItem(value.Item.BoxItemName, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        local meatInfo = item.info.meat
        if not Player.Functions.GetItemByName(item.name) then return end
        
        if RemoveItem(source, item.name, 1) then
            AddPlayerItem(source, value.Item.ContentItemName, meatInfo)
         end
    end)
end