Config = Config or {}

local whitelist = {
     models = {
          -- if a vehicle model exist in models script will skip class check!
          -- 'fiat600',
          -- 'adder'
     },
     classes = {
          -- https://docs.fivem.net/natives/?_0x29439776AAA00A62
          18 -- emergency
     },
     jobs = { 'police' },
     key_cutting_citizenid = {
          -- 'IFD87837'
     }
}

-- items added only after gun rack installation
Config.InitialItems = {
     -- {
     --      name = 'empty_weed_bag',
     --      amount = 5
     -- },
}

Config.gunrack = {
     keybind = 'j',
     install_duration = 10, --sec
     opening_duration = 4, --sec
     add_initial_items = false,
     while_open_animation = true, -- while inventory screen is on
     slots = 2,
     size = 50000,
     whitelist = whitelist,
     disable_job_check = false, -- make sure it's fakse if your not using keys or everybody can unlock gunracks
     -- optional make sure you did optional part of installation
     use_keys_to_unlock_gunrack = true,
     cutting_duration = 25,
     stash_prefix = 'PDGunrack - '
}
-- Sling --