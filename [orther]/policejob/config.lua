Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
    ["evidencemarker"]  = { model = `ril1`, freeze = true},
}


Config.AllowSpikesOnlyForPolice = true -- If spikes are only usable by police.
Config.MaxSpikess = 5 -- How many spikes a player can place at the same time
Config.InstantlyPop = false -- 1 == It will instantly pop the tires, false = It will not instantly pop the tires.
Config.DeleteTime = 7500 -- How many seconds for the spikestrip to delete after it has been placed (In seconds). 

Config.HandCuffItem = 'handcuffs'
Config.CuffKeyItem = "cuffkeys"
Config.TieItem = 'ziptie'
Config.CutTieItem = 'flush_cutter'
Config.CutCuffItem = 'bolt_cutter'
Config.BrokenCuffItem = 'broken_handcuffs'
-- Config.BreakOutCuffing = true
Config.BreakOutCuffing = {active = true, duration = math.random(2500,5000), pos = math.random(10, 30), width = math.random(10, 20)}
Config.PSUICOnfig = {numcircle = 6, ms = 20} -- If minigame is ps-ui then choose number of circles and ms 
Config.BreakoutMinigame = 'ps-ui' -- Choose the cuff breakout minigame : qb-skillbar / ps-ui (circle)
Config.TargetSystem = 'qb-target' -- Target system you want to use : qb-target / qtarget / ox_target
Config.Anim = {
    srcDict = 'custom@police',
    srcAnim = 'police',
    trgtDict = 'missfam5_yoga',
    trgtAnim = 'a2_pose',
}
-- itemname = name of the item
-- propname = the prop used for cuffing
-- needkey = does the cuff needs a key to uncuff ? It will give a key when true
-- keyitem = what is the item used to uncuff
-- cufftype = the animation type. 19 - ped is freezed / 49 - ped can move with cuffs
Config.CuffItems = { 
    ['handcuffs'] = {itemname = "handcuffs", propname = "p_cs_cuffs_02_s", needkey = true, keyitem = "cuffkeys", cufftype = 49 },
    ['ziptie'] = {itemname = "ziptie", propname = "ba_prop_battle_cuffs", needkey = false, keyitem = "flush_cutter", cufftype = 49}
}

Config.LicenseRank = 3
Config.BlockWallThermals = true -- true/false; lowers thermal cam intensity to stop penetration through walls or tunnels
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.GaragePedModel = "ig_trafficwarden"
Config.ArmoryPedModel = "s_m_m_prisguard_01"
Config.Locations = {
    ["duty"] = {
        [1] = vector3(441.08, -981.13, 30.69), -- LSPD
        [2] = vector3(-447.73, 6015.58, 32.28), -- BCSO
        [3] = vector3(1832.68, 3678.4, 34.28), -- Sandy
    },
    ["vehicle"] = {
        [1] = vector4(459.07, -1009.3, 28.25, 87.09), -- LSPD
        [2] = vector4(-458.86, 6031.5, 31.34, 139.15), --BCSO
        [3] = vector4(1858.95, 3681.95, 33.83, 219.83), -- Sandy
    },
    ["vehspawn"] = { -- The numbers [1] must match the numbers in [vehicle]
        [1] = vector4(446.55, -1024.71, 28.63, 358.55), -- LSPD
        [2] = vector4(-474.63, 6030.38, 30.95, 226.12), -- BCSO
        [3] = vector4(1850.89, 3673.04, 33.37, 211.26), -- Sandy
        [4] = vector4(462.83, -1019.9, 28.11, 94.8), -- LSPD
    },
    ["stash"] = {
        [1] = vector3(461.13, -995.88, 30.69), -- LSPD
        [2] = vector3(443.42, -990.98, 26.67), --LSPD 2
        [3] = vector3(455.08, -985.39, 30.69), -- LSPD 3
        [4] = vector3(466.58, -986.18, 24.91), -- LSPD 4
        [5] = vector3(450.24, -988.03, 26.67), -- LSPD 5
        [6] = vector3(-438.73, 6008.25, 36.99), -- BCSO
        [7] = vector3(1837.89, 3688.08, 34.19), -- Sandy
    },
    ["impound"] = {
        [1] = vector3(479.08, -1022.54, 28.01),
        [2] = vector3(1822.14, 3689.16, 33.97),
    },
    ["helicopter"] = {
        [1] = vector4(460.24, -980.18, 43.69, 181.43), -- LSPD
        [2] = vector4(-462.15, 5994.77, 31.25, 134.84), -- BCSO
    },
    ["helispawn"] = { -- The numbers [1] must match the numbers in [helicopter]
        [1] = vector4(449.16, -981.23, 43.69, 165.79), -- LSPD
        [2] = vector4(-475.18, 5988.43, 31.72, 317.27), -- BCSO
    },
    ["armory"] = {
        [1] = vector4(454.05, -980.13, 29.69, 89.17), -- LSPD
        -- [2] = vector3(-449.78, 6015.92, 31.72), -- BCSO
        -- [3] = vector3(1857.02, 3689.72, 34.27), -- Sandy
        -- [4] = vector3(620.98, -28.11, 82.78), -- Vinewood
        -- [5] = vector3(626.25, -29.47, 82.78), -- Vinewood
        -- [6] = vector3(626.76, -22.37, 82.78), -- Vinewood
    },
    ["trash"] = {
        [1] = vector3(439.2, -976.7, 29.62), -- LSPD
    },
    ["fingerprint"] = {
        [1] = vector3(459.81, -989.46, 24.91), -- LSPD
        [2] = vector3(-452.22, 5997.96, 27.58), --BCSO
    },
    ["evidence"] = {
        [1] = vector3(472.79, -993.10, 26.27), -- LSPD
        [2] = vector3(445.18, -989.65, 26.67), --LSPD 2
        [3] = vector3(441.52, -995.99, 30.69), --LSPD 3
        [4] = vector3(473.25, -990.92, 24.91), --LSPD 4
        [5] = vector3(470.44, -975.69, 24.91), -- LSPD 5
        [6] = vector3(-452.87, 5999.38, 37.00), -- BCSO
        [7] = vector3(1817.97, 3672.25, 34.2), -- Sandy
    },
    ["stations"] = {
        [1] = {label = "Los Santos Police Department", coords = vector4(428.23, -984.28, 29.76, 3.5)},
        [2] = {label = "Blaine County Sheriffs Office", coords = vector4(-448.26, 6007.83, 44.01, 225.93)},
        [3] = {label = "Los Santons Vinewood Police Department", coords = vector4(-448.26, 6007.83, 44.01, 225.93)},
    },
    ["customstatons"] = {
        -- [1] = {label = "San Andreas State Prison", coords = vector4(1845.903, 2585.873, 45.672, 272.249)},
    }
}

Config.PoliceHelicopter = "POLMAV"

Config.SecurityCameras = {
    hideradar = true,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}
Config.EnableMods = true -- Enable the mods below to be applied
Config.CarMods = { -- Mods to be enabled / disabled for vehicles
    engine = true,
    brakes = true,
    gearbox = true,
    armour = false,
    turbo = true,
}
Config.EnableExtras = true
Config.CarExtras = { -- Extra options to be enabled / disabled
    ["extras"] = {
        ["1"] = true, -- on/off
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
        ["13"] = true,
    }
}
Config.AuthorizedVehicles = {
    -- Garage 1 vehicles (LSPD)
    [1] = {
        ["police"] = {label = "Police Car 1", ranks = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["police2"] = {label = "Police Car 2", ranks = {1,2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["police3"] = {label = "Police Car 3", ranks = {3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["police4"] = {label = "Police Car 4", ranks = {3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["policeb"] = {label = "Police Car 5", ranks = {3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["fbi"] = {label = "Unmarked FBI", ranks = {4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = 15},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["dnscout"] = {label = "Unmarked Police", ranks = {5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["nkscout"] = {label = "Police Car 6", ranks = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1 , price = nil},
        ["nkcruiser"] = {label = "Crusier Police 2024", ranks = {2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["nktorrence"] = {label = "Torrence Police 2024", ranks = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
    },
    -- Garage 2 vehicles (BCSO)
    [2] = {
        ["sheriff"] = {label = "Sheriff Car 1", ranks = {1,2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["sheriff2"] = {label = "Sheriff Car 2", ranks = {2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["fbi"] = {label = "Unmarked FBI", ranks = {5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["nkcruiser"] = {label ="Unmarked Crusier", ranks = {4,5,6,7,8,9,10,11,12,13,14}, livery = 2, price = nil},
        ["nktorrence"] = {label = "Unmarked Torrence", ranks = {4,5,6,7,8,9,10,11,12,13,14}, livery = 2, price = nil},
    },
    -- Garage 1 vehicles (Sandy)
    [3] = {
        ["sheriff"] = {label = "Sheriff Car 1", ranks = {1,2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["sheriff2"] = {label = "Sheriff Car 2", ranks = {2,3,4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["fbi"] = {label = "Unmarked FBI", ranks = {4,5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {5,6,7,8,9,10,11,12,13,14}, livery = 1, price = nil},
    },
}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
    ["AMMO_LESSLETHAL"] = "12-gauge bullet",
}

Config.Radars = {
    -- vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
    -- vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
    -- vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
    -- vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
    -- vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
    -- vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
    -- vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
    -- vector4(657.315, -218.819, 44.06, 320.0),
    -- vector4(2118.287, 6040.027, 50.928, 172.0),
    -- vector4(-106.304, -1127.5530, 30.778, 230.0),
    -- vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {
    [1] = {name = "armor", amount = 2, info = {}, type = "item", slot = 1,},
    [2] = {name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2,},
    [3] = {name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3,},
    [4] = {name = "roadcone",amount = 1 , info = {}, type = "item",slot = 4,},
    [5] = {name = "spikestrip", amount = 3, info = {}, type = "item", slot = 5,},
    [6] = {name = "headbag", amount = 5, info = {}, type = "item", slot = 6,},
    [7] = {name = "lesslethal_ammo",ammo = 10,info = {}, type = "item",slot = 7,},
}

Config.Items = {
    label = "Los Santos Police Armory",
    slots = 21,
    items = {
        [20] = {
            name = "taser_cardridge",
            price = 0,
            amount = 15,
            info = {},
            type = "item",
            slot = 20,
            authorizedJobGrades = {0,1,2,3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [19] = {
            name = "weapon_bbshotgun",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 19,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [18] = {
            name = "lesslethal_ammo",
            price = 0,
            amount = 15,
            info = {},
            type = "item",
            slot = 18,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [17] = {
            name = "gunrackkey",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 17,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [16] = {
            name = "policegunrack",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [15] = {
            name = "weapon_combatpistol",
            price = 0,
            amount = 1,
            info = {
                attachments = {
                    -- {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 15,
            authorizedJobGrades = {0,1,2,3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [14] = {
            name = "weapon_m4",
            price = 0,
            amount = 1,
            info = {
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 14,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [13] = {
            name = "ziptie",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 13,
            authorizedJobGrades = {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        -- [15] = {
        --     name = "leo-gps",
        --     price = nil,
        --     amount = 1,
        --     info = {},
        --     type = "item",
        --     slot = 15,
        --     authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        -- },
        [12] = {
            name = "weapon_ceramicpistol",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },

        -- [4] = {
        --     name = "weapon_ar15",
        --     price = 12,
        --     amount = 1,
        --     info = {
        --         attachments = {
        --             {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --             {component = "COMPONENT_AT_SCOPE_MEDIUM", label = "Scope"},
        --             {component = "COMPONENT_AT_AR_AFGRIP", label = "AF-Grip"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 20,
        --     authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        -- },
        -- [5] = {
        --     name = "weapon_remington",
        --     price = 12,
        --     amount = 1,
        --     info = {
        --         attachments = {
        --             {component = "COMPONENT_AT_SG_FLSH", label = "Flashlight"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 21,
        --     authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        -- },
        -- [6] = {
        --     name = "weapon_scarh",
        --     price = 12,
        --     amount = 1,
        --     info = {
        --         attachments = {
        --             {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 24,
        --     authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        -- },
        -- [7] = {
        --     name = "weapon_mk14",
        --     price = 12,
        --     amount = 1,
        --     info = {
        --         attachments = {
        --             {component = "COMPONENT_AT_SCOPE_LARGE", label = "Scope"},
        --         }
        --     },
        --     type = "weapon",
        --     slot = 25,
        --     authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        -- },
        [11] = {
            name = "weapon_nightstick",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 11,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [10] = {
            name = "pistol_ammo",
            price = 0,
            amount = 10,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [9] = {
            name = "bodycam",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [8] = {
            name = "panicbutton",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [7] = {
            name = "wheel_clamp",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        -- [10] = {
        --     name = "smg_ammo",
        --     price = nil,
        --     amount = 5,
        --     info = {},
        --     type = "item",
        --     slot = 9,
        --     authorizedJobGrades = {1, 2, 3, 4}
        -- },
        -- [11] = {
        --     name = "shotgun_ammo",
        --     price = nil,
        --     amount = 5,
        --     info = {},
        --     type = "item",
        --     slot = 10,
        --     authorizedJobGrades = {2, 3, 4}
        -- },
        -- [12] = {
        --     name = "rifle_ammo",
        --     price = nil,
        --     amount = 5,
        --     info = {},
        --     type = "item",
        --     slot = 11,
        --     authorizedJobGrades = {2, 3, 4}
        -- },
        [6] = {
            name = "handcuffs",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 6,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [5] = {
            name = "weapon_flashlight",
            price = 0,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [4] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [3] = {
            name = "armor",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 3,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        [2] = {
            name = "radio",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 2,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        },
        -- [20] = {
        --     name = "WEAPON_RADARGUN",
        --     price = nil,
        --     amount = 1,
        --     info = {},
        --     type = "item",
        --     slot = 19,
        --     authorizedJobGrades = {2,3,4}
        -- },
        -- [2] = {
        --     name = "mdt",
        --     price = nil,
        --     amount = 5,
        --     info = {},
        --     type = "item",
        --     slot = 2,
        --     authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        -- },
        [1] = {
            name = "specialbadge",
            price = 0,
            amount = 1,
            info = {},
            type = "item",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        }
    }
}
-- PanicButtton

Config.PanicButtonVolume = 1.0 -- Default: 0.5  ( Sets the Volume of the Interact Sound )
Config.SoundDistance = 30.0 -- Default: 20.0 Meters  ( Sets Distance in which the sound can be heard )
Config.Cooldown = 20000 -- in ms! Default: 20000 = 20 sec

--Use Item OR Radialmenu
Config.UseItem = true
Config.UseRadialMenu = false

-- Use 10-13A = true , use 10-13B = false ( Panic Button Item only and Config.UseItem needs to be true)
Config.UseButtonA = false

Config.AllowedTypes = { -- Which Types are allowed to use the Panic Button ( Make sure to add them to each CustomAlert )
    'leo',
    'ems'
}



-- PursitMode

Config.DefaultKey = 'P'
Config.framework = 'qbcore' -- qbcore / esx
Config.Notification = "%s mode applied" -- %s is the vehiclemode

Config.AuthorizedJobs = {
    "police",
}

Config.VehicleModes = { 
    "C",
    "B",
    "A",
    "S"
}

Config.VehicleModifications = { -- define each mode their own modifications
    ["C"] = {
        ["Turbo"] = false,
        ["XenonHeadlights"] = false,
        ["Engine"] = -1,
        ["Brakes"] = -1,
        ["Transmission"] = -1,
        ["XenonHeadlightsColor"] = 0,
    },
    ["B"] = {
        ["Turbo"] = false,
        ["XenonHeadlights"] = false,
        ["Engine"] = 2,
        ["Brakes"] = 1,
        ["Transmission"] = 2,
        ["XenonHeadlightsColor"] = 0,
    },
    ["A"] = {
        ["Turbo"] = true,
        ["XenonHeadlights"] = false,
        ["Engine"] = 3,
        ["Brakes"] = 1,
        ["Transmission"] = 2,
        ["XenonHeadlightsColor"] = 0,
    },
    ["S"] = {
        ["Turbo"] = true,
        ["XenonHeadlights"] = false,
        ["Engine"] = 4,
        ["Brakes"] = 2,
        ["Transmission"] = 3,
        ["XenonHeadlightsColor"] = 1,
    }
}

 Config.VehiclesConfig = {
    ["police"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    },
--[[     ["police"] = {  -- this is an example of how to add more cars.
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    }, ]]
    ["police2"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    },
    ["police3"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    },
    ["police4"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    },
    ["fbi"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    },
    ["fbi2"] = {
        ["C"] = {
            ["fDriveInertia"] = 1.000000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 145.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.285
        },
        ["B"] = {
            ["fDriveInertia"] = 1.100000,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 150.000000,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.29
        },
        ["A"] = {
            ["fDriveInertia"] = 1.15,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 165.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.30
        },
        ["S"] = {
            ["fDriveInertia"] = 1.17,
            ["fBrakeForce"] = 0.900,
            ["fInitialDriveMaxFlatVel"] = 179.0,
            ["fSteeringLock"] = 40.00,
            ["fInitialDriveForce"] = 0.45
        }
    }
}