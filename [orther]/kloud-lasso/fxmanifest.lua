fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'kloud'
description 'Lassoing Script Made for QB/Qbox/ESX by Kloud'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/*.lua',
}

client_scripts {
    'init.lua',
    'target/*.lua',
    'modules/*.lua'
}

server_scripts {
    'inventory/*.lua',
    'server.lua',
}

files {
    'locales/*.json'
}

escrow_ignore {
    "inventory/*",
    "shared/notify.lua",
    "shared/config.lua"
}

dependencies {
    'ox_lib'
}

dependency '/assetpacks'