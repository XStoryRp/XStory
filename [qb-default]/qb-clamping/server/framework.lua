Config = Config or {}

Config.RemoveLockpickChance = 50 -- 50% chance to remove lockpick on use



Config.RemoveLockPick = function(source, item)
  local Player = Core.Functions.GetPlayer(source)
  if Player.Functions.RemoveItem(item, 1) then
    TriggerClientEvent("qb-inventory:client:ItemBox", source, Core.Shared.Items[item], "remove")
    return true
  end
  return false
end

Config.AddClampItems = function(source)
  local Player = Core.Functions.GetPlayer(source)
  local allAdded = true
  for k, v in pairs(Config.Clamp.ItemAdd or {}) do
    if not Player.Functions.AddItem(k, v) then
      allAdded = false
    end
  end
  return allAdded
end

Config.AddLockpickedClampItems = function(source)
  local Player = Core.Functions.GetPlayer(source)
  local allAdded = true
  for k, v in pairs(Config.Clamp.LockpickedItemAdd or {}) do
    if not Player.Functions.AddItem(k, v) then
      allAdded = false
    end
  end
  return allAdded
end

Config.RemoveClampItems = function(source)
  local Player = Core.Functions.GetPlayer(source)
  for k, v in pairs(Config.Clamp.ItemRemove or {}) do
    local hasItems = exports["qb-inventory"]:HasItem(source, k, v)
    if not hasItems then
      return false
    end
  end
  for k, v in pairs(Config.Clamp.ItemRemove or {}) do
    if not Player.Functions.RemoveItem(k, v) then
      return false
    end
  end
  return true
end

function Config.SetupItems()
  local items = {
    ['wheel_clamp']	 		    	 	= {['name'] = 'wheel_clamp',			        ['label'] = 'Wheel Clamp',			    ['weight'] = 5000, 		['type'] = 'item', 		['image'] = 'mrc_tireclamp.png', 				['unique'] = true, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = true,   ['description'] = 'Clamp that tire'},
  }
  for k, v in pairs(items) do
      Core.Functions.AddItem(k, v)
  end
end
Config.SetupItems()

