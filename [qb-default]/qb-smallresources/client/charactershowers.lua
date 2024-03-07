local QBCore = exports['qb-core']:GetCoreObject()

local shower = false

CreateThread(function()
    for i, v in pairs(Config.Locations) do
        local coords = Config.Locations[i].coords
        local spherename = Config.Locations[i].name
        if Config.Framework == 'QB' then
            exports['qb-target']:AddCircleZone(spherename, vector3(coords.x, coords.y, coords.z), 0.6, {
                name = spherename,
                useZ = true,
                }, {
                    options = {
                        {
                            type = "client",
                            event = 'serrulata-shower:client:takeShower',
                            icon = 'fas fa-shower',
                            label = 'Take Shower',
                            canInteract = function(entity, distance, coords, name)
                                if shower == false and distance < 1 then
                                    return true
                                else
                                    return false
                                end
                            end
                        },
                    },
                distance = 1.5
            })
        elseif Config.Framework == 'OX' then
            local coords = Config.Locations[i].coords
            local radius = Config.Locations[i].radius
            exports.ox_target:addSphereZone({ -- Enter
            coords = vector3(coords.x, coords.y, coords.z),
            radius = radius,
            options = {
                {
                    name = 'sphere',
                    icon = 'fas fa-shower',
                    label = 'Take Shower',
                    onSelect = function()
                        TriggerEvent('serrulata-shower:client:takeShower')
                    end,
                    canInteract = function(entity, distance, coords, name)
                        if shower == false and distance < 1 then
                            return true
                        else
                            return false
                        end
                    end
                },
            }
            })
        end
    end
end)
RegisterNetEvent('serrulata-shower:client:takeShower', function()
    local PlayerPed = plyPed
    if GetEntityModel(plyPed) == -1667301416 then
        sex = 'female'
    else
        sex = 'male'
    end
    if sex == 'male' then
        if shower == false then
            shower = true
            FreezeEntityPosition((PlayerPedId()), true)
            local coords = GetEntityCoords(PlayerPedId())
            maleProgressBar()
            while shower == true do
                if not HasNamedPtfxAssetLoaded("core") then
                    RequestNamedPtfxAsset("core")
                    while not HasNamedPtfxAssetLoaded("core") do
                        Wait(1)
                    end
                end
                UseParticleFxAssetNextCall("core") 
                particles  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) 
                UseParticleFxAssetNextCall("core") 
                Wait(5000)
            end
        end
    elseif sex == 'female' then
        if shower == false then
            shower = true
            FreezeEntityPosition((PlayerPedId()), true)
            local coords = GetEntityCoords(PlayerPedId())
            femaleProgressBar()
            while shower == true do
                if not HasNamedPtfxAssetLoaded("core") then
                    RequestNamedPtfxAsset("core")
                    while not HasNamedPtfxAssetLoaded("core") do
                        Wait(1)
                    end
                end
                UseParticleFxAssetNextCall("core") 
                particles  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) 
                UseParticleFxAssetNextCall("core") 
                Wait(5000)
            end
        end
    end
end)

function maleProgressBar()
    if shower == true then
        QBCore.Functions.Progressbar("shower", "Taking a shower", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@mp_yacht@shower@male@",
            anim = "male_shower_enter_into_idle",
            flags = 20,
        }, {}, {}, function() -- Done
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            TriggerServerEvent('hud:server:RelieveStress', math.random(10,30))
            shower = false
        end, function() -- Cancel
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            shower = false
        end)
    end
end
function femaleProgressBar()
    if shower == true then
        QBCore.Functions.Progressbar("shower", "Taking a shower", 9000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@mp_yacht@shower@female@",
            anim = "shower_enter_into_idle",
            flags = 16,
        }, {}, {}, function() -- Done
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            TriggerServerEvent('hud:server:RelieveStress', 25)
            shower = false
        end, function() -- Cancel
            FreezeEntityPosition((PlayerPedId()), false)
            ClearPedTasksImmediately(PlayerPedId()) 
            StopParticleFxLooped(particles, 0) 
            shower = false
        end)
    end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('onResourceStart', function(resource)
   if resource == GetCurrentResourceName() then
      print('Serrulata-Shower started')
   end
end)
AddEventHandler('onResourceStop', function(resource)
   if resource == GetCurrentResourceName() then
      if Config.Framework == 'QB' then
        exports['qb-target']:RemoveZone("sphere1")
        -- print('Serrulata-Shower stopped')
      elseif Config.Framework == 'OX' then
        print('Serrulata-Shower stopped')
      end
   end
end)



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local freemodeModels<const> = {
    [`mp_m_freemode_01`] = 'mp_m_freemode_01',
    [`mp_f_freemode_01`] = 'mp_f_freemode_01'
  }
  
  ---Is the model either of the freemode models?
    ---@param modelHash string|integer
  local function isFreemodeModel(modelHash)
    return freemodeModels[modelHash] ~= nil
  end
  
  ---Gets head blend data
    ---@param ped integer
    ---@return { shapeFirst: integer, shapeSecond: integer, shapeThird: integer, skinFirst: integer, skinSecond: integer, skinThird: integer, shapeMix: number, skinMix: number, thirdMix: number }
  local function getHeadBlendData(ped)
    -- GTA returns some dumb struct with pointers
    -- This is a goofy way to get the data in Lua.
    -- Alternatively, you would need a C# or JS
    -- script to get the data. However, this is
    -- a lot less work.
    -- People discussed this here:
    -- https://forum.cfx.re/t/head-blend-data/212575/24
    local tbl<const> = {
      Citizen.InvokeNative(0x2746BD9D88C5C5D0, ped,
        Citizen.PointerValueIntInitialized(0),
        Citizen.PointerValueIntInitialized(0),
        Citizen.PointerValueIntInitialized(0),
        Citizen.PointerValueIntInitialized(0),
        Citizen.PointerValueIntInitialized(0),
        Citizen.PointerValueIntInitialized(0),
        Citizen.PointerValueFloatInitialized(0),
        Citizen.PointerValueFloatInitialized(0),
        Citizen.PointerValueFloatInitialized(0)
      )
    }
  
    return {
      shapeFirst = tbl[1],
      shapeSecond = tbl[2],
      shapeThird = tbl[3],
      skinFirst = tbl[4],
      skinSecond = tbl[5],
      skinThird = tbl[6],
      shapeMix = tbl[7],
      skinMix = tbl[8],
      thirdMix = tbl[9]
    }
  end
  
  local savedBlendData, savedFaceFeatures = {}, {}
  local isHeadShrunken = false
  
  local lastMaskDrawable, lastMaskTexture = -1, -1
  local function loop()
    local ped<const> = PlayerPedId()
    if not DoesEntityExist(ped) then return end
  
    local currentMaskDrawable<const> = GetPedDrawableVariation(ped, 1)
    local currentMaskTexture<const>  = GetPedTextureVariation(ped, 1)
    if currentMaskDrawable == lastMaskDrawable and currentMaskTexture == lastMaskTexture then return end
    lastMaskDrawable = currentMaskDrawable
    lastMaskTexture = currentMaskTexture
    
    local maskHash<const> = GetHashNameForComponent(ped, 1, currentMaskDrawable, currentMaskTexture)
    if currentMaskDrawable > 0 and maskHash == 0 then return end
  
    local pedModelHash<const> = GetEntityModel(ped)
    if not isFreemodeModel(pedModelHash) then return end
  
    if not DoesShopPedApparelHaveRestrictionTag(maskHash, `SHRINK_HEAD`, 0) then
      if isHeadShrunken then
        CreateThread(function()
          SetPedHeadBlendData(ped,
            savedBlendData.shapeFirst, savedBlendData.shapeSecond, savedBlendData.shapeThird,
            savedBlendData.skinFirst, savedBlendData.skinSecond, savedBlendData.skinThird,
            savedBlendData.shapeMix, savedBlendData.skinMix, savedBlendData.thirdMix,
            false
          )
          repeat Wait(0) until HasPedHeadBlendFinished(ped)
          for i = 0, 19 do
            SetPedFaceFeature(ped, i, savedFaceFeatures[i])
          end
          isHeadShrunken = false
        end)
      end
      return
    end
  
    local headBlendData<const> = getHeadBlendData(ped)
  
    savedBlendData = headBlendData
    isHeadShrunken = true
  
    SetPedHeadBlendData(ped,
      freemodeModels[pedModelHash] == 'mp_m_freemode_01' and 0 or 21, 0, 0, -- Reset shape
      headBlendData.skinFirst, headBlendData.skinSecond, headBlendData.skinThird, -- Keep skin
      0.0, headBlendData.skinMix, 0.0, -- Reset all but skin mix
      false -- isParent (Unk effect)
    )
  
    for i = 0, 19 do
      savedFaceFeatures[i] = GetPedFaceFeature(ped, i)
      SetPedFaceFeature(ped, i, 0.0)
    end
  end
  
  CreateThread(function()
    while true do
      loop() -- This is a function, because it's easier to return out of
      Wait(0)
    end
  end)