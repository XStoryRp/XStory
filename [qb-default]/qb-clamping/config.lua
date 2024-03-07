------------------------------------------------------------------------------------------------------------------------
-- Install instructions:
-- 1. Drag and drop into resources folder.
-- 2. Add ensure q-clamping to your server.cfg
-- 3. Add the images to your qb-inventory/html/images folder or equivalent.
--
-- Soft Dependencies:
--    qb-core
--    qb-inventory
--    qb-target
-------------------------------------------------------------------------------------------------------------------------


Core = exports['qb-core']:GetCoreObject() -- QBCore Framework

Config = {}

Config.Bones = { --Bones we can add clamps to. You most likely dont need to touch this.
  "wheel_lf",
  "wheel_rf",
  "wheel_lr",
  "wheel_rr",
}

Config.Clamp = {
  setuptime = 500, --Time it takes to attach/detach clamp
  model = "mrc_tire_clamp", -- Model of the clamp
  position = { -- Postion of the clamp, relevant to bone
    ["wheel_lf"] = {index = 0, offset = vector3(-0.15, 0.0, -0.225), rotation = vector3(0.0, 0.0, 180.0)},
    ["wheel_rf"] = {index = 1, offset = vector3(-0.15, 0.0, -0.225),  rotation = vector3(0.0, 0.0, 180.0)},
    ["wheel_lr"] = {index = 2, offset = vector3(-0.20, 0.0, -0.225), rotation = vector3(0.0, 0.0, 180.0)},
    ["wheel_rr"] = {index = 3, offset = vector3(-0.20, 0.0, -0.225),  rotation = vector3(0.0, 0.0, 180.0)},
  },
  UseItems = true, -- Force player to have item to clamp, This requires the item to be possessed by player to clamp, regardless of job.
  ItemNames = { --Item names to check for to allow clamping. This has more priotiry over job check. [UseItems must be true]
    "wheel_clamp",
  },
  ItemRemove = { --Item names and amounts to remove from player when clamping. [UseItems must be true]
    ["wheel_clamp"] = 1,
  },
  ItemAdd = { --Item names and amounts to add to player when unclamping. [UseItems must be true]
    ["wheel_clamp"] = 1,
  },
  LockpickedItemAdd = { --Item names and amounts to add to player when unclamping with lockpick. [UseItems must be true]
    ["wheel_clamp"] = 1  --["scrap_metal"] = 100,
  },
}
Config.WheelFallOffDistance = 0.25
Config.Anim = {
  dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
  anim = "machinic_loop_mechandplayer",
}


Config.Allowed = { --Table of checks to allow use of clamp (without item)
  jobs = {"police", "parkingwarden"},
}

--[[
    List in order which you want to check and remove from player.
    Example: If player has lockpick, it will use that, if not it will use advancedlockpick.
]]
Config.Lockpicks = {
  "lockpick",
  "advancedlockpick",
}

-- LEAVE THIS ALONE, PLEASE.
for _type in pairs(Config.Allowed) do
  for i=1, #Config.Allowed[_type] do
    Config.Allowed[_type][Config.Allowed[_type][i]] = true
  end
end

Config.TargetOptions = {
  clamp = {
    name = "clamp",
    label = "Clamping",
    duration = 5000,
    anim = {
      dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
      anim = "machinic_loop_mechandplayer",
      flags = 49,
    },
  },
  unclamp = {
    name = "unclamp",
    label = "Unclamp",
    duration = 5000,
    anim = {
      dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
      anim = "machinic_loop_mechandplayer",
      flags = 49,
    },
  },
}