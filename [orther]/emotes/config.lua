--- Maintained by TayMcKenzieNZ for the community ---
--- Leakers and resellers are the absolute scum of the earth ---
--- RPEMOTES IS AND ALWAYS WILL BE FREE. STOP PAYING FOR LEAKS!!! ---

Config = {
    -- Change the language of the menu here!.
    -- Thank you to those who provided translations.
    -- If you would like to provide translations or help fix them, join our Discord!
    -- Check languages code below to change the MenuLanguage
    MenuLanguage = 'en',
    -- Set this to true to enable some extra prints
    DebugDisplay = false,
    -- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
    EnableCancelKeybind = false,
    CancelEmoteKey = 'x', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- Set this to true if you want to disarm the player when they play an emote.
    DisarmPlayer = false,
    -- Set this to true if you want to allow people punching while emotes are playing
    AllowPunching = false,
    -- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
    AllowedInCars = true,
    -- You can disable the menu here / change the keybind. It is currently set to F4
    -- The keybind you set here will be server sided for new players. existing players can set their own in the ESC menu keybind settings
    MenuKeybindEnabled = false,
    MenuKeybind = 'f4', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can disable the Favorite emote keybinding here.
    FavKeybindEnabled = true,
    FavKeybind = 'capital', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can change the header image for the menu here
    -- Use a 512 x 128 image!
    -- Note this might cause an issue of the image getting stuck on peoples screens
    CustomMenuEnabled = false,
    MenuImage = "https://i.imgur.com/2HCApuf.png", ----[Custom banner IMGUR or GIPHY URLs go here ]---
    -- You can change the menu image by pasting a link above. It must be the same width and length
    -- You can change the name of the menu here or leave it blank to remove the text in front of the custom banners
    MenuTitle = "",
    -- You can change the menu position here
    MenuPosition = "left", -- (left, right)
    -- You can enable or disable the Ragdoll keybinding here.
    RagdollEnabled = false,
    RagdollKeybind = 'u', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- You can enable or disable Ragdoll as Toggle here. Only works if RagdollEnabled is set to true.
    RagdollAsToggle = false,
    -- You can disable the Facial Expressions menu here.
    ExpressionsEnabled = true,
    -- Saves expression style to client and applies them on joining
    PersistentExpression = true,
    -- You can disable the Walking Styles menu here.
    WalkingStylesEnabled = true,
    -- You can disable the Cancel menu here.
    CancelEmoteEnabled = false,
    -- Saves walk styles to client and applies them on joining
    PersistentWalk = true,
    -- You can disable the Shared Emotes here.
    SharedEmotesEnabled = true,
    -- If you have the SQL imported enable this to turn on keybinding.
    SqlKeybinding = true,
    -- If you don't like gta notifications, you can disable them here to have messages in the chat.
    NotificationsAsChatMessage = true,
    -- Used for few framework dependent things. Accepted values: "qb-core", false
    Framework = "qb-core",
    -- You can disable the Adult Emotes here.
    AdultEmotesDisabled = true,
    -- You can disable the Animal Emotes here.
    AnimalEmotesEnabled = false,
    -- Used to enable or disable the search feature in the menu.
    Search = true,
    -- You can disable the handsup here / change the keybind. It is currently set to Y
    HandsupEnabled = false,
    HandsupKeybind = 'Y', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    HandsupKeybindEnabled = false,
    HandsupKeybindInCarEnabled = false,
    PersistentEmoteAfterHandsup = false, -- If true, you will play the emote you were playing previously after you stop handsup.
    -- You can disable the fingrer pointing here / change the keybind. It is currently set to B
    PointingEnabled = true,
    PointingKeybindEnabled = true,
    PointingKeybind = 'B', -- Get the button string here https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    PointingKeybindInCarEnabled = false,
    PersistentEmoteAfterPointing = false, -- If true, you will play the emote you were playing previously after you stop pointing.
    -- If crouching should be enabled.
    CrouchEnabled = false,
    CrouchKeybindEnabled = false, -- If true, crouching will use keybinds.
    CrouchKeybind = 'lcontrol', -- The default crouch keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    CrouchOverride = false, -- If true, you won't enter stealth mode even if the crouch key and the "duck" key are the same.
    -- If crawling should be enabled.
    CrawlEnabled = true,
    CrawlKeybindEnabled = true, -- If true, crawling will use keybinds.
    CrawlKeybind = 'rcontrol', -- The default crawl keybind, get the button string here: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- If turned on, playing an emote will cancel the previous one.
    CancelPreviousEmote = true,
    -- If turned off, opening the menu and playing an emote will not be possible while swimming
    AllowInWater = false,
    -- If set to true, the /binoculars command will be enabled.
    BinocularsEnabled = false,
    -- If set to true, you'll be able to toggle between different vision modes in the binoculars
    AllowVisionsToggling = false,
    -- If set to true, the /newscam command will be enabled.
    NewscamEnabled = false,
    -- Check for updates
    CheckForUpdates = false,
}

Config.KeybindKeys = {
    ['num4'] = 108,
    ['num5'] = 110,
    ['num6'] = 109,
    ['num7'] = 117,
    ['num8'] = 111,
    ['num9'] = 118
}