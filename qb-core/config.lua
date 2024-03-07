QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 5) -- Gets max players from config file, default 48
QBConfig.DefaultSpawn = vector3(-8.88, 512.91, 174.63)
QBConfig.UpdateInterval = 10 -- how often to update player data in minutes
QBConfig.StatusInterval = 3500 -- how often to check hunger/thirst status in milliseconds

QBConfig.Money = {}
QBConfig.CashItem = true
QBConfig.Money.MoneyTypes = { cash = 100, bank = 400, crypto = 0 } -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = {} -- Money that is not allowed going in minus
QBConfig.Money.PayCheckTimeOut = 90 -- The time in minutes that it will give the paycheck
QBConfig.Money.PayCheckSociety = true -- If true paycheck will come from the society account that the player is employed at, requires qb-management

QBConfig.Player = {}
QBConfig.Player.HungerRate = 1.005 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 0.09 -- Rate at which thirst goes down.
QBConfig.Player.AddictMethRate = 8.6 
QBConfig.Player.AddictCokeRate = 6.8 
QBConfig.Player.Bloodtypes = {
    "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-",
}

QBConfig.Server = {} -- General server config
QBConfig.Server.Closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.ClosedReason = "🔐The server is closed. \n📃For more information, click on the displayed link! []" -- Reason message to display when people can't join the server
-- QBConfig.Server.Uptime = 0 -- Time the server has been up.
QBConfig.Server.Whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.WhitelistPermission = 'admin' -- Permission that's able to enter the server when the whitelist is on
QBConfig.Server.PVP = true -- Enable or disable pvp on the server (Ability to shoot other players)
QBConfig.Server.Discord = "https://discord.gg/bfrU6PK9yS" -- Discord invite link
QBConfig.Server.CheckDuplicateLicense = false -- Check for duplicate rockstar license on join
QBConfig.Server.Permissions = {'god' , 'mod' , 'admin' , 'manager' , 'senadmin' , 'dev'} -- Add as many groups as you want here after creating them in your server.cfg
QBConfig.Inventory = 'qb-inventory'
QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = true, -- Allow notifications to stack with a badge instead of repeating
    position = "top-right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = false -- Display Progress Bar
}

QBConfig.Commands = {} -- Command Configuration
QBConfig.Commands.OOCColor = {255, 151, 133} -- RGB color code for the OOC command

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = ''
    },
    primary = {
        classes = 'primary',
        icon = ''
    },
    error = {
        classes = 'error',
        icon = ''
    },
    police = {
        classes = 'police',
        icon = ''
    },
    ambulance = {
        classes = 'ambulance',
        icon = ''
    }
}

QBConfig.AdaptiveCard = {
    Enabled = false,
    Server_Name = 'TheSpy RolePlay | London-UK',
    Wait = 12, -- How many seconds should splash page be shown for? (Max is 12)
    Banner = 'https://imgur.com/a/BnSgza3',
    Heading = '',
    ---------------- Left Button
    Button_1 = 'Connect To Server [Not Working]',
    Icon_1 = '😉',
    Link_1 = '',
    ---------------- Right Button
    Button_2 = 'Discord Server - Join US for more information',
    Icon_2 = '🐌',
    Link_2 = 'https://discord.gg/wm4hmFSeDD',
    ---------------- Middle Button
    Button_3 = 'Web Site / Shop [Not Working]',
    Icon_3 = '',
    Link_3 = '',
    ---------------- Bottom Banner
    Icon_4 = '😃',
    Link_4 = 'https://discord.gg/wm4hmFSeDD',
}