local QBCore = exports['qb-core']:GetCoreObject()

----------- / alcohol

QBCore.Functions.CreateUseableItem("vodka", function(source, item)
    TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name)
end)

QBCore.Functions.CreateUseableItem("beer", function(source, item)
    TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name)
end)

QBCore.Functions.CreateUseableItem("whiskey", function(source, item)
    TriggerClientEvent("consumables:client:DrinkAlcohol", source, item.name)
end)

----------- / Eat

QBCore.Functions.CreateUseableItem("sandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("twerks_candy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("hotdog", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("snikkel_candy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("tosti", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("marshy-aero", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-beanz", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-bourbon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-bubbaloo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-bueno", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-chrunchie", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-corner.bcf", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-corner.s", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-corner.vcb", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-creame-egg", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-crumpets", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-custard-cream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dairymilk", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dibdabs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-digestive", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dorito.classic", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dorito.coolranch", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dorito.flaming", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dorito.heatwave", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-dunkers", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-flake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-frazzles", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-freddo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-fruit-tella", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-greggs.d", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-greggs.sb", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-greggs.sr", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-hobnobs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-hula-hoops", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-jammy-dodger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-kipling", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-kitkat", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-kp-peanuts", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-malteasers", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-maoam-stripes", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-marylands", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-mccoys.fgs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-mccoys.salted", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-mccoys.sav", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-mccoys.tsc", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-milkeybar", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-milkeyway", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-millions", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-mini-rolls", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-monstor-munch", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-niknaks", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-penguin", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-pom-bear", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-pork-pie", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-pot-noodle", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-pudding", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-quavers", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-sensations", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-skips", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-skittles", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-space-raiders", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-squashies", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-starbursts", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-tangfastics", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-teacake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-timeout", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-twirl", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-wagonwheel", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-walkers.cao", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-walkers.rc", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-walkers.rs", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-walkers.sav", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-wispa", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-marshmallow", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-maxibon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-pringles.o", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-pringles.sc", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("marshy-starmix", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end) 

QBCore.Functions.CreateUseableItem("orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pear", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("watermelon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("banana", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("apple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("burgershot_bigking", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_bleeder", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_goatwrap", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_macaroon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_patatob", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_patatos", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_shotnuggets", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_shotrings", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_thesmurfsicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_smurfetteicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_matchaicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_ubeicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_unicornicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_vanillaicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_chocolateicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_strawberryicecream", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Eat", source, item.name)
end)
----------- / Drink

QBCore.Functions.CreateUseableItem("water_bottle", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

QBCore.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

QBCore.Functions.CreateUseableItem("kurkakola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

-- Barr Drinks!
QBCore.Functions.CreateUseableItem("barr-bubblegum", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("barr-cherryade", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("barr-cola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("barr-creamsoda", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("barr-lemonade", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- Cadbury Drinks!
QBCore.Functions.CreateUseableItem("cadbury-hotchocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- Calypso Drinks!
QBCore.Functions.CreateUseableItem("calypso-lemonage", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("calypso-oceanblue", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("calypso-pineapplepeach", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("calypso-pradisepunch", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("calypso-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("calypso-triplemelon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Coca-cola Drinks!
QBCore.Functions.CreateUseableItem("coke-cherry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("coke-cinnamon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("coke-coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("coke-diet", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("coke-mango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("coke-peach", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- DrPepper Drinks!
QBCore.Functions.CreateUseableItem("drpepper-cherry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("drpepper-cola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("drpepper-vanilla", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Fanta Drinks!
QBCore.Functions.CreateUseableItem("fanta-grape", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("fanta-orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("fanta-peach", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("fanta-pineapple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("fanta-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- KA Drinks!
QBCore.Functions.CreateUseableItem("ka-blackgrape", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("ka-fruitpunch", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("ka-pineapple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("ka-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("ka-tropicalkrush", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- Kenco Drinks!
QBCore.Functions.CreateUseableItem("kenco-americano", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("kenco-cappaccino", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("kenco-latte", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- Lucozade Drinks!
QBCore.Functions.CreateUseableItem("lucozade-apple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("lucozade-cherry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("lucozade-mango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("lucozade-orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Marinda Drinks!
QBCore.Functions.CreateUseableItem("marinda-orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("marinda-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Oasis Drinks!
QBCore.Functions.CreateUseableItem("oasis-blackcurrentapple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("oasis-citruspunch", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("oasis-summerfruits", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Prime Drinks!
QBCore.Functions.CreateUseableItem("prime-blueraspberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("prime-grape", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("prime-icepop", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("prime-lemonlime", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("prime-metamoon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("prime-orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Ribena Drinks!
QBCore.Functions.CreateUseableItem("ribena-pineapple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("ribena-raspberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("ribena-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- Rubicon Drinks!
QBCore.Functions.CreateUseableItem("rubicon-cherryraspberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("rubicon-orangemango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("rubicon-strawberrykiwi", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Vimto Drinks!
QBCore.Functions.CreateUseableItem("vimto-orange", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("vimto-orangepineapple", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("vimto-original", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("vimto-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)


-- Yazoo Drinks!
QBCore.Functions.CreateUseableItem("yazoo-banana", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("yazoo-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("yazoo-strawberry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("yazoo-vanilla", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("yorkshire-tea", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)



QBCore.Functions.CreateUseableItem("burgershot_colab", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_colas", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

QBCore.Functions.CreateUseableItem("burgershot_coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Drink", source, item.name)
end)

----------- / Drug

QBCore.Functions.CreateUseableItem("joint", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:UseJoint", source)
end)


QBCore.Functions.CreateUseableItem("cokebaggy", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
   if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        local citizenid = Player.PlayerData.citizenid
        local isaddicted = MySQL.Sync.fetchAll('SELECT * FROM players WHERE citizenid = ? AND addictedcoke = ?', {citizenid, 1})
        if isaddicted[1] == nil then    
            MySQL.Async.execute('UPDATE players SET addictedcoke = ? WHERE citizenid = ?', {1, citizenid}) 
            TriggerClientEvent('QBCore:Notify', src, 'I wish I was addicted to a high market', "error", 190) 
            TriggerClientEvent('QBCore:Notify', src, 'May God relieve you', "success", 190) 
        end 
        TriggerClientEvent("consumables:client:Cokebaggy", src)      
    end
 end)

-- #Default cokebaggy
-- QBCore.Functions.CreateUseableItem("cokebaggy", function(source, item)
--     local Player = QBCore.Functions.GetPlayer(source)
-- 	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
--     TriggerClientEvent("consumables:client:Cokebaggy", source)
-- end)

QBCore.Functions.CreateUseableItem("crack_baggy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Crackbaggy", source)
end)

QBCore.Functions.CreateUseableItem("xtcbaggy", function(source, item, _)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:EcstasyBaggy", source)
end)

QBCore.Functions.CreateUseableItem("oxy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:oxy", source)
end)

QBCore.Functions.CreateUseableItem("meth", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
   if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        local citizenid = Player.PlayerData.citizenid
        local isaddicted = MySQL.Sync.fetchAll('SELECT * FROM players WHERE citizenid = ? AND addictedmeth = ?', {citizenid, 1})
        if isaddicted[1] == nil then    
            MySQL.Async.execute('UPDATE players SET addictedmeth = ? WHERE citizenid = ?', {1, citizenid}) 
            TriggerClientEvent('QBCore:Notify', src, 'I have been addicted ever since', "error", 190) 
            TriggerClientEvent('QBCore:Notify', src, 'May God relieve you', "success", 190) 
        end       
        TriggerClientEvent("consumables:client:meth", source)
    end
 end)

-- #Meth
-- QBCore.Functions.CreateUseableItem("meth", function(source, item)
--     local Player = QBCore.Functions.GetPlayer(source)
-- 	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
--     TriggerClientEvent("consumables:client:meth", source)
-- end)

QBCore.Functions.CreateUseableItem("curemeth", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:curemeth", source)
    end
 end)
 
 QBCore.Functions.CreateUseableItem("curecoke", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:curecoke", source)
    end
 end)


----------- / Tools

QBCore.Functions.CreateUseableItem("armor", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:UseArmor", source)
end)

QBCore.Functions.CreateUseableItem("heavyarmor", function(source , item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent("consumables:client:UseHeavyArmor", source)
end)

QBCore.Functions.CreateUseableItem("binoculars", function(source)
    TriggerClientEvent("binoculars:Toggle", source)
end)

QBCore.Functions.CreateUseableItem("parachute", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:UseParachute", source)
end)

RegisterNetEvent('qb-smallpenis:server:AddParachute', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.AddItem("parachute", 1)
end)

QBCore.Functions.CreateUseableItem("taser_cardridge", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent("FillTaser", source)
end)

----------- / Firework

QBCore.Functions.CreateUseableItem("firework1", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "proj_indep_firework")
end)

QBCore.Functions.CreateUseableItem("firework2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "proj_indep_firework_v2")
end)

QBCore.Functions.CreateUseableItem("firework3", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "proj_xmas_firework")
end)

QBCore.Functions.CreateUseableItem("firework4", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    local src = source
    TriggerClientEvent("fireworks:client:UseFirework", src, item.name, "scr_indep_fireworks")
end)

----------- / Lockpicking

QBCore.Functions.CreateUseableItem("lockpick", function(source , item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("lockpicks:UseLockpick", source, false)
end)

QBCore.Functions.CreateUseableItem("advancedlockpick", function(source , item)
    local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("lockpicks:UseLockpick", source, true)
end)

QBCore.Functions.CreateUseableItem("9mm_box", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("consumables:client:Unpack9mm", source)
end)

----------- / Unused

-- QBCore.Functions.CreateUseableItem("smoketrailred", function(source, item)
--     local Player = QBCore.Functions.GetPlayer(source)
-- 	   if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
--     TriggerClientEvent("consumables:client:UseRedSmoke", source)
-- end)

-- Events for adding and removing specific items to fix some exploits

RegisterNetEvent('qb-smallpenis:server:AddParachute', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.AddItem("parachute", 1)
end)

RegisterNetEvent('consumables:server:resetArmor', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.AddItem('heavyarmor', 1)
end)

RegisterNetEvent('consumables:server:useHeavyArmor', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('heavyarmor', 1)
end)

RegisterNetEvent('consumables:server:useArmor', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('armor', 1)
end)

RegisterNetEvent('consumables:server:useMeth', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('meth', 1)
end)

RegisterNetEvent('consumables:server:useOxy', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('oxy', 1)
end)

RegisterNetEvent('consumables:server:useXTCBaggy', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('xtcbaggy', 1)
end)

RegisterNetEvent('consumables:server:useCrackBaggy', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('crack_baggy', 1)
end)

RegisterNetEvent('consumables:server:useCokeBaggy', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    -- Player.Functions.RemoveItem('cokebaggy', 1)
end)

RegisterNetEvent('consumables:server:drinkAlcohol', function(item)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    local foundItem = nil

    for k in pairs(ConsumablesAlcohol) do
        if k == item then
            foundItem = k
            break
        end
    end

    if not foundItem then return end

    Player.Functions.RemoveItem(foundItem, 1)
end)

RegisterNetEvent('consumables:server:UseFirework', function(item)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    local foundItem = nil

    for i = 1, #ConsumablesFireworks do
        if ConsumablesFireworks[i] == item then
            foundItem = ConsumablesFireworks[i]
            break
        end
    end

    if not foundItem then return end

    -- Player.Functions.RemoveItem(foundItem, 1)
end)

RegisterNetEvent('consumables:server:addThirst', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.SetMetaData('thirst', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, amount)
end)

RegisterNetEvent('consumables:server:addHunger', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.SetMetaData('hunger', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, amount, Player.PlayerData.metadata.thirst)
end)

RegisterNetEvent('consumables:server:Unpack9mm', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.AddItem("pistol_ammo", 20)
end)


RegisterNetEvent('consumables:server:usecuremeth', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
 
    if not Player then return end
 
    local citizenid = Player.PlayerData.citizenid
        local isaddicted = MySQL.Sync.fetchAll('SELECT * FROM players WHERE citizenid = ? AND addictedmeth = ?', {citizenid, 1})
        if isaddicted[1] ~= nil then    
            MySQL.Async.execute('UPDATE players SET addictedmeth = ? WHERE citizenid = ?', {0, citizenid}) 
            TriggerClientEvent('QBCore:Notify', src, 'Tna7alek idmen meth', "success", 4000)
            TriggerClientEvent('hospital:client:Revive', Player.PlayerData.source) 
            Player.Functions.SetMetaData('addictmeth', 100)
            TriggerClientEvent('hud:client:UpdateNeeds', src, Player.PlayerData.metadata.hunger, Player.PlayerData.metadata.thirst, 100, Player.PlayerData.metadata.addictcoke)
        else            
            TriggerClientEvent('QBCore:Notify', src, 'Deja Makech addicted', "error", 4000) 
        end
 end)
 
 RegisterNetEvent('consumables:server:usecurecoke', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
 
    if not Player then return end
    local citizenid = Player.PlayerData.citizenid
    local isaddicted = MySQL.Sync.fetchAll('SELECT * FROM players WHERE citizenid = ? AND addictedcoke = ?', {citizenid, 1})
    if isaddicted[1] ~= nil then    
        MySQL.Async.execute('UPDATE players SET addictedcoke = ? WHERE citizenid = ?', {0, citizenid}) 
        TriggerClientEvent('QBCore:Notify', src, 'Tna7alek idmen coke', "success", 4000)
        TriggerClientEvent('hospital:client:Revive', Player.PlayerData.source) 
        Player.Functions.SetMetaData('addictcoke', 100)
        TriggerClientEvent('hud:client:UpdateNeeds', src, Player.PlayerData.metadata.hunger, Player.PlayerData.metadata.thirst, Player.PlayerData.metadata.addictmeth, 100)
    else            
        TriggerClientEvent('QBCore:Notify', src, 'Deja Makech addicted', "error", 4000) 
    end  
 end)
 
 
 RegisterNetEvent('consumables:server:addcokedict', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)
 
    if not Player then return end
 
    Player.Functions.SetMetaData('addictcoke', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, Player.PlayerData.metadata.thirst, Player.PlayerData.metadata.addictmeth, amount)
 end)
 
 RegisterNetEvent('consumables:server:addmethdict', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)
 
    if not Player then return end
 
    Player.Functions.SetMetaData('addictmeth', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, Player.PlayerData.metadata.thirst, amount, Player.PlayerData.metadata.addictcoke)
 end)