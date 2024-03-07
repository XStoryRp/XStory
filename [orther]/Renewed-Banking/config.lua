lib.locale()
Shared = {}
Config = {
    framework = 'qb', -- QB and ESX preconfigured edit the framework.lua to add functionality to other frameworks
    renewedMultiJob = false, -- QBCORE ONLY! https://github.com/Renewed-Scripts/qb-phone  
    progressbar = 'rectangle', -- circle or rectangle (Anything other than circle will default to rectangle)
    currency ='USD', -- USD, EUR, GBP ect.....
    atms = {
        `prop_atm_01`,
        `prop_atm_02`,
        `prop_atm_03`,
        `prop_fleeca_atm`
    },
    peds = {
        [1] = { -- Pacific Standard
            model = 'u_m_m_bankman',
            coords = vector4(241.44, 227.19, 106.29, 170.43),
            createAccounts = true
        },
        [2] = {
            model = 'ig_barry',
            coords = vector4(313.84, -280.58, 54.16, 338.31)
        },
        [3] = {
            model = 'ig_barry',
            coords = vector4(149.46, -1042.09, 29.37, 335.43)
        },
        [4] = {
            model = 'ig_barry',
            coords = vector4(-351.23, -51.28, 49.04, 341.73)
        },
        [5] = {
            model = 'ig_barry',
            coords = vector4(-1211.9, -331.9, 37.78, 20.07)
        },
        [6] = {
            model = 'ig_barry',
            coords = vector4(-2961.14, 483.09, 15.7, 83.84)
        },
        [7] = {
            model = 'ig_barry',
            coords = vector4(1174.8, 2708.2, 38.09, 178.52)
        },
        [8] = { -- paleto
            model = 'u_m_m_bankman',
            coords = vector4(-112.22, 6471.01, 31.63, 134.18),
            createAccounts = true
        }
    }
}


Shared.EconomyTax = {
    ['low'] = 100000,
    ['medium'] = 250000,
    ['high'] = 500000,    
    ['ultra'] = 1000000,
    ['extreme'] = 2000000,
}

Shared.EconomyTaxPercentage = {
    ['low'] = 0.1,
    ['medium'] = 0.5,
    ['high'] = 0.6,    
    ['ultra'] = 0.8,
    ['extreme'] = 1,
}

Shared.EconomyTaxInterval = 120 -- in minutes (2 hrs)

Shared.CarTaxRate = 110 -- $200 per car
Shared.CarTaxInterval = 180 -- in minutes (3hrs)

Shared.HouseTaxRate = 500 -- $500 per house 
Shared.HouseTaxInterval = 180 -- in minutes (3hrs)

-- account where all the taxes will go to
Shared.TaxesAccountEnabled = false
Shared.TaxesAccount = {
    accountType = 'player', -- 'business' or 'player'
    playerCitizenId = '322', -- player citizenid (only for player account)
    business_name = 'state', -- 'businessName' (only for business account)
    business_id = 1 -- -- 'businessId' (only for business account)
}

Shared.Lang = {
    player_tax = 'Player tax recieved $%d',
    car_tax = 'Vehicle tax recieved $%d',
    house_tax = 'House tax recieved $%d'
}