KloudDev.Locations = {
    ["slaughterer"] = {
        Restocking = false, -- DONT CHANGE
        Releasing = false, -- DONT CHANGE
        AnimalModel = "a_c_cow", -- Animal model to spawn
        CowField = vec3(1268.26, 1816.68, 83.07), -- Cows will spawn here
        RestrictJob = true, -- Require job?
        MaxCows = 10, -- Maximum cows to be spawned on the field
        MaxCowsInTruck = 5, -- Maximum cows the truck can hold
        MaxStock = 15, -- Maximum cows the storage can hold
        Item = {
            GiveItem = true, -- Give BoxItemName? if false Adjust Storage Reward for money reward.
            BoxItemName = "boxed_meat",-- This'll be sent to the stash and is registered as a useable item to add meat based on the metadata
            ContentItemName = "meat",-- After using the box this item will be added based on the metadata
            -- How many meat will the box contain?
            Min = 2,
            Max = 5
        },
        Stash = {
            Rank = 1, -- Minimum job level to access stash
            Label = "Slaughter Stash", -- Stash label
            Slots = 50, -- Stash slot count
            Weight = 50000 -- Stash weight
        },
        Deposit = { 
            Truck = {
                Enabled = true, -- Require deposit fee for vehicle rental?
                Type = "cash", -- Account type?
                Fee = 500, -- How much then?
            },
            Storage = {
                Enabled = true, -- Require deposit fee for taking out cow?
                Type = "cash", -- Account type?
                Fee = 100 -- How much then?
            }
        },
        Reward = {
            Truck = { 
                Enabled = true, -- Enable reward for cows stored?
                Type = "cash", -- Account type?
                Reward = 25 -- How much per cow then?
            },
            Storage = {
                Enabled = true, -- Enable reward for storing boxed meat?
                Type = "cash", -- Account type?
                Reward = 65 -- How much per meat inside the box then?
            },
        },
        Duty = { -- Change duty locations
            vec3(988.64605712891, -2129.0275878906, 30.499950408936),
            vec3(973.21, -2187.58, 29.98)
        },
        Blip = {
            Enabled = false,
            Coords = vec3(962.26, -2189.53, 30.51),
            Name = "Raven Slaughterhouse",
            Sprite = 815,
            Scale = 0.9,
            Colour = 1
        },
        Vehicle = {
            VehicleSpawn = { -- Vehicle spawn points
                vec4(958.98, -2199.07, 30.53, 84.68),
            },
            DropOff = { -- Restock zone
                vec4(948.0, -2175.61, 30.53, 83.97)
            },
            Model = "benson", -- Vehicle model
        },
        Trolly = { -- Trolleys
            vec4(991.46, -2178.69, 29.98, 23.99),
            vec4(996.74, -2136.77, 30.22, 84.05)
        },
        Machine = {
            ["ravens"] = { -- Key should be the same with TrollySpots
                coords = vec4(998.28, -2143.05, 30.23, 353.06), -- Coords of target and initial location of the cow
                xplus = 0.0005, -- Determines what direction the cow will move.
                yplus = 0.005, -- 
                zplus = 0.0, -- Adjust these values to your liking
                taken = false, -- Dont change this
            }
        },
        TrollySpots = {
            ["ravens"] = {  -- Key should be the same with Machine
                { vec4(999.83, -2136.99, 29.22, 262.53), taken = false },
                { vec4(998.8, -2134.86, 29.48, 354.9), taken = false }
            }
        },
        Slaughter = {
            Truck = vec4(962.26, -2189.53, 30.51, 86.41), -- Vehicle rent ped
            Stock = vec4(991.78, -2183.07, 30.68, 173.57), -- Cow request ped
            Stash = vec4(960.94, -2126.79, 31.46, 281.51), -- Stash ped

            Spawn = vec4(966.54, -2178.0, 30.18, 238.1), -- Cow initial spawn point
            EscortSpawn = vec4(967.89, -2179.35, 30.06, 251.5), -- Cow escort initial spawn point
            EndPath = vec4(983.69, -2183.46, 30.67, 264.49), -- Cow will go here
            EscortEndPath =vec4 (984.27, -2182.65, 30.67, 175.89), -- Escort wil go here

            KillCow = vec4(988.59, -2183.98, 30.62, 265.52), -- Teleport cow to machine (there's an invisible wall)
            KilledCow = vec4(988.22, -2179.57, 30.05, 264.66), -- Teleport killed cow
        },
        Ped = {
            Truck = { -- Vehicle rental ped
                Model = "csb_chef",
            },
            Stock = { -- Cow request ped
                Model = "s_m_y_factory_01",
            },
            Stash = { -- Stash ped
                Model = "s_m_y_factory_01",
            },
            Escort = { -- Cow escort ped
                Model = "a_m_m_farmer_01"
            }
        },
        Outfit = { -- Job Outfit
            Male = {
                ['pants'] = { item = 36, texture = 0 },
                ['arms'] = { item = 63, texture = 0 },
                ['t-shirt'] = { item = 15, texture = 0 },
                ['vest'] = { item = 0, texture = 0 },
                ['torso2'] = { item = 56, texture = 0 },
                ['decals'] = { item = 0, texture = 0 },
                ['accessory'] = { item = 0, texture = 0 },
                ['shoes'] = { item = 56, texture = 0 },
                ['hat'] ={ item = 0, texture = 0 },
            },
            Female = {
                ['arms'] = { item = 72, texture = 0 },
                ['t-shirt'] = { item = 15, texture = 0 },
                ['torso2'] = { item = 49, texture = 0 },
                ['vest'] = { item = 0, texture = 0 },
                ['decals'] = { item = 0, texture = 0 },
                ['accessory'] = { item = 0, texture = 0 },
                ['pants'] = { item = 35, texture = 0 },
                ['shoes'] = { item = 59, texture = 0 },
                ['hat'] ={ item = 0, texture = 0 },
            }
        }
    },
}