Config = Config or {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
-- Config --

Config.StandDeposit = 5

Config.MyLevel = 1
Config.MaxReputation = 100

Config.Locations = {
    ["take"] = {
        coords = vector4(39.31, -1005.54, 29.48, 240.57),
    },
    ["spawn"] = {
        coords = vector4(38.15, -1001.65, 29.44, 342.5),
    },
}

Config.Stock = {
    ["exotic"] = {
        Current = 0,
        Max = {
            [1] = 5,
            [2] = 10,
            [3] = 15,
            [4] = 20,
            [5] = 25,
        },
        Label = Lang:t("info.label_a"),
        Price = {
            [1] = {
                min = 5,
                max = 20,
            },
            [2] = {
                min = 10,
                max = 25,
            },
            [3] = {
                min = 15,
                max = 30,
            },
            [4] = {
                min = 20,
                max = 35,
            },
            [5] = {
                min = 25,
                max = 40,
            },
        }
    },
    ["rare"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t("info.label_b"),
        Price = {
            [1] = {
                min = 6,
                max = 9,
            },
            [2] = {
                min = 7,
                max = 10,
            },
            [3] = {
                min = 8,
                max = 11,
            },
            [4] = {
                min = 9,
                max = 12,
            },
        }
    },
    ["common"] = {
        Current = 0,
        Max = {
            [1] = 15,
            [2] = 30,
            [3] = 45,
            [4] = 60,
        },
        Label = Lang:t('info.label_c'),
        Price = {
            [1] = {
                min = 4,
                max = 6,
            },
            [2] = {
                min = 5,
                max = 7,
            },
            [3] = {
                min = 6,
                max = 9,
            },
            [4] = {
                min = 7,
                max = 9,
            },
        }
    },
}
