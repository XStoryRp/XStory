Config = {} or Config               {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)
Config.Debug = false -- Enables DebugPoly
Config.MinimalDoctors = 5 -- How many players with the ambulance job to prevent the hospital check-in system from being used
Config.DocCooldown = 10 -- Cooldown between doctor calls allowed, in minutes
Config.WipeInventoryOnRespawn = true -- Enable or disable removing all the players items when they respawn at the hospital
Config.BillCost = 0 -- Price that players are charged for using the hospital check-in system
Config.DeathTime = 500  -- Default: 45000 -- How long the timer is for players to bleed out completely and respawn at the hospital
Config.PainkillerInterval = 3600 -- Set the length of time painkillers last (per one)
Config.HealthDamage = 3 -- Minumum damage done to health before checking for injuries
Config.ArmorDamage = 5 -- Minumum damage done to armor before checking for injuries
Config.ForceInjury = 10 -- Maximum amount of damage a player can take before limb damage & effects are forced to occur
Config.AlwaysBleedChance = 85 -- Set the chance out of 100 that if a player is hit with a weapon, that also has a random chance, it will cause bleeding
Config.MessageTimer = 5 -- How long it will take to display limb/bleed message
Config.AIHealTimer = 360 -- How long it will take to be healed after checking in, in seconds
Config.BleedTickRate = 15 -- How much time, in seconds, between bleed ticks
Config.BleedMovementTick = 20 -- How many seconds is taken away from the bleed tick rate if the player is walking, jogging, or sprinting
Config.BleedMovementAdvance = 40 -- How much time moving while bleeding adds
Config.BleedTickDamage = 8 -- The base damage that is multiplied by bleed level everytime a bleed tick occurs
Config.FadeOutTimer = 8 -- How many bleed ticks occur before fadeout happens
Config.BlackoutTimer = 15 -- How many bleed ticks occur before blacking out
Config.AdvanceBleedTimer = 16 -- How many bleed ticks occur before bleed level increases
Config.HeadInjuryTimer = 2 -- How much time, in seconds, do head injury effects chance occur
Config.ArmInjuryTimer = 1 -- How much time, in seconds, do arm injury effects chance occur
Config.LegInjuryTimer = 4 -- How much time, in seconds, do leg injury effects chance occur
Config.HeadInjuryChance = 45 -- The chance, in percent, that head injury side-effects get applied
Config.LegInjuryChance = { -- The chance, in percent, that leg injury side-effects get applied
    Running = 70,
    Walking = 60
}
Config.ReviveInterval = 400 
Config.AlertShowInfo = 1000
Config.MinimumRevive = 80
Config.MajorArmoredBleedChance = 30 -- The chance, in percent, that a player will get a bleed effect when taking heavy damage while wearing armor
Config.MaxInjuryChanceMulti = 4 -- How many times the HealthDamage value above can divide into damage taken before damage is forced to be applied
Config.DamageMinorToMajor = 60 -- How much damage would have to be applied for a minor weapon to be considered a major damage event. Put this at 100 if you want to disable it
Config.FuelScript = 'fuel' -- Fuel script u use (defaut: LegacyFuel or cdn-fuel)
--Ranjit-EMS-bag config
Config.Bag = {
	Job = {
        "ambulance",
        "police",
        "sast",
        "sheriff",
    }
}
Config.Stash = {
	MaxWeighStash = 20000,
	MaxSlotsStash = 40,
}


-- PEDS
    --Duty
Config.DutyPedScenario = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT" --https://gtaforums.com/topic/796181-list-of-scenarios-for-peds/
Config.DutyPed = 's_m_m_doctor_01' --https://docs.fivem.net/docs/game-references/ped-models/
    --Armory
Config.ArmoryPedScenario = "WORLD_HUMAN_CLIPBOARD"
Config.ArmoryPed = "s_m_y_autopsy_01"
    --Garage
Config.GaragePedScenario = "WORLD_HUMAN_AA_SMOKE"
Config.GaragePed = 'mp_m_waremech_01'
    --Helicopter
Config.HeliPedScenario = "WORLD_HUMAN_COP_IDLES"
Config.HeliPed = 'ig_casey'
    --Checking
Config.CheckingPedScenario = "WORLD_HUMAN_CLIPBOARD"
Config.CheckingPed = 's_m_m_paramedic_01'


Config.Locations = { -- Edit the various interaction points for players or create new ones
    ["checking"] = {
	    [1] = vector4(308.2769, -595.4870, 43.2841, 69.9728),
	    [2] = vector4(-254.54, 6331.78, 32.43, 00.0), -- paleto
        [3] = vector4(356.9, -1415.3, 32.51, 239.54), -- medical center ls
        [4] = vector4(361.23, -1411.27, 32.51, 198.73), -- medical center ls 
        [5] = vector4(291.60, -1454.86, 29.97, 314.13), -- medical center ls
    },
    ["duty"] = {
        [1] = vector4(312.15, -594.62, 43.29, 339.68),
        [2] = vector4(-254.88, 6324.5, 32.58, 00.00),
    },
    ["vehicle"] = { --not 100% done, vehspawn loc
        [1] = {
           vehspawn = vector4(329.04, -557.65, 28.74, 343.87),
           pedspawn = vector4(320.65, -559.68, 28.74, 18.81)
        },
        [2] = {
            vehspawn = vector4(398.82, -1429.13, 29.22, 227.97),
            pedspawn = vector4(393.38, -1429.53, 29.43, 226.54)
        },
    },
    ["helicopter"] = {
        [1] = {
            vehspawn = vector4(351.58, -587.45, 74.16, 160.5),
            pedspawn = vector4(337.3927, -586.7730, 74.1617, 250.08)
        },
        [2] = {
            vehspawn = vector4(313.48, -1465.01, 46.51, 136.97),
            pedspawn = vector4(323.11, -1461.38, 46.51, 139.37)
        },
        [3] = {
            vehspawn = vector4(299.39, -1453.29, 46.51, 140.29),
            pedspawn = vector4(306.99, -1448.08, 46.51, 148.46)
        },
    },
    ["armory"] = {
        [1] = vector4(310.39, -603.1, 43.28, 67.86),
        [2] = vector4(-245.13, 6315.71, 32.82, 00.00),
        [3] = vector4(349.43, -1429.49, 32.51, 322.85),
        [4] = vector4(300.73, -1461.80, 29.97, 319.20),
    },
    ["roof"] = {
        [1] = vector4(338.5, -583.85, 74.16, 245.5),
    },
    ["main"] = {
        [1] = vector3(332.32, -595.67, 43.28),
    },

    ["basement"] = {
        [1] = vector3(340.09, -584.8, 28.8),
        [2] = vector3(316.7, -1412.36, 32.51),
        [3] = vector3(318.73, -1407.27, 32.51),
    },
    ["stash"] = {
        [1] = vector3(297.93, -598.71, 42.97),
        [2] = vector3(347.58, -1380.57, 37.91),
        [3] = vector3(349.2, -1378.33, 37.91),
        -- [4] = ,
        -- [5] = ,
    },
    ["beds"] = {
        [1] = {coords = vector4(307.82, -581.79, 43.2, 337.36), taken = false, model = 1631638868},
        [2] = {coords = vector4(311.14, -582.88, 43.2, 339.8), taken = false, model = 1631638868},
        [3] = {coords = vector4(314.54, -584.33, 43.2, 332.08), taken = false, model = 2117668672},
        [4] = {coords = vector4(317.7, -585.54, 43.2, 350.61), taken = false, model = 2117668672},
        [5] = {coords = vector4(322.69, -587.27, 43.2, 334.77), taken = false, model = 2117668672},
        [6] = {coords = vector4(324.21, -582.6, 43.2, 163.1), taken = false, model = -1091386327},
        [7] = {coords = vector4(319.36, -580.81, 43.2, 163.58), taken = false, model = -1091386327},
        [8] = {coords = vector4(313.83, -578.83, 43.2, 159.29), taken = false, model = -1091386327},
        [9] = {coords = vector4(309.27, -577.3, 43.2, 161.32), taken = false, model = -1091386327},
	--- paleto
	    [10] = {coords = vector4(-252.43, 6312.25, 32.34, 313.48), taken = false, model = 2117668672},
        [11] = {coords = vector4(-247.04, 6317.95, 32.34, 134.64), taken = false, model = 2117668672},
        [12] = {coords = vector4(-255.98, 6315.67, 32.34, 313.91), taken = false, model = 2117668672},
    --- center med
        [13] = {coords = vector4(326.72, -1416.17, 38.83, 234.68) , taken =  false , model = 2117668672 },
        [14] = {coords = vector4(329.29, -1413.36, 38.83, 230.81) , taken =  false , model = 2117668672 },
        [15] = {coords = vector4(331.47, -1410.33, 38.83, 228.94) , taken =  false , model = 2117668672 },
        [16] = {coords = vector4(333.9, -1407.45, 38.83, 227.16) , taken =  false , model = 2117668672 },
        [17] = {coords = vector4(329.46, -1403.71, 38.83, 48.67) , taken =  false , model = 2117668672 },
        [18] = {coords = vector4(326.98, -1406.58, 38.83, 50.98) , taken =  false , model = 2117668672 },
        [19] = {coords = vector4(324.68, -1409.38, 38.83, 54.87) , taken =  false , model = 2117668672 },
        [20] = {coords = vector4(322.24, -1412.33, 38.83, 54.74) , taken =  false , model = 2117668672 },
},
    ["jailbeds"] = {
        [1] = {coords = vector4(1761.96, 2597.74, 45.66, 270.14), taken = false, model = 2117668672},
        [2] = {coords = vector4(1761.96, 2591.51, 45.66, 269.8), taken = false, model = 2117668672},
        [3] = {coords = vector4(1771.8, 2598.02, 45.66, 89.05), taken = false, model = 2117668672},
        [4] = {coords = vector4(1771.85, 2591.85, 45.66, 91.51), taken = false, model = 2117668672},
    },
    ["stations"] = {
        [1] = {label = Lang:t('info.pb_hospital'), coords = vector4(304.27, -600.33, 43.28, 272.249)},
        [2] = {label = Lang:t('info.pb2_hospital'), coords = vector4(1839.95, 3674.19, 34.28, 28.4) },
        [3] = {label = Lang:t('info.pb3_hospital'), coords = vector4(-248.89, 6332.19, 32.43, 47.72) },
    },
    ["firestations"] = {
        [1] = {label = Lang:t('info.fb_firestation'), coords = vector4(1199.43, -1467.54, 34.86, 205.04)},
        [2] = {label = Lang:t('info.fb_firestation'), coords = vector4(209.92, -1646.04, 29.8, 346.69)},
    }
}

Config.Helicopters = {
   ["Polmav"] = "polmav",
    ["as350"] = 'as350',
}

Config.VehicleTable = {
    ["quick Respond Unit"] = {
        "ambulance",
        "firetruk",
    },
    ["ambulances"] = {
        "ambulance",
        "sandbulance",
    },
    ["coroner"] = {
        -- "police2"
    }
}

Config.CarItems = {
    [1] = {
        name = "emsbag",
        amount = 2,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "weapon_fireextinguisher",
        amount = 2,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "oscillator",
        price = 0,
        amount = 1,
        type = "item",
        slot = 3,
     },
    [4] = {
        name = "medmachine",
        price = 0,
        amount = 1,
        type = "item",
         slot = 4,
    },
    [5] = {
        name = "bodybag",
        price = 0,
        amount = 3,
        type = "item",
        slot = 5,
    },
    [6] = {
        name = "firstaid",
        price = 0,
        amount = 10,
        info = {},
        type = "item",
        slot = 6,
    }
}

Config.Items = { -- Items found in the ambulance shop for players with the ambulance job to purchase
    label = Lang:t('info.safe'),
    slots = 8,
    items = {
        [1] = {
            name = "radio",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "bandage",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "painkillers",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_fireextinguisher",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "medbag",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "bloodtest",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 7
        },
        [8] = {
            name = "mdt",
            price = 350,
            amount = 1,
            info = {},
            type = "item",
            slot = 8
        }
    }
}

Config.WeaponClasses = { -- Define gta weapon classe numbers
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

Config.MinorInjurWeapons = { -- Define which weapons cause small injuries
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = true,
    [Config.WeaponClasses['OTHER']] = true,
    [Config.WeaponClasses['LIGHT_IMPACT']] = true,
}

Config.MajorInjurWeapons = { -- Define which weapons cause large injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['SHOTGUN']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.AlwaysBleedChanceWeapons = { -- Define which weapons will always cause bleedign
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = false,
}

Config.ForceInjuryWeapons = { -- Define which weapons will always cause injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.CriticalAreas = { -- Define body areas that will always cause bleeding if wearing armor or not
    ['UPPER_BODY'] = { armored = false },
    ['LOWER_BODY'] = { armored = true },
    ['SPINE'] = { armored = true },
}

Config.StaggerAreas = { -- Define body areas that will always cause staggering if wearing armor or not
    ['SPINE'] = { armored = true, major = 60, minor = 30 },
    ['UPPER_BODY'] = { armored = false, major = 60, minor = 30 },
    ['LLEG'] = { armored = true, major = 100, minor = 85 },
    ['RLEG'] = { armored = true, major = 100, minor = 85 },
    ['LFOOT'] = { armored = true, major = 100, minor = 100 },
    ['RFOOT'] = { armored = true, major = 100, minor = 100 },
}

Config.WoundStates = { -- Translate wound alerts
    Lang:t('states.irritated'),
    Lang:t('states.quite_painful'),
    Lang:t('states.painful'),
    Lang:t('states.really_painful'),
}

Config.BleedingStates = { -- Translate bleeding alerts
    [1] = {label = Lang:t('states.little_bleed')},
    [2] = {label = Lang:t('states.bleed')},
    [3] = {label = Lang:t('states.lot_bleed')},
    [4] = {label = Lang:t('states.big_bleed')},
}

Config.MovementRate = { -- Set the player movement rate based on the level of damage they have
    0.98,
    0.96,
    0.94,
    0.92,
    0.60,
}

Config.Bones = { -- Correspond bone hash numbers to their label
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089] = 'LFINGER',
    [4090] = 'LFINGER',
    [4137] = 'LFINGER',
    [4138] = 'LFINGER',
    [4153] = 'LFINGER',
    [4154] = 'LFINGER',
    [4169] = 'LFINGER',
    [4170] = 'LFINGER',
    [4185] = 'LFINGER',
    [4186] = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108] = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

Config.BoneIndexes = { -- Correspond bone labels to their hash number
    ['NONE'] = 0,
    -- ['HEAD'] = 31085,
    ['HEAD'] = 31086,
    ['NECK'] = 39317,
    -- ['SPINE'] = 57597,
    -- ['SPINE'] = 23553,
    -- ['SPINE'] = 24816,
    -- ['SPINE'] = 24817,
    ['SPINE'] = 24818,
    -- ['UPPER_BODY'] = 10706,
    ['UPPER_BODY'] = 64729,
    ['LOWER_BODY'] = 11816,
    -- ['LARM'] = 45509,
    ['LARM'] = 61163,
    ['LHAND'] = 18905,
    -- ['LFINGER'] = 4089,
    -- ['LFINGER'] = 4090,
    -- ['LFINGER'] = 4137,
    -- ['LFINGER'] = 4138,
    -- ['LFINGER'] = 4153,
    -- ['LFINGER'] = 4154,
    -- ['LFINGER'] = 4169,
    -- ['LFINGER'] = 4170,
    -- ['LFINGER'] = 4185,
    -- ['LFINGER'] = 4186,
    -- ['LFINGER'] = 26610,
    -- ['LFINGER'] = 26611,
    -- ['LFINGER'] = 26612,
    -- ['LFINGER'] = 26613,
    ['LFINGER'] = 26614,
    -- ['LLEG'] = 58271,
    ['LLEG'] = 63931,
    -- ['LFOOT'] = 2108,
    ['LFOOT'] = 14201,
    -- ['RARM'] = 40269,
    ['RARM'] = 28252,
    ['RHAND'] = 57005,
    -- ['RFINGER'] = 58866,
    -- ['RFINGER'] = 58867,
    -- ['RFINGER'] = 58868,
    -- ['RFINGER'] = 58869,
    -- ['RFINGER'] = 58870,
    -- ['RFINGER'] = 64016,
    -- ['RFINGER'] = 64017,
    -- ['RFINGER'] = 64064,
    -- ['RFINGER'] = 64065,
    -- ['RFINGER'] = 64080,
    -- ['RFINGER'] = 64081,
    -- ['RFINGER'] = 64096,
    -- ['RFINGER'] = 64097,
    -- ['RFINGER'] = 64112,
    ['RFINGER'] = 64113,
    -- ['RLEG'] = 36864,
    ['RLEG'] = 51826,
    -- ['RFOOT'] = 20781,
    ['RFOOT'] = 52301,
}

Config.Weapons = { -- Correspond weapon names to their class number
    [`WEAPON_STUNGUN`] = Config.WeaponClasses['NONE'],
    [`WEAPON_STUNGUN_MP`] = Config.WeaponClasses['NONE'],
    [`WEAPON_BEANGBAGSHOTGUN`] = Config.WeaponClasses['NONE'],
    --[[ Small Caliber ]]--
    [`WEAPON_PISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_APPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPDW`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MACHINEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MICROSMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MINISMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_PISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_VINTAGEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]]--
    [`WEAPON_ADVANCEDRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_ASSAULTSMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_COMPACTRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_DOUBLEACTION`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_GUSENBERG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_HEAVYPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MARKSMANPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_PISTOL50`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]]--
    [`WEAPON_ASSAULTRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_ASSAULTRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MINIGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MUSKET`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_RAILGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]]--
    [`WEAPON_ASSAULTSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_BULLUPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_DBSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_HEAVYSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN_MK2`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SAWNOFFSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SWEEPERSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],

    --[[ Animals ]]--
    [`WEAPON_ANIMAL`] = Config.WeaponClasses['WILDLIFE'], -- Animal
    [`WEAPON_COUGAR`] = Config.WeaponClasses['WILDLIFE'], -- Cougar
    [`WEAPON_BARBED_WIRE`] = Config.WeaponClasses['WILDLIFE'], -- Barbed Wire

    --[[ Cutting Weapons ]]--
    [`WEAPON_BATTLEAXE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_BOTTLE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_DAGGER`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_HATCHET`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KNIFE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_MACHETE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_SWITCHBLADE`] = Config.WeaponClasses['CUTTING'],

    --[[ Light Impact ]]--
    [`WEAPON_KNUCKLE`] = Config.WeaponClasses['LIGHT_IMPACT'],

    --[[ Heavy Impact ]]--
    [`WEAPON_BAT`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_CROWBAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIREEXTINGUISHER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIRWORK`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_GOLFLCUB`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_HAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_PETROLCAN`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_POOLCUE`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_WRENCH`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RAMMED_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RUN_OVER_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],

    --[[ Explosives ]]--
    [`WEAPON_EXPLOSION`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_GRENADE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_COMPACTLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HOMINGLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PIPEBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PROXMINE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_RPG`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_STICKYBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HELI_CRASH`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_EMPLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],

    --[[ Other ]]--
    [`WEAPON_FALL`] = Config.WeaponClasses['OTHER'], -- Fall
    [`WEAPON_HIT_BY_WATER_CANNON`] = Config.WeaponClasses['OTHER'], -- Water Cannon

    --[[ Fire ]]--
    [`WEAPON_ELECTRIC_FENCE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FIRE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_MOLOTOV`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLARE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLAREGUN`] = Config.WeaponClasses['FIRE'],

    --[[ Suffocate ]]--
    [`WEAPON_DROWNING`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning
    [`WEAPON_DROWNING_IN_VEHICLE`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [`WEAPON_EXHAUSTION`] = Config.WeaponClasses['SUFFOCATING'], -- Exhaust
    [`WEAPON_BZGAS`] = Config.WeaponClasses['SUFFOCATING'],
    [`WEAPON_SMOKEGRENADE`] = Config.WeaponClasses['SUFFOCATING'],

    --[[ HIGH CALIBER ]]
    -- GGC Custom Weapons -- Rifles
    [`WEAPON_MK47FM`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M6IC`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_SCARSC`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AK74`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AKS74`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_GROZA`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ MEDIUM CALIBER ]]
    -- GGC Custom Weapons -- SMGs
    [`WEAPON_PMXFM`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    --[[ SMALL CALIBER ]]
    -- GGC Custom Weapons -- Hand Guns
    [`WEAPON_GLOCK18C`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_GLOCK22`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_DEAGLE`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_GLOCK20`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_GLOCK19GEN4`] = Config.WeaponClasses['SMALL_CALIBER'],
    --[[ SHOTGUN ]]
    --[[ CUTTING ]]
    -- GGC Custom Weapons -- Melees
    [`WEAPON_KARAMBIT`] = Config.WeaponClasses['CUTTING'],
    --[[ HEAVY IMPACT ]]
    -- GGC Custom Weapons -- Melees
    [`WEAPON_KEYBOARD`] = Config.WeaponClasses['HEAVY_IMPACT'],
    --[[ HIGH CALIBER ]]
    [`WEAPON_DE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M4`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HK416`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AR15`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_AK47`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M70`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_SCARH`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MK14`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_M110`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HUNTINGRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    --[[ MEDIUM CALIBER ]]
    [`WEAPON_UZI`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MAC10`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MP9`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    --[[ SMALL CALIBER ]]
    [`WEAPON_GLOCK17`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_M9`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_M1911`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_FNX45`] = Config.WeaponClasses['SMALL_CALIBER'],
    --[[ SHOTGUN ]]
    [`WEAPON_REMINGTON`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_MOSSBERG`] = Config.WeaponClasses['SHOTGUN'],
    --[[ CUTTING ]]
    [`WEAPON_SHIV`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KATANA`] = Config.WeaponClasses['CUTTING'],
    --[[ HEAVY IMPACT ]]
    [`WEAPON_SLEDGEHAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
}

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ["car1"] = { -- Model name
        ["extras"] = {
            ["1"] = false, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    },
    ["car2"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
        }
    }
}


-- emsstretcher
Config.Hash = {
	{hash = `ambulance`, detection = 1.4, depth = -1.0, height = 0.0},
	{hash = `f450ambo`, detection = 2.4, depth = -1.0, height = 0.0},
}

Config.Lits = {
	{lit = `stretcher`,          distance_stop = 2.4},
	{lit = `stryker_M1`,         distance_stop = 2.4},
	{lit = `stryker_M1_coroner`, distance_stop = 2.4},
	{lit = `mxpro`,              distance_stop = 2.4},
	{lit = `stretcher_basket`,   distance_stop = 2.4},
}