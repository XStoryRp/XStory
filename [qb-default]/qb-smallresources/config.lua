Config = {}
V_Stam = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

-- To make this simple. Everything you need is in the config, except for discord, weapon drops, vehicle classes for cruise, hands up disabled keys, and recoil

Config.AFK = {
    ignoredGroups = {
        ['mod'] = false,
        ['admin'] = false,
        ['god'] = false,
        ['dev'] = true,
    },
    secondsUntilKick = 1140, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = true -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.HandsUp = {
    command = 'ha',
    keybind = 'X',
    controls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
}

Config.Binoculars = {
    fov_max = 100.0,
    fov_min = 7.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 8.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = false, -- Police Vehicles
    [2] = true, -- Police Helicopters
    [3] = false, -- Fire Department Vehicles
    [4] = false, -- Swat Vehicles
    [5] = false, -- Ambulance Vehicles
    [6] = false, -- Police Motorcycles
    [7] = false, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = true, -- PoliceAutomobileWaitPulledOver
    [10] = true, -- PoliceAutomobileWaitCruising
    [11] = true, -- Gang Members
    [12] = false, -- Swat Helicopters
    [13] = true, -- Police Boats
    [14] = false, -- Army Vehicles
    [15] = false, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

-- Enable or disable the realistic flash on moving 
Config.SetFlashLightKeepOnWhileMoving = true

-- takehostage
Config.Text = "[G] RELEASE | [H] KILL"


Config.Density = {
    VehDensity = 2.0,
    PedDensity = 3.1,
    RanVehDensity = 3.3, 
    ParkCarDensity = 3.0,
    ScenePedDensity = 5.9,
}

Config.AcceptedWeapons = {
    `WEAPON_PISTOL`,
    `WEAPON_GLOCK17`
}

Config.CustomBones = {
    -- `SPAWN_CODE` = 'Custom Bone'
}


Config.Stun = {
    active = true,
    min = 2050,
    max = 11000
}

Config.RemovePistolWhipping = false  -- Removes Pistol Whipping

Config.Cruise = 'MP/H'
Config.IdleCamera = false
Config.disableHandsupControls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 15
Config.DamageNeeded = 85.0 -- vehiclepush 0-1000
Config.EnableProne = false -- prone isnt recomended at this time
Config.MapText = "FiveM" -- This is the name / text shown above the map

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.ConsumablesEat = {
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["sandwich"] = math.random(15, 70),
    ["tosti"] = math.random(5, 15),
    ["marshy-aero"] = math.random(15, 20), 
    ["marshy-beanz"] = math.random(5, 10),     
    ["marshy-bourbon"] = math.random(35, 54),
    ["marshy-bubbaloo"] = math.random(35, 54),
    ["marshy-bueno"] = math.random(35, 54),
    ["marshy-chrunchie"] = math.random(35, 54),
    ["marshy-creame-egg"] = math.random(35, 54),
    ["marshy-crumpets"] = math.random(35, 54),    
    ["marshy-custard-cream"] = math.random(35, 54),
    ["marshy-dairymilk"] = math.random(35, 54),
    ["marshy-dibdabs"] = math.random(35, 54),
    ["marshy-digestive"] = math.random(35, 54),
    ["marshy-dunkers"] = math.random(35, 54),    
    ["marshy-flake"] = math.random(35, 54),
    ["marshy-wispa"] = math.random(35, 54),
    ["marshy-frazzles"] = math.random(35, 54),
    ["marshy-freddo"] = math.random(35, 54),
    ["marshy-fruit-tella"] = math.random(35, 54),
    ["marshy-hobnobs"] = math.random(35, 54),
    ["marshy-hula-hoops"] = math.random(35, 54),    
    ["marshy-jammy-dodger"] = math.random(35, 54),
    ["marshy-kipling"] = math.random(35, 54),
    ["marshy-kitkat"] = math.random(35, 54),
    ["marshy-kp-peanuts"] = math.random(35, 54),
    ["marshy-malteasers"] = math.random(35, 54),
    ["marshy-maoam-stripes"] = math.random(35, 54),
    ["marshy-marylands"] = math.random(35, 54),
    ["marshy-milkeybar"] = math.random(35, 54),
    ["marshy-milkeyway"] = math.random(35, 54),
    ["marshy-millions"] = math.random(35, 54),
    ["marshy-mini-rolls"] = math.random(35, 54),
    ["marshy-monstor-munch"] = math.random(35, 54),
    ["marshy-niknaks"] = math.random(35, 54),
    ["marshy-penguin"] = math.random(35, 54),    
    ["marshy-pom-bear"] = math.random(35, 54),
    ["marshy-pork-pie"] = math.random(35, 54),
    ["marshy-pot-noodle"] = math.random(35, 54),
    ["marshy-pudding"] = math.random(35, 54),
    ["marshy-quavers"] = math.random(35, 54),
    ["marshy-sensations"] = math.random(35, 54),
    ["marshy-skips"] = math.random(35, 54),
    ["marshy-skittles"] = math.random(35, 54),
    ["marshy-space-raiders"] = math.random(35, 54),    
    ["marshy-squashies"] = math.random(35, 54),
    ["marshy-starbursts"] = math.random(35, 54),
    ["marshy-tangfastics"] = math.random(35, 54),
    ["marshy-teacake"] = math.random(35, 54),
    ["marshy-timeout"] = math.random(35, 54),
    ["marshy-twirl"] = math.random(35, 54),
    ["marshy-wagonwheel"] = math.random(35, 54),
    ["marshy-walkers.cao"] = math.random(35, 54),
    ["marshy-walkers.rc"] = math.random(35, 54),    
    ["marshy-walkers.rs"] = math.random(35, 54),
    ["marshy-walkers.sav"] = math.random(35, 54),
    ["marshy-corner.bcf"] = math.random(35, 54),
    ["marshy-corner.s"] = math.random(35, 54),
    ["marshy-corner.vcb"] = math.random(35, 54),
    ["marshy-mccoys.fgs"] = math.random(35, 54),
    ["marshy-mccoys.salted"] = math.random(35, 54),
    ["marshy-mccoys.sav"] = math.random(35, 54),
    ["marshy-mccoys.tsc"] = math.random(35, 54),
    ["marshy-dorito.classic"] = math.random(35, 54),
    ["marshy-dorito.coolranch"] = math.random(35, 54),
    ["marshy-dorito.flaming"] = math.random(35, 54),
    ["marshy-dorito.heatwave"] = math.random(35, 54),
    ["marshy-greggs.d"] = math.random(35, 54),
    ["marshy-greggs.sb"] = math.random(35, 54),
    ["marshy-greggs.sr"] = math.random(35, 54),
    ["marshy-marshmallow"] = math.random(35, 54),
    ["marshy-maxibon"] = math.random(35, 54),
    ["marshy-pringles.o"] = math.random(35, 54),
    ["marshy-pringles.sc"] = math.random(35, 54),
    ["marshy-starmix"] = math.random(35, 54),
    ["crisps"] = math.random(20, 50),
    ["egochaser"] = math.random(20, 50),
    ["nachos"] = math.random(20, 50),
    ["potato"] = math.random(5,13),
    ["tomato"] = math.random(2,4),
    ["orange"] = math.random(1,19),
    ["cabbage"] = math.random(0,4),
    ["burgershot_bigking"] = math.random(20, 40),
    ["burgershot_bleeder"] = math.random(10, 15),
    ["burgershot_goatwrap"] = math.random(15, 55),
    ["burgershot_macaroon"] = math.random(10, 15),
    ["burgershot_patatob"] = math.random(15, 20),
    ["burgershot_patatos"] = math.random(5, 10),
    ["burgershot_shotnuggets"] = math.random(10, 15),
    ["burgershot_shotrings"] = math.random(10, 15),
    ["burgershot_thesmurfsicecream"] = math.random(1, 3),
    ["burgershot_smurfetteicecream"] = math.random(1, 3),
    ["burgershot_matchaicecream"] = math.random(1, 3),
    ["burgershot_ubeicecream"] = math.random(1, 3),
    ["burgershot_unicornicecream"] = math.random(1, 3),
    ["burgershot_vanillaicecream"] = math.random(1, 3),
    ["burgershot_chocolateicecream"] = math.random(1, 3),
    ["burgershot_strawberryicecream"] = math.random(1, 3),
    ["hotdog"] = math.random(1,30),
}

Config.ConsumablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
    ["kurkakola"] = math.random(35, 54),
    ["barr-bubblegum"] = math.random(40, 50),
    ["barr-cherryade"] = math.random(40, 50),
    ["barr-cola"] = math.random(40, 50),
    ["barr-creamsoda"] = math.random(40, 50),
    ["barr-lemonade"] = math.random(40, 50),
    ["cadbury-hotchocolate"] = math.random(40, 50),
    ["calypso-lemonage"] = math.random(40, 50),
    ["calypso-oceanblue"] = math.random(40, 50),
    ["calypso-pineapplepeach"] = math.random(40, 50),
    ["calypso-pradisepunch"] = math.random(40, 50),
    ["calypso-strawberry"] = math.random(40, 50),
    ["calypso-tripleMelon"] = math.random(40, 50),
    ["coke-cherry"] = math.random(40, 50),
    ["coke-cinnamon"] = math.random(40, 50),
    ["coke-coffee"] = math.random(40, 50),
    ["coke-diet"] = math.random(40, 50),
    ["coke-mango"] = math.random(40, 50),
    ["coke-peach"] = math.random(40, 50),
    ["drpepper-cherry"] = math.random(40, 50),
    ["drpepper-cola"] = math.random(40, 50),
    ["drpepper-vanilla"] = math.random(40, 50),
    ["fanta-grape"] = math.random(40, 50),
    ["fanta-orange"] = math.random(40, 50),
    ["fanta-peach"] = math.random(40, 50),
    ["fanta-pineapple"] = math.random(40, 50),
    ["fanta-strawberry"] = math.random(40, 50),
    ["ka-blackgrape"] = math.random(40, 50),
    ["ka-fruitpunch"] = math.random(40, 50),
    ["ka-pineapple"] = math.random(40, 50),
    ["ka-strawberry"] = math.random(40, 50),
    ["ka-tropicalkrush"] = math.random(40, 50),
    ["kenco-americano"] = math.random(40, 50),
    ["kenco-cappaccino"] = math.random(40, 50),
    ["kenco-latte"] = math.random(40, 50),
    ["lucozade-apple"] = math.random(40, 50),
    ["lucozade-cherry"] = math.random(40, 50),
    ["lucozade-mango"] = math.random(40, 50),
    ["lucozade-orange"] = math.random(40, 50),
    ["marinda-orange"] = math.random(40, 50),
    ["marinda-strawberry"] = math.random(40, 50),
    ["oasis-blackcurrentapple"] = math.random(40, 50),
    ["oasis-citruspunch"] = math.random(40, 50),
    ["oasis-summerfruits"] = math.random(40, 50),
    ["prime-blueraspberry"] = math.random(40, 50),
    ["prime-grape"] = math.random(40, 50),
    ["prime-icepop"] = math.random(40, 50),
    ["prime-lemonlime"] = math.random(40, 50),
    ["prime-metamoon"] = math.random(40, 50),
    ["prime-orange"] = math.random(40, 50),
    ["ribena-pineapple"] = math.random(40, 50),
    ["ribena-raspberry"] = math.random(40, 50),
    ["ribena-strawberry"] = math.random(40, 50),
    ["rubicon-cherryraspberry"] = math.random(40, 50),
    ["rubicon-orangemango"] = math.random(40, 50),
    ["rubicon-strawberrykiwi"] = math.random(40, 50),
    ["vimto-orange"] = math.random(40, 50),
    ["vimto-orangePineapple"] = math.random(40, 50),
    ["vimto-original"] = math.random(40, 50),
    ["vimto-strawberry"] = math.random(40, 50),
    ["yazoo-banana"] = math.random(40, 50),
    ["yazoo-chocolate"] = math.random(40, 50),
    ["yazoo-strawberry"] = math.random(40, 50),
    ["yazoo-vanilla"] = math.random(40, 50),
    ["yorkshire-tea"] = math.random(40, 50),
    ["ecola"] = math.random(35, 54),
    ["ecoladiet"] = math.random(35, 54),
    ["sprunk"] = math.random(35, 54),
    ["sprunklight"] = math.random(35, 54),
    ["burgershot_colab"] = math.random(30, 49),
    ["burgershot_colas"] = math.random(5, 50),
    ["burgershot_coffee"] = math.random(20, 25),
}

Config.ConsumablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
}


-- Custom Consumables hand bones
-- 18905 left hand
-- 57005 right hand
Config.ConsumablesCustom = {
    -- ['newitem'] = {
    --     ['progress'] = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     ['animation'] = {
    --         animDict = "amb@prop_human_bbq@male@base",
    --         anim = "base",
    --         flags = 8,
    --     },
    --     ['prop'] = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     ['replenish'] = {
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40),
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 15 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        -- "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        -- "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        -- "WORLD_VEHICLE_AMBULANCE",
        -- "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        -- "WORLD_VEHICLE_POLICE_CAR",
        -- "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}
-- Manual gear
Config.Debug = false -- toggle this on if you have issues, BEFORE asking for help
Config.OxLib = false -- set to true if you use Oxlib, will otherwise default to QBcore. Make sure to double check fxmanifest if this is included or not

Config.CwTuning = false -- Set to true if you use CW tuning and want to use that scripts gearbox swaps
Config.UseOtherCheck = false -- set to true and add your code to client.lua. Search for "ADD YOUR CHECK HERE" in the file

Config.ClutchTime = 400 -- value / clutchChangeRate As standard, GTA uses 900 for this value but I found that lower values works better. Higher means slower gearing.

Config.Keys = {
    gearUp = 'UP',
    gearDown = 'DOWN'
}

Config.rhdCars = {
    -- "carNameHere",
}


Config.BlacklistedVehs = {
    [`SHAMAL`] = false,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = false,
    [`MULE`] = false,
    [`MAVERICK`] = false,
    [`BLIMP`] = false,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`monster`] = true,
    [`MARSHALL`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    --NEW BLACKLISTVEH
    [`deathbike2`] = true,
    [`deathbike`] = true,
    [`domitor4`] = true,
    [`domitor5`] = true,
    [`domitor6`] = true,
    [`imperator3`] = true,
    [`imperator2`] = true,
    [`dune2`] = true,
    [`dune3`] = true,
    [`dune4`] = true,
    [`dune5`] = true,
    [`technical`] = true,
    [`technical2`] = true,
    [`technical3`] = true,
    [`brickade`] = true,
    [`rallytruck`] = true,
    [`pbus2`] = true,
    [`zr380`] = true,
    [`zr3802`] = true,
    [`toreador`] = true,
    --END NEW BLACKLISTVEH
    [`blimp3`] = false,
    [`menacer`] = true,
    [`kurma2`] = true,
    [`kurma`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true,
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = false,
    [`s_m_y_sheriff_01`] = false,
    [`s_m_y_cop_01`] = false,
    [`s_f_y_sheriff_01`] = false,
    [`s_f_y_cop_01`] = false,
    [`s_m_y_hwaycop_01`] = false,
}

Config.DisableVestDrawable = false -- Set to TRUE to disable the vest equipped when using heavy armor.
Config.HolsterVariant = {130,122,3,6,8}
Config.HolsterableWeapons = {
    --'WEAPON_STUNGUN',
    'WEAPON_TASER',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_REVOLVER',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL'
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

-- PARKINGMETTER ROB

Config.MinMoney = 0 -- minimum money reward

Config.MaxMoney = 340 -- maximum money reward

Config.Cooldown = 2000 -- in milliseconds

Config.dispatch = true -- if you want dispatch call set it true but if you don't want set it false



-- Character Showers 


--// Framework \\--

Config.Framework = 'QB' -- 'QB', 'OX'

--// Target Zones \\--
Config.Locations = {
    [1] = {
        coords = vector3(-767.26, 327.2, 170.64), 
        radius = 0.5,
        name = 'sphere1',
    },
    --[[ Example for adding more]]
    [2] = {
        coords = vector3(-665.26, -1097.52, -14.22), 
        radius = 0.5,
        name = 'sphere2',
    },
}

-- [[Vape System]] --

Config.Vape = {
    -- Key used to take a hit of the vape (51)"E" by default.
DragControl = 51,

    -- Key used to reset to the resting vape position (58)"G" by default.
RestingAnim = 58,

    -- The amount of time in (ms) you will need to hold the button in order to commit to the action. (250) by default.
ButtonHoldTime = 150,

    -- Size of the vape clouds. (0.5) by default.
SmokeSize = 0.9,

    -- the Odds of your Mod exploding in your face. (10594) by default. lower the number to increase the chance you have to explode.
FailureOdds = 10594, -- 10594 = 0.0001% chance

    -- The amount of time in (ms) the player has to wait before the can hit the vape again. (4000) by default.
VapeCoolDownTime = 4000,

    -- The amount of time in (ms) the smoke from the vape will linger. (2800) by default.
VapeHangTime = 3000,

    -- Whether or not you want ace permissions to be enabled, False = Everyone Can vape, 
VapePermission = false,

    -- Ace permissions group to allow access. **REQUIRED IF YOU HAVE PERMISSIONS ENABLED**
PermissionsGroup = "ADD_ACE_GROUP_HERE",

    -- If permissions are enabled you can set the denied access message here. **REQUIRED IF YOU HAVE PERMISSIONS ENABLED**
InsufficientMessage = "You do not have permission to do this.",

    -- This will Enable and disable the debug commands. 
Debug = false,

    -- The Transparency of the help text when it starts. (0) by default. Just leave this alone...
HelpTextStartingAlpha = 0,

    -- Hold long in (ms) will the help message appear for. (8000) by default.
HelpTextLength = 8000,
}

-- Tirelash

Config.checkForUpdates = false -- Check for Updates?

Config.TargetSystem = 'qb-target' -- Choices confirmed working are currently 'qtarget' and 'qb-target'

Config.allowedWeapons = {
    `WEAPON_KNIFE`,
    `WEAPON_SWITCHBLADE`
}

RegisterNetEvent('wasabi_tireslash:notify')
AddEventHandler('wasabi_tireslash:notify', function(message)	
    -- Place notification system info here, ex: exports['mythic_notify']:SendAlert('primary', message)
    QBCore.Functions.Notify(message, 'error')
end)

Language = {
    ['no_weapon'] = 'You need to be holding something sharp to do this!',
    ['car_slashed'] = 'Someone slashed your tire!',
    ['already_slashed'] = 'This tire has already been flattened!'
}

-- Motocross Tricks 

Config.Eject                = true      -- This value determines whether the player will be ejected if they land while doing a trick or not (The default value is true)
Config.InstantAnimStop      = false      -- This value determines whether the anim should instantly stopped, otherwise it will just go back to the sitting position gradually (The default value is true)

Config.SpecificVehicle      = true      -- If set to true, you will be able to do tricks only on some specific bikes from the 'Config.Vehicles' list
Config.Vehicles             = {         -- Don't use "Model Name" since there is no native to get model name from vehicle in GTA, only use "Text Label Name(s)". You can found them here: https://gta.fandom.com/wiki/Category:Motorcycles_Vehicle_Class
    "ENDURO",
    "ESSKEY",
    "MANCHEZ",
    "SANCHEZ01",
    "SANCHEZ02"
}

Config.SimpleKey            = 76        -- Set the key used for the simple tricks (76 is 'INPUT_VEH_HANDBRAKE' aka SPACEBAR per default)
-- You can find those value here: https://docs.fivem.net/docs/game-references/controls/

-- Bike pickup
Config.Interaction = "target" --qb/target (you dont need to put  target if you want to use target, can just leave blank)
Config.InteractKey = 'G'
Config.DrawTextPosition = "left"
Config.Bikes = {
    ['bmx'] = {
        ['x'] = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
    ['tribike3'] = {
        x = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
    ['fixter'] = {
        x = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
    ['cruiser'] = {
        x = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
    ['scorcher'] = {
        x = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
    ['tribike2'] = {
        x = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
    ['tribike'] = {
        x = 0.0,
        y = 0.35,
        z = 0.160,
        RotX = 180.0,
        RotY = 170.0,
        RotZ = 90.0
    },
}


Config.UseLanguage = "en"
Config.UseSoundEffect = true

Config.Elevators = {
    ["PillBoxOne"] = {
        Name = "Elevator Two",
        Sound = "LiftSoundBellRing",
        Floors = {
            [1] = {
                Label = "Second Floor",
                FloorDesc = "Hospital Rooftop",
                Coords = vector3(338.51, -583.81, 74.16),
                ExitHeading = "250.07"
            },
            [2] = {
                Label = "First Floor",
                FloorDesc = "Hospital Upper Lobby",
                Coords = vector3(327.02, -603.85, 43.28),
                ExitHeading = "337.25"
            },
            [3] = {
                Label = "Ground Floor",
                FloorDesc = "Hospital Garage",
                Coords = vector3(340.18, -584.68, 28.8),
                ExitHeading = "104.87"
            },
        }
    },
    ["PillBoxTwo"] = {
        Name = "Elevator One",
        Sound = "LiftSoundBellRing",
        Floors = {
            [1] = {
                Label = "First Floor",
                FloorDesc = "Hospital Upper Lobby",
                Coords = vector3(330.43, -601.16, 43.28),
                ExitHeading = "70.91"
            },
            [2] = {
                Label = "Ground Floor",
                FloorDesc = "Hospital Lower Lobby",
                Coords = vector3(345.62, -582.54, 28.8),
                ExitHeading = "262.86"
            },
        }
    }
}

Config.PolyZone = false -- This will show the box zones | If set to false it will hide the box zones

Config.WaitTime = 8000 -- This will set the time for the ProgressBar | 1000 = 1 second

Config.ElevatorButton = {

    ------ / Pill Box Hospital
    -- UnRestricted
    [1] = { name = "Ground Floor", location = vector3(346.10, -581.00, 28.8), width = 0.1, length = 0.3, heading = 69.47, minz = 28.9, maxz = 29.3},
    [2] = { name = "First Floor", location = vector3(330.04, -602.7, 43.28), width = 0.2, length = 0.3, heading = 247.68, minz = 43.48, maxz = 43.78 },

    -- Restricted
    [3] = { name = "EMS Garage", location = vector3(339.70, -586.20, 28.8), width = 0.1, length = 0.3, heading = 246.66, minz = 28.9, maxz = 29.3},
    [4] = { name = "Main Floor", location = vector3(325.65, -603.39, 43.28), width = 0.1, length = 0.3, heading = 160.6, minz = 43.48, maxz = 43.78},
    [5] = { name = "Heli Pad", location = vector3(338.42, -583.71, 74.16), width = 0.5, length = 2.8, heading = 70.21, minz = 74.16 - 1, maxz = 74.16 + 1.5 },

}

Config.Language = {
    ["en"] = {
        Waiting = "Waiting for the Elevator...",
        Restricted = "Access Restricted!",
        CurrentFloor = "Current Floor: ",
        Unable = "You Can't Use The Elevator...",
    },
}

-- HeadBag

Config.UnZipItems = { -- Items That Can Be Used to Remove Zipties (Can Be Nothing)
    'weapon_knife',
}

Config.BagFallOffWait = 20 -- Time Before The Head Bag Automatically Falls Off (In Minutes)

Config.ZiptieWiggleAmount = 100 -- Number of Times The Victim Must Press "Point" Before Breaking Free From Zipties (Default: B)

-- Uses Clothing Menu --
Config.BagSelection = 49 -- Mask Selection (Default: 49)
Config.BagTexture = 19 -- Mask Type (Default: 19)

-- CarJack

Config.Framework = 'qb' -- 'esx' or 'qb'

Config.TakeVehWeapons = {
    [`WEAPON_NIGHTSTICK`] = true, -- add/change weapons here
    [`WEAPON_COLBATON`] = true,

}

Config.Target = 'qb-target' -- 'ox_target', 'qtarget', 'qb-target' or false --( /carjack command )

Config.AlwaysUnlock = true -- always unlock vehicle? (add your vehicle keys triggers in client.lua)

Config.FreezeVehicle = false -- freeze the vehcile in place when triggered?


-- Error log
SHERROR = {
    Webhook = 'https://discord.com/api/webhooks/1207333764443930684/e8qCgOZiGp-SyPjcjnzBYZlidvSaTA49JSoXf6GL_cNHT5m6EiYVcXUsH_Iq-aa3Ljkh',
    BlacklistedWords = {
      'Creati',
      'Stoppi',
      'Asse',
      'Scan'
    },
    WhiteListedErrors = {
      'SCRI',
      'Invoke',
      'Argume'
    },
}

-- RadioAnims
config = {
    ["Drawable Variations"] = 9, --  What clothing type do you want the script check for? (ex: Shirts, Pants, etc.)
    ["Chest Animations"] = {1, 2, 3}, -- What clothing variations do you want the script to check for? (ex: 109, 75, 256)
    ["Shoulder Animations"] = {4}, -- What clothing variations do you want the script to check for? (ex: 109, 75, 256)
    ["Ear Piece Animations"] = {0, 1, 2} -- What clothing variations do you want the script to check for? (ex: 109, 75, 256)
}

-- ROBBERY CONFIG --
Config.HeistCooldown = 1800000 -- Robbery Cooldown (in milliseconds - '1800000' is 30 minutes)
Config.PoliceAlert = 76 -- This is a % out of 100 to alert police
Config.RequiredPolice = 0 -- Required Police Count (set to 0 for no check)
Config.RequiredItem = 'lockpick' -- Item needed to rob the object
Config.ProgressBarSpeed = 20000 -- Length for all progress bars

-- TARGET CONFIG --
Config.ObjectLabel = 'Break into the vending machine' -- Third-eye label
Config.ObjectIcon = 'fa-solid fa-sack-dollar' -- Third-eye icon (default 'fas fa-sackdollar')

-- MINIGAME CONFIG -- 
Config.MinigameNumberofCircles = 9 -- Number of circles in the lockpick minigame
Config.MinigameMS = 66 -- Speed of the minigame (in milliseconds)

-- CASH REWARD CONFIG --
Config.CashChance = 40 -- This is a % out of 100 to receive cash
Config.MinReward = 5 -- Minimum Reward $
Config.MaxReward = 300 -- Maximum Reward $

-- COMMON ITEMS REWARD -- 
Config.CommonItemsChance = 70 -- This is a % out of 100 to receive an item from the CommonItems list
Config.CommonItemAmount = 3 -- Amount of the item you receive when you get an item from CommonItems
Config.CommonItems = { -- Items you have a chance to get 1 of:
    "cola",
    "ecoladiet",
    "sprunk",
    "sprunklight",
    "orang_o_tang",
    "cranberry",
}

-- RARE ITEMS REWARD -- 
Config.RareItemsChance = 10 -- This is a % out of 100 to receive an item from the RareItems list
Config.RareItemAmount = 1 -- Amount of the item you receive when you get an item from RareItems
Config.RareItems = { -- Items you have a chance to get 1 of:
    "usb2",
}

-- ROBBABLE OBJECTS --
Config.VendingObjects = {
    'prop_vend_soda_01', -- red cola soda vending machine
    'prop_vend_soda_02', -- green cola vending machine
    'sf_prop_sf_vend_drink_01a', -- 'junk' soda vending machine
    'ch_chint10_vending_smallroom_01', -- red cola soda vending machine 
}

-- TEXT --
Config.AttemptRobbery = 'Trying the lock...'
Config.RobberySuccess = 'You managed to break in!'
Config.RobberyFail = 'You bent the lockpick'
Config.ProgressBarText = 'Robbing vending machine...'
Config.HeistCooldownNotify = 'For some reason you can\'t do this right now...'
Config.NotEnoughCops = 'For some reason you can\'t do this right now...'
Config.CommonRewardText = "Something fell out of the machine..."

--                        Thottlecontrol                                             --
--- Max RPM in percentage
Config.maxRpm = 0.2

--- Speed in KM/h
-- The throttle control will not affect the vehicles which drive over this speed
Config.maxSpeed = 80

-- https://docs.fivem.net/docs/game-references/controls/
-- Use the input index for the "input" value
Config.keybinds = {
    slow = {
        label = 'Shift',
        input = 21,
    }
}

--// Showers \\--

Config.Framework = 'QB' -- 'QB', 'OX'
Config.Locations = {
    [1] = {
        coords = vector3(-767.26, 327.2, 170.64), 
        radius = 0.5,
        name = 'sphere1',
    },
    --[[ Example for adding more]]
    [2] = {
        coords = vector3(-665.26, -1097.52, -14.22), 
        radius = 0.5,
        name = 'sphere2',
    },
}



V_Stam.debug = false -- [default: false] if true, will show debug info on screen

--[[Stamina settings]]--
V_Stam.MaxStamina = 100.0 -- [default: 100.0] ranges from 0 to 100
V_Stam.StaminaSpeedUsage = 25 -- [default GTA: 25] ranges from 0 to 100 (more = longer endurance [100 = infinite])

--[[Clipset Settings]]--
V_Stam.EnableClipSet = true -- [default: true] if true, will play the tired animation when stamina reaches the threshold
V_Stam.TiredClipSet = 'move_m@depressed@a' -- [default: 'move_m@depressed@a'] The tired animation to play when the threshold is reached
V_Stam.StartClipSetThreshold = 15 -- [default: 0] At how much stamina to start the tired animation
V_Stam.ResetClipSetThreshold = 50 -- [default: 25]

--[[Tired Effects]]--
V_Stam.TiredEffects = false -- [default: true] The effect around the screen
V_Stam.TiredEffectsThreshold = 25 -- [default: 25]

V_Stam.TiredShakeEffect = true -- [default: true] Shake effect when StartClipSetThreshold is reached
V_Stam.TiredShakeIntensity = 0.5 -- [default: 0.05] Shake intensity

--[[Other nice features]]--
V_Stam.DisableJumping = true -- [default: true] if true, player will not be able to jump when stamina reaches the threshold (affects climbing too)
V_Stam.DisableJumpingThreshold = -1 -- [default: 10] set to -1 to disable jumping until the clipset stops playing

V_Stam.DrainStamOnJumping = true -- [default: true] If true, stamina will drain when jumping (which doesn't happen in default GTA and seems like a good feature to me to prevent the jump + X bug)
V_Stam.DrainStamOnJumpingMultiplier = 0.5 -- [default: 0.5] This seems optimal to me, adjust to your liking. (Value of 1.0 drains about 30% of the stamina every jump.)

V_Stam.DrainStamOnClimbing = true -- [default: true] If true, stamina will drain when climbing obstacles (also ladders)
V_Stam.DrainStamOnClimbingMultiplier = 0.2 -- [default: 0.2]

return {
    Controls = {
        PoliceLights = 'Q', 
        policeHorn   = 'E',
        sirenToggle  = 'LMENU',
        sirenCycle   = 'R',
    },
    addonHorns = {
        -- [`firetruk`] = 'VEHICLES_HORNS_FIRETRUCK_WARNING'
    },

    sirenShutOff = false -- Set to true if you want the siren to automatically shut off when the player exits the vehicle
}


