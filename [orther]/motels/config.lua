Config = Config or {}

Config.UseTarget = true
Config.Target = 'qb' -- Currently support target system qb or ox only necessary if you even use target!
Config.Inventory = 'qb' -- Currently support inventory system qb or ox, qb SHOULD also support qs-inventory so if you use qs-inventory write qb!

Config.KeyName = 'motel_key' -- The name of the key item you use for the doors!

Config.Motels = {
    ['marathon-motel'] = {
        label = 'Marathon Ave Motel',
        coords = vector3(-1477.08, -674.35, 29.04)
    }
}

Config.MotelRooms = {
    ['marathon-motel'] = {
        {
            label = 'Marathon Ave Motel Room #1', -- The name of the Motel room
            room = 'mahr_1', -- The id of the room, has to be unique!
            price = 225, -- Price for the Motel room every week!
            slots = 10, -- How many slots the stash has!
            weight = 35000, -- How much weight the stash has!
            doorCoords = vector3(-1494.44, -668.33, 29.28), -- Where the door is placed!
            targetCoords = vector3(-1493.64, -668.22, 29.03), -- Where the target to lock and unlock the door is!
            doorHash = -2123441472, -- The hash of the door!
            storage = vector3(-1497.76, -668.84, 29.03), -- Stash/Storage location
            wardrobe = vector3(-1495.93, -670.77, 29.03), -- Wardrobe Location
            locked = true, -- Whether the door starts locked or not!
            renter = nil, -- Leave this blank, will assign who's the renter!
            minZ = 25,
            maxZ = 31, -- Necessary if you have fx 2 story building for motel
            debugPoly = true -- Box to see if the boxes/polyzones mash together
        },
        {
            label = 'Marathon Ave Motel Room #2',
            room = 'mahr_2',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1498.82, -664.72, 29.29),
            targetCoords = vector3(-1498.02, -664.61, 29.03),
            doorHash = -2123441472,
            storage = vector3(-1502.33, -665.26, 29.04),
            wardrobe = vector3(-1500.24, -667.24, 29.04),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #3',
            room = 'mahr_3',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1495.2, -660.83, 29.28),
            targetCoords = vector3(-1495.32, -661.86, 29.03),
            doorHash = -2123441472,
            storage = vector3(-1494.86, -657.4, 29.03),
            wardrobe = vector3(-1497.27, -658.96, 29.03),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #4',
            room = 'mahr_4',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1490.61, -657.57, 29.24),
            targetCoords = vector3(-1490.71, -658.32, 29.03),
            doorHash = -2123441472,
            storage = vector3(-1490.26, -654.05, 28.99),
            wardrobe = vector3(-1492.7, -655.64, 28.99),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #5',
            room = 'mahr_5',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1486.6, -654.71, 29.84),
            targetCoords = vector3(-1486.58, -655.66, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1486.25, -651.19, 29.6),
            wardrobe = vector3(-1488.72, -652.67, 29.6),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #6',
            room = 'mahr_6',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1482.0, -651.38, 29.64),
            targetCoords = vector3(-1481.95, -652.42, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1481.83, -647.98, 29.6),
            wardrobe = vector3(-1484.11, -649.36, 29.6),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #7',
            room = 'mahr_7',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1478.05, -648.49, 29.84),
            targetCoords = vector3(-1478.15, -649.31, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1477.7, -644.96, 29.6),
            wardrobe = vector3(-1479.99, -646.68, 29.6),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #8',
            room = 'mahr_8',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1473.52, -645.19, 29.84),
            targetCoords = vector3(-1473.5, -645.99, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1473.18, -641.66, 29.6),
            wardrobe = vector3(-1475.57, -643.33, 29.6),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #9',
            room = 'mahr_9',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1469.5, -642.27, 29.84),
            targetCoords = vector3(-1469.76, -643.04, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1469.23, -638.8, 29.6),
            wardrobe = vector3(-1471.58, -640.35, 29.59),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #10',
            room = 'mahr_10',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1464.9, -638.92, 29.84),
            targetCoords = vector3(-1464.94, -639.86, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1464.69, -635.64, 29.59),
            wardrobe = vector3(-1466.89, -637.07, 29.59),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #11',
            room = 'mahr_11',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1460.57, -641.06, 29.83),
            targetCoords = vector3(-1461.42, -640.93, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1457.04, -641.4, 29.59),
            wardrobe = vector3(-1458.65, -638.96, 29.59),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #12',
            room = 'mahr_12',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1490.66, -671.45, 33.64),
            targetCoords = vector3(-1489.81, -671.3, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1494.16, -672.0, 33.39),
            wardrobe = vector3(-1492.09, -673.99, 33.39),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #13',
            room = 'mahr_13',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1490.66, -671.45, 33.64),
            targetCoords = vector3(-1489.98, -671.5, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1493.84, -671.85, 33.39),
            wardrobe = vector3(-1492.1, -674.01, 33.39),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #14',
            room = 'mahr_14',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1498.83, -664.73, 33.63),
            targetCoords = vector3(-1497.93, -664.38, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1502.33, -665.27, 33.38),
            wardrobe = vector3(-1500.17, -667.32, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #15',
            room = 'mahr_15',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1495.19, -660.94, 33.63),
            targetCoords = vector3(-1495.33, -661.77, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1494.85, -657.41, 33.38),
            wardrobe = vector3(-1497.18, -659.08, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #16',
            room = 'mahr_16',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1490.59, -657.6, 33.63),
            targetCoords = vector3(-1490.62, -658.43, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1490.21, -654.11, 33.38),
            wardrobe = vector3(-1492.52, -655.39, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #17',
            room = 'mahr_17',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1486.6, -654.71, 33.63),
            targetCoords = vector3(-1486.76, -655.58, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1486.23, -651.22, 33.38),
            wardrobe = vector3(-1488.63, -652.8, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #18',
            room = 'mahr_18',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1482.01, -651.37, 33.63),
            targetCoords = vector3(-1482.01, -652.35, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1481.72, -647.96, 33.38),
            wardrobe = vector3(-1484.01, -649.39, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false
        },    
        {
            label = 'Marathon Ave Motel Room #19',
            room = 'mahr_19',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1478.05, -646.5, 33.63),
            targetCoords = vector3(-1478.16, -649.32, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1481.72, -647.96, 33.38),
            wardrobe = vector3(-1484.01, -649.39, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #20',
            room = 'mahr_20',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1473.45, -645.16, 33.63),
            targetCoords = vector3(-1473.43, -646.07, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1473.03, -641.74, 33.38),
            wardrobe = vector3(-1475.44, -643.11, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #21',
            room = 'mahr_21',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1469.49, -642.26, 33.63),
            targetCoords = vector3(-1469.58, -643.1, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1469.24, -638.73, 33.38),
            wardrobe = vector3(-1471.63, -640.38, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #22',
            room = 'mahr_22',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1464.9, -638.92, 33.64),
            targetCoords = vector3(-1464.87, -639.85, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1464.56, -635.39, 33.39),
            wardrobe = vector3(-1466.85, -637.02, 33.39),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #23',
            room = 'mahr_23',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1460.57, -641.06, 33.63),
            targetCoords = vector3(-1461.82, -641.16, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1457.18, -641.32, 33.38),
            wardrobe = vector3(-1458.49, -639.2, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #24',
            room = 'mahr_24',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1451.65, -653.34, 33.63),
            targetCoords = vector3(-1452.36, -653.28, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1448.13, -653.61, 33.38),
            wardrobe = vector3(-1449.67, -651.44, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #25',
            room = 'mahr_25',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1454.55, -656.63, 33.63),
            targetCoords = vector3(-1454.5, -655.72, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1454.69, -659.82, 33.38),
            wardrobe = vector3(-1452.61, -658.62, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #26',
            room = 'mahr_26',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1459.14, -659.97, 33.63),
            targetCoords = vector3(-1459.01, -659.21, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1459.36, -663.42, 33.39),
            wardrobe = vector3(-1456.99, -661.9, 33.39),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #25',
            room = 'mahr_25',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1454.55, -656.63, 33.63),
            targetCoords = vector3(-1454.5, -655.72, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1454.69, -659.82, 33.38),
            wardrobe = vector3(-1452.61, -658.62, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #27',
            room = 'mahr_27',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1463.11, -662.84, 33.63),
            targetCoords = vector3(-1463.12, -662.04, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1463.43, -666.24, 33.38),
            wardrobe = vector3(-1461.21, -664.92, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #28',
            room = 'mahr_28',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1467.71, -666.18, 33.63),
            targetCoords = vector3(-1467.65, -665.28, 33.38),
            doorHash = -2123441472,
            storage = vector3(-1468.05, -669.65, 33.38),
            wardrobe = vector3(-1465.69, -668.23, 33.38),
            locked = true,
            renter = nil,
            minZ = 32,
            maxZ = 35,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #29',
            room = 'mahr_29',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1451.87, -653.36, 29.84),
            targetCoords = vector3(-1452.72, -653.44, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1448.37, -653.57, 29.59),
            wardrobe = vector3(-1449.7, -651.4, 29.59),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #30',
            room = 'mahr_30',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1454.55, -656.63, 29.84),
            targetCoords = vector3(-1454.41, -655.85, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1454.8, -659.9, 29.6),
            wardrobe = vector3(-1452.46, -658.57, 29.6),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #31',
            room = 'mahr_31',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1459.14, -659.97, 29.84),
            targetCoords = vector3(-1459.21, -659.02, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1459.36, -663.42, 29.6),
            wardrobe = vector3(-1457.14, -661.98, 29.6),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #32',
            room = 'mahr_32',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1463.11, -662.84, 29.83),
            targetCoords = vector3(-1463.04, -661.97, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1463.48, -666.18, 29.59),
            wardrobe = vector3(-1461.05, -664.75, 29.59),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #33',
            room = 'mahr_33',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1467.72, -666.16, 29.85),
            targetCoords = vector3(-1467.66, -665.3, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1467.98, -669.49, 29.59),
            wardrobe = vector3(-1465.68, -668.08, 29.61),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
        {
            label = 'Marathon Ave Motel Room #34',
            room = 'mahr_34',
            price = 225,
            slots = 10,
            weight = 35000,
            doorCoords = vector3(-1471.67, -669.07, 29.84),
            targetCoords = vector3(-1471.45, -668.27, 29.58),
            doorHash = -2123441472,
            storage = vector3(-1471.95, -672.32, 29.59),
            wardrobe = vector3(-1469.78, -671.1, 29.59),
            locked = true,
            renter = nil,
            minZ = 25,
            maxZ = 31,
            debugPoly = false,
        },
    }
}