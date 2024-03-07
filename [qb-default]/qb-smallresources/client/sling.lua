local QBCore = exports['qb-core']:GetCoreObject()
local attached_weapons = {}
local hotbar = {}
local Config = {
    Positions = {
        ["Back"] = {
            bone = 24816,
            x = 0.275,
            y = -0.15,
            z = -0.02,
            x_rotation = 0.0,
            y_rotation = 165.0,
            z_rotation = 0.0
        },
        ["Front"] = {
            bone = 10706,
            x = 0.0,
            y = 0.19,
            z = -0.25,
            x_rotation = 0.0,
            y_rotation = 75.0,
            z_rotation = 180.0
        }
    },

    compatable_weapon_hashes = {
         -- assault rifles:
         ["weapon_carbinerifle"] = { model = "w_ar_carbinerifle", hash = -2084633992},
         ["weapon_carbinerifle_mk2"] = { model = "w_ar_carbineriflemk2", hash = GetHashKey("WEAPON_CARBINERIFLE_MK2")},
         ["weapon_assaultrifle"] = { model = "w_ar_assaultrifle", hash = -1074790547},
         ["weapon_specialcarbine"] = { model = "w_ar_specialcarbine", hash = -1063057011},
         ["weapon_bullpuprifle"] = { model = "w_ar_bullpuprifle", hash = 2132975508},
         ["weapon_advancedrifle"] = { model = "w_ar_advancedrifle", hash = -1357824103},
         -- sub machine guns:
         ["weapon_microsmg"] = { model = "w_sb_microsmg", hash = 324215364},
         ["weapon_assaultsmg"] = { model = "w_sb_assaultsmg", hash = -270015777},
         ["weapon_smg"] = { model = "w_sb_smg", hash = 736523883},
         ["weapon_smgmk2"] = { model = "w_sb_smgmk2", hash = GetHashKey("WEAPON_SMG_MK2")},
         ["weapon_gusenberg"] = { model = "w_sb_gusenberg", hash = 1627465347},
         -- sniper rifles:
         ["weapon_sniperrifle"] = { model = "w_sr_sniperrifle", hash = 100416529},
         -- shotguns:
         ["weapon_assaultshotgun"] = { model = "w_sg_assaultshotgun", hash = -494615257},
         ["weapon_bullpupshotgun"] = { model = "w_sg_bullpupshotgun", hash = -1654528753},
         ["weapon_pumpshotgun"] = { model = "w_sg_pumpshotgun", hash = 487013001},
         ["weapon_musket"] = { model = "w_ar_musket", hash = -1466123874},
         ["weapon_heavyshotgun"] = { model = "w_sg_heavyshotgun", hash = GetHashKey("WEAPON_HEAVYSHOTGUN")},
      }
}
local sling = "Back"
local playerLoaded = false

Citizen.CreateThread(function()
  while true do
    if playerLoaded then
        local me = PlayerPedId()
        local items = QBCore.Functions.GetPlayerData().items
        if items ~= nil then 
          hotbar = { items[1], items[2], items[3], items[4], items[5], items[41] }
          for slot, item in pairs(hotbar) do
            if item ~= nil and item.type == "weapon" and Config.compatable_weapon_hashes[item.name] ~= nil then
              local wep_model = Config.compatable_weapon_hashes[item.name].model
              local wep_hash = Config.compatable_weapon_hashes[item.name].hash
              
              if not attached_weapons[wep_model] and GetSelectedPedWeapon(me) ~= wep_hash then
                  AttachWeapon(wep_model, wep_hash, Config.Positions[sling].bone, Config.Positions[sling].x, Config.Positions[sling].y, Config.Positions[sling].z, Config.Positions[sling].x_rotation, Config.Positions[sling].y_rotation, Config.Positions[sling].z_rotation)
              end
            end
          end
          for key, attached_object in pairs(attached_weapons) do
              if GetSelectedPedWeapon(me) == attached_object.hash or not inHotbar(attached_object.hash) then -- equipped or not in weapon wheel
                DeleteObject(attached_object.handle)
                attached_weapons[key] = nil
              end
          end
        end
      end
    Wait(500)
  end
end)

function inHotbar(hash)
  for slot, item in pairs(hotbar) do
    if item ~= nil and item.type == "weapon" and Config.compatable_weapon_hashes[item.name] ~= nil then
      if hash == GetHashKey(item.name) then
        return true
      end
    end
  end
  return false
end

function AttachWeapon(attachModel,modelHash,boneNumber,x,y,z,xR,yR,zR)
	local bone = GetPedBoneIndex(PlayerPedId(), boneNumber)
	RequestModel(attachModel)
	while not HasModelLoaded(attachModel) do
		Wait(100)
	end

  attached_weapons[attachModel] = {
    hash = modelHash,
    handle = CreateObject(GetHashKey(attachModel), 1.0, 1.0, 1.0, true, true, false)
  }

	AttachEntityToEntity(attached_weapons[attachModel].handle, PlayerPedId(), bone, x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
end

RegisterNetEvent('mg-weapon-sling:client:changeSling')
AddEventHandler('mg-weapon-sling:client:changeSling', function()
    if sling == "Back" then 
      sling = "Front"
    else
      sling = "Back"
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
  playerLoaded = true;
end)