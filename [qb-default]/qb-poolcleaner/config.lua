Config = {}
Config.Debug = false

QBCore = exports['qb-core']:GetCoreObject() -- DELETE IF YOU USE ESX
-- ESX = exports["es_extended"]:getSharedObject() -- UNCOMMENT IF YOU USE ESX

Config.Settings = {
    Framework = 'QB', -- QB/ESX
    Target = "QB", -- OX/QB/BT
    StartPos = vector3(-850.04, -251.9, 40.05 + 1),
    Salary = 55, 
    SalaryType = 'cash',
    Trash = 'prop_rub_litter_03',
    CleanTime = 4000,
    Broom = {
        Bone = 28422,
        Name = 'prop_tool_broom',
        Placement = {
            vector3(-0.010000, 0.040000, -0.030000),
            vector3(0.000000, 0.000000, 0.000000),
        },
    },
}

Config.Locations = {
    [1] = {
        Blip = vector3(-898.14, 174.3, 69.44),
        Work = {
            vector3(-889.09, 172.03, 69.44),
            vector3(-906.48, 167.9, 69.45),
            vector3(-897.82, 175.5, 69.45),
            vector3(-884.57, 176.01, 69.44),
            vector3(-874.22, 188.61, 70.24),
            vector3(-889.14, 187.74, 69.83),
            vector3(-907.9, 183.36, 69.45),
            vector3(-903.54, 191.46, 69.45),
            vector3(-905.66, 200.79, 69.5),
            vector3(-914.41, 198.47, 69.5),
            vector3(-917.81, 190.24, 69.42),
            vector3(-912.16, 170.15, 69.45),
            vector3(-905.56, 165.62, 69.84),
            vector3(-895.9, 173.82, 69.45),
            vector3(-887.43, 176.63, 69.44),
            vector3(-891.8, 180.4, 69.45),
            vector3(-887.67, 202.3, 69.83),
            vector3(-890.14, 200.39, 69.83),
            vector3(-899.02, 205.57, 70.05),
        },
    },
    [2] = {
        Blip = vector3(-894.3, -39.67, 36.98),
        Work = {
            vector3(-898.1, -44.31, 38.24),
            vector3(-891.92, -45.92, 38.25),
        },
    },
    [3] = {
        Blip = vector3(1008.91, -563.36, 60.20),
        Work = {
            vector3(1007.91, -556.63, 60.44),
            vector3(997.84, -563.78, 60.25),
            vector3(991.95, -569.87, 60.25),
            vector3(995.53, -576.96, 60.25),
            vector3(998.33, -571.67, 60.20),
            vector3(999.44, -568.40, 60.59),
            vector3(1005.46, -564.64, 60.20),
            vector3(1013.08, -568.51, 60.25),
            vector3(1013.29, -576.04, 60.11),
            vector3(1010.00, -577.67, 60.20),
            vector3(1006.87, -579.12, 60.25),
            vector3(1003.44, -577.93, 60.22),
            vector3(1018.08, -567.32, 59.62),
            vector3(1017.12, -568.49, 59.56),
            vector3(1011.68, -560.85, 60.20),
            vector3(1011.73, -572.37, 60.20),
            vector3(1013.50, -567.92, 60.25),
        },
    }
}

Config.Lang = {
    Clean = "Clean up",
    DoingSomething = "You are already doing something",
    Start = "Start working",
    Started = "You started working, Locations are marked on your GPS",
    Stop = "Stop working",
    Stoped = "You stoped working",
    AlreadyWorking = 'You are already working',
    NotWorking = 'You are not working here',
    Reward = 'You got '
}

