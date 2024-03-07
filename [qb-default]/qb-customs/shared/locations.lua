-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 


--[[
    ['Innocence'] = {
    settings = {
        label = 'Bennys Motorworks', -- Text label for anything that wants it
        welcomeLabel = "Welcome to Benny's Motorworks!", -- Welcome label in the UI
        enabled = true, -- If the location can be used at all

        ---------- Receipt system ----------
        useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
        -- pay for evenry modification and all modifications will be saved on the vehicle. 
        -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
        -- will receive a receipt and not have to pay for modifications. 

        
        saveUpgrades = { 
            jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                    -- modification, and all will be saved on the vehicle.
            dutyCheck = true, 
        } ,

        upgradesMenuAccess = {
            jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
            dutyCheck = true,
        },
        ------------------------------------
    },
    blip = {
        label = 'Bennys Motorworks',
        coords = vector3(-205.6992, -1312.7377, 31.1588),
        sprite = 72,
        scale = 0.65,
        color = 0,
        display = 4,
        enabled = true,
    },
    categories = { -- Only include the categories you want. A category not listed defaults to FALSE.
        mods = true, -- Performance Mods
        repair = true,
        armor = true,
        respray = true,
        liveries = true,
        wheels = true,
        tint = true,
        plate = true,
        extras = true,
        neons = true,
        xenons = true,
        horn = false,
        turbo = true,
        cosmetics = true, -- Cosmetic Mods
    },
    drawtextui = {
        text = "Bennys Motorworks",
    },
    restrictions = { -- A person must pass ALL the restriction checks. Remove an item below to automatically pass that check.
        job = "any", -- Allowed job. Can be an array of strings for multiple jobs. Any for all jobs
        gang = "any", -- Allowed gang. Can be an array of strings for multiple gangs. Any for all gangs
        allowedClasses = {}, -- Array of allowed classes. Empty will allow any but denied classes.
        deniedClasses = {}, -- Array of denied classes.
    },
    zones = {
        { coords = vector3(-212.55, -1320.56, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
        { coords = vector3(-222.47, -1329.73, 31.0), length = 6.0, width = 4.4, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
    }
},

Vehicle Classes:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
 ]]




 
Config = Config or {}

Config.Locations = {
    ['Innocence'] = {
        settings = {
            label = 'Bennys Motorworks',
            welcomeLabel = "Welcome to Benny's Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for every modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            },

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Bennys Motorworks',
            coords = vector3(-205.6992, -1312.7377, 31.1588),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(-212.55, -1320.56, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
            { coords = vector3(-222.47, -1329.73, 31.0), length = 6.0, width = 4.0, heading = 270.0, minZ = 29.88, maxZ = 33.48 },
        }
    },

    ['Power'] = {
        settings = {
            label = 'Car Dealer Pdm | Bennys',
            welcomeLabel = "Welcome to Car Dealer Pdm | Bennys!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"cardealerpdm"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {""}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Car Dealer Pdm Car Tuning',
            coords = vector3(-29.09, -1086.28, 26.56),
            sprite = 162,
            scale = 0.70,
            color = 0,
            display = 4,
            enabled = false,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = false,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = false,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Bennys Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(-30.8, -1089.43, 26.42), length = 6.0, width = 4.0, heading = 340.0, minZ = 27.0, maxZ = 31.0 },
            { coords = vector3(-37.61, -1088.25, 26.42), length = 6.0, width = 4.0, heading = 340.0, minZ = 27.0, maxZ = 31.0 },
        }
    },

    ['Popular'] = {
        settings = {
            label = 'Customs Motorworks',
            welcomeLabel = "Welcome to Customs Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Bennys Motorworks',
            coords = vector3(725.8828, -1088.7747, 22.1693),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Customs Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(732.99, -1075.0, 22.17), length = 6.0, width = 4.0, heading = 180.0, minZ = 21.0, maxZ = 25.0 },
            { coords = vector3(731.47, -1088.91, 22.17), length = 6.0, width = 4.0, heading = 90.0, minZ = 21.0, maxZ = 25.0 },
        }
    },

    ['Burton'] = {
        settings = {
            label = 'LosSantos Customs',
            welcomeLabel = "Welcome to LosSantos Customs!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {""}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'LosSantos Customs Est.1987',
            coords = vector3(-355.29, -135.28, 39.01),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "LosSantos Customs"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(-324.96, -138.87, 38.38), length = 6.0, width = 4.0, heading = 180.0, minZ = 21.0, maxZ = 25.0 },
        }
    },

    ['Harmony'] = {
        settings = {
            label = 'Harmony Motorworks',
            welcomeLabel = "Welcome to Harmony Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Bennys Motorworks',
            coords = vector3(1178.3921, 2640.5449, 37.7539),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Harmony Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(1182.11, 2640.3, 37.75), length = 6.0, width = 4.0, heading = 0.0, minZ = 36.0, maxZ = 40.0 },
            { coords = vector3(1174.78, 2640.17, 37.75), length = 6.0, width = 4.0, heading = 0.0, minZ = 36.0, maxZ = 40.0 },
        }
    },

    ['Hayes'] = {
        settings = {
            label = 'Hayes Motorworks',
            welcomeLabel = "Welcome to Hayes Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Bennys Motorworks',
            coords = vector3(-1420.1882, -441.8745, 35.9097),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            repair = true,
            turbo = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Hayes Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(-1417.12, -445.98, 35.91), length = 6.0, width = 4.0, heading = 32.0, minZ = 35.0, maxZ = 39.0 },
            { coords = vector3(-1423.67, -450.03, 35.91), length = 6.0, width = 4.0, heading = 32.0, minZ = 35.0, maxZ = 39.0 },
        }
    },

    ['Paleto'] = {
        settings = {
            label = 'Billys Motorworks',
            welcomeLabel = "Welcome to Billys Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Bennys Motorworks',
            coords = vector3(108.3242, 6624.0996, 31.7873),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Billys Motorworks"
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(110.93, 6626.51, 31.79), length = 6.0, width = 4.0, heading = 225.0, minZ = 30.5, maxZ = 34.5 },
            { coords = vector3(105.8, 6621.43, 31.79), length = 6.0, width = 4.0, heading = 225.0, minZ = 30.5, maxZ = 34.5 },
        }
    },

    ['Tunershop'] = {
        settings = {
            label = 'Tunershop',
            welcomeLabel = "Welcome to the Tunershop!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = true,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        blip = {
            label = 'Tunershop',
            coords = vector3(1144.63, -775.87, 57.6),
            sprite = 446,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = {
            mods = true,
            turbo = true,
            repair = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = false,
            cosmetics = true,
        },
        drawtextui = {
            text = "Tunershop",
            icon = "material-icons",
            materialIcon = 'construction',
        },
        restrictions = { deniedClasses = { 18 } },
        zones = {
            { coords = vector3(1138.88, -782.1, 57.61), length = 6.0, width = 4.0, heading = 180.0, minZ = 6.0, maxZ = 10.0 },
            { coords = vector3(1122.13, -784.5, 57.69), length = 6.0, width = 4.0, heading = 180.0, minZ = 6.0, maxZ = 10.0 },
        }
    },

    ['MRPD'] = {
        settings = {
            label = 'MRPD Motorworks',
            welcomeLabel = "Welcome to MRPD Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = false,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {""}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {""}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
            
        },
        categories = {
            repair = true,
            respray = true,
            liveries = true,
            tint = true,
            extras = true,
            plate = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "MRPD Motorworks",
        },
        restrictions = {
            job = { 'police', 'bcso', 'sasp' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(450.09, -975.92, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5, maxZ = 28.5 },
            { coords = vector3(435.53, -975.97, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5, maxZ = 28.5 },
        }
    },
    ['MRPD3'] = {
        settings = {
            label = 'MRPD Motorworks',
            welcomeLabel = "Welcome to MRPD Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = false,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {""}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {""}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
            
        },
        categories = {
            repair = true,
            respray = false,
            liveries = true,
            tint = true,
            extras = true,
            plate = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "MRPD Motorworks",
        },
        restrictions = {
            job = { 'police', 'bcso', 'sasp' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(871.6, -1350.34, 26.31), length = 5.0, width = 4.0, heading = 90.0, minZ = 24.5, maxZ = 28.5 },
            -- { coords = vector3(435.53, -975.97, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5, maxZ = 28.5 },
        }
    },

    ['Pillbox'] = {
        settings = {
            label = 'Pillbox Motorworks',
            welcomeLabel = "Welcome to Pillbox Motorworks!",
            enabled = true,
            ---------- Receipt system ----------
            useReceiptSystem = false,  -- In the case of "useReceiptSystem" = false everyone will need 
            -- pay for evenry modification and all modifications will be saved on the vehicle. 
            -- In the case of "useReceiptSystem = true" only players who don't have any job from list below "saveUpgrades"
            -- will receive a receipt and not have to pay for modifications. 

            
            saveUpgrades = { 
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will need to pay for every 
                                     -- modification, and all will be saved on the vehicle.
                dutyCheck = true, 
            } ,

            upgradesMenuAccess = {
                jobs = {"mechanic"}, -- If a player has some of these jobs, they will have access to the "upgrades menu" - engine upgrades, brake upgrades...
                dutyCheck = true,
            },
            ------------------------------------
        },
        categories = {
            repair = true,
            respray = true,
            liveries = true,
            tint = true,
            extras = true,
            plate = true,
            cosmetics = true,
        },
        drawtextui = {
            text = "Pillbox Motorworks"
        },
        restrictions = {
            job = { 'ambulance' },
            allowedClasses = { 18 },
        },
        zones = {
            { coords = vector3(337.2, -579.6, 28.8), length = 9.4, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
            { coords = vector3(340.38, -570.8, 28.8), length = 8.8, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
        }
    },
}

-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 
-- Please note that there is no longer any support for this script, so it will be used at your own discretion and risk. 