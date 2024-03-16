local serverWeather = GlobalState.weather
local hadSnow = false
local playerState = LocalPlayer.state

local function resetWeatherParticles()
    if hadSnow then
        SetForceVehicleTrails(false)
        SetForcePedFootstepsTracks(false)
        ReleaseNamedScriptAudioBank('ICE_FOOTSTEPS')
        ReleaseNamedScriptAudioBank('SNOW_FOOTSTEPS')
        ForceSnowPass(false)
        WaterOverrideSetStrength(0.5)
        RemoveNamedPtfxAsset('core_snow')

        if IsIplActive('alamo_ice') then
            RemoveIpl('alamo_ice')
        end

        hadSnow = false
    end
end

local function setWeatherParticles()
    if not hadSnow then
        lib.requestNamedPtfxAsset('core_snow', 1000)
        UseParticleFxAsset('core_snow')

        ForceSnowPass(true)
        SetForceVehicleTrails(true)
        SetForcePedFootstepsTracks(true)
        RequestScriptAudioBank('ICE_FOOTSTEPS', false)
        RequestScriptAudioBank('SNOW_FOOTSTEPS', false)
        WaterOverrideSetStrength(0.9)

        if GetResourceState('nve_iced_alamo') ~= 'missing' then
            RequestIpl('alamo_ice')
        end

        hadSnow = true
    end
end

local function setWeather(forceSwap)
    SetRainLevel(-1.0)

    if forceSwap then
        SetWeatherTypeNowPersist(serverWeather.weather)
    else
        SetWeatherTypeOvertimePersist(serverWeather.weather, 60.0)
    end

    if serverWeather.windDirection then
        SetWindDirection(math.rad(serverWeather.windDirection))
    end

    if serverWeather.windSpeed then
        SetWind(serverWeather.windSpeed / 2)
    end

    if serverWeather.hasSnow then
        setWeatherParticles()
    end

    if not serverWeather.hasSnow and hadSnow then
        resetWeatherParticles()
    end
end

AddStateBagChangeHandler('weather', 'global', function(_, _, value)
    if value then
        serverWeather = value

        if playerState.syncWeather then
            setWeather()
        end
    end
end)

AddStateBagChangeHandler('blackOut', 'global', function(_, _, value)
    if type(value) == 'boolean' then
        SetArtificialLightsState(value)
    end

    SetArtificialLightsStateAffectsVehicles(false)
end)

-- Some startup shit --
CreateThread(function ()
    SetWind(0.1)
    WaterOverrideSetStrength(0.5)

    setWeather(true)

    playerState.syncWeather = true
end)

AddStateBagChangeHandler('syncWeather', ('player:%s'):format(cache.serverId), function(_, _, value)
    if not value then
        SetTimeout(0, function()
            while not playerState.syncWeather do
                SetRainLevel(0.0)
                SetWeatherTypePersist('EXTRASUNNY')
                SetWeatherTypeNow('EXTRASUNNY')
                SetWeatherTypeNowPersist('EXTRASUNNY')
                Wait(2500)
            end
        end)
    else
        setWeather(true)
    end
end)


-- Use local variables for frequently used globals
local PlayerPedId = PlayerPedId
local GetEntityCoords = GetEntityCoords
local SetWeatherTypeNow = SetWeatherTypeNow
local SetWeatherTypeNowPersist = SetWeatherTypeNowPersist
local SetOverrideWeather = SetOverrideWeather
local SetTimecycleModifier = SetTimecycleModifier
local SetExtraTimecycleModifier = SetExtraTimecycleModifier
local ClearOverrideWeather = ClearOverrideWeather
local ClearWeatherTypePersist = ClearWeatherTypePersist
local ClearExtraTimecycleModifier = ClearExtraTimecycleModifier
local ClearTimecycleModifier = ClearTimecycleModifier
local Wait = Wait

-- Use constants instead of literals
local DEFAULT_WEATHER = Config.DefaultWeather

-- Use a table to store the weather zones
local weatherZones = {}
for k,v in ipairs(Config.WeathersZones) do
  weatherZones[k] = {coord = v.coord, radius = v.radius, weathertype = v.weathertype,
    timecycles = v.timecycles, extratimecycle = v.extratimecycle}
end

-- Use a numeric for loop to iterate over the weather zones
CreateThread(function()
  while true do
    local ped = PlayerPedId()
    local coord = GetEntityCoords(ped)
    local n = #weatherZones -- Get the number of weather zones
    for i=1,n do -- Use a numeric for loop
      local zone = weatherZones[i] -- Get the current zone
      if #(coord - zone.coord) < zone.radius then -- Check the distance
        -- Set the weather type and time cycle modifier for the zone
        local weathertype = zone.weathertype 
        SetWeatherTypeNow(weathertype)
        SetWeatherTypeNowPersist(weathertype)
        SetOverrideWeather(weathertype)
        if zone.timecycles then
          SetTimecycleModifier(zone.timecycles)
          SetExtraTimecycleModifier(zone.extratimecycle)
        end
        -- Wait until the player leaves the zone
        while #(coord - zone.coord) < zone.radius  do
          coord = GetEntityCoords(ped)
          Wait(1500)
        end
        -- Reset the weather type and time cycle modifier to default
        Default()
        Wait(500)
      end
    end
    Wait(1000)
  end
end)

-- Define a function to reset the weather type and time cycle modifier to default
function Default()
  ClearOverrideWeather()
  ClearWeatherTypePersist()
  Wait(100)
  ClearExtraTimecycleModifier()
  ClearTimecycleModifier()
  SetOverrideWeather(DEFAULT_WEATHER)
  SetWeatherTypeNow(DEFAULT_WEATHER)
  SetWeatherTypeNowPersist(DEFAULT_WEATHER)
end