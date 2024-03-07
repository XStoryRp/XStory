Config = Config or {}

Config.AddTargetBone = function(Bones, xOptions)

--[[-----------------------------------------------------------------------------
You can edit to your own target exports. Below is the format of the variables passed.
---------------------------------------------------------------------------------
Bones: table or string (from Config.Bones)
xOptions:
  options: table
    label: string
    icon: string
    action: function(entity)
    canInteract: function(entity)
distance: number
---------------------------------------------------------------------------------]]
  exports['qb-target']:AddTargetBone(Bones, xOptions)
end

Config.PlayerJobName = function()
  local Player = Core.Functions.GetPlayerData()
  return Player.job.name --This must return the players job name. You can change this to your own framework.
end

Config.Lockpick = function(func, entity, lock, items)
  local item;
  for i = 1, #items do
    if exports['qb-inventory']:HasItem(items[i]) then
      item = items[i]
      break
    end
  end
  if not item then return end

  Core.Functions.Progressbar("lockpick", "Lockpicking..", 5000, false, true, {
    disableMovement = true,
    disableCarMovement = true,
    disableMouse = false,
    disableCombat = true,
  }, {}, {}, {}, function() -- Done
    func(entity, true)
    TriggerServerEvent("q-clamping:server:removelockpick", item) -- you can remove this to stop removing lockpicks, or set chance in server/framework.lua
  end, function() -- Cancel
    Core.Functions.Notify("Cancelled..", "error")
  end)

  ----IF SUCCESS:
  --TriggerServerEvent("q-clamping:server:removelockpick", item) -- you can remove this to stop removing lockpicks, or set chance in server/framework.lua
  --func(entity, lock)
end

function Config.ProgressBar(name, duration, label, animation, cb)
  exports['progressbar']:Progress({
      name = name:lower(),
      duration = duration,
      label = label,
      useWhileDead = false,
      canCancel = true,
      controlDisables = {
          disableMovement = true,
          disableCarMovement = true,
          disableMouse = false,
          disableCombat = true,
      },
      animation = {
          animDict = animation.dict,
          anim = animation.anim,
          flags = animation.flags
      },
  }, function(cancelled)
      if not cancelled then
          cb(true)
      else
          cb(false)
      end
  end)
end

Config.HasItem = function(items)
  for i = 1, #items do
    if exports['qb-inventory']:HasItem(items[i]) then return true end
  end
end