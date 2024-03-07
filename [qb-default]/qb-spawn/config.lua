Config = {}

Config.Housing = "ps-housing" -- Your housing script, currently supported by qb-housing & ps-housing.

Config.ServerLogo = "" -- Your server logo URL

Config.ScriptStyle = "dark" -- The style you would like the script to be, available options are : light, dark, natural. If not light then the auto switch between dark and light will be stop.

Config.EditorPermission = {
    UseGod = false, -- Whether or not you want to allow every god admin to access the editor.
    Permissions = { -- Add to the table citizenids to have permission to the editor.
        "",
    },
}

Config.CameraSettings = {
    SkyCamera = {
        ZPlus = 1600, -- The height value you would like the camera to be positioned at.
    },
}

Config.Houses = { -- This are the configuration available for the houses locations.
    LocationInfo = { -- The location info, colors etc.
        IconName = "fas fa-bed",
        Colors = { -- The colors data, can be hsl, hex rgb etc.
            IconColor = "#000000",
            BackgroundColor = "#FFBEBA",
        },
    },
}

Config.Locations = { -- After creating the locations in the editor you need to set-up the location image and coords for that location here.
    ["MRPD"] = { -- The location name the image and coords would be assigned to.
        Radius = 20.0, -- The radius of which the script will check for people.
        Coords = vector4(-268.87, -962.24, 31.22, 117.06), -- The coords the player would get spawned at.
        ImageURL = "https://cdn.discordapp.com/attachments/1154886256082288670/1194386770083713125/image.png?ex=65b02a5c&is=659db55c&hm=285d54b6a8c081555cdfeb9b91a6cb3db81defc027c4558c751d88574d2b3f24&", -- The imageURL that is going to be displayed in the UI.
    },
    ["Banner Hotel"] = {
        Radius = 20.0,
        Coords = vector4(-287.65, -1061.28, 27.21, 69.78),
        ImageURL = "https://cdn.discordapp.com/attachments/967914093396774942/1141875155514175589/image.png",
    },
}