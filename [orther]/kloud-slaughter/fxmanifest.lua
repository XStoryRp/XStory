fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'kloud'
description 'Advanced Slaughter Job Made for QB/Qbox/ESX by Kloud'
version '2.1.1'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/*.lua',
    'locales/*.lua'
}

client_scripts {
    'modules/cowfield/*.lua',
    'modules/slaughterhouse/*.lua',
    'framework/client/*.lua',
    'inventory/client/*.lua',
    'target/*.lua',
    'client.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'framework/server/*.lua',
    'inventory/server/*.lua',
    'server.lua',
}

escrow_ignore {
    'locales/*',
    'shared/locations.lua',
    'shared/animations.lua',
    'shared/config.lua',
    'framework/**/*.lua',
    'inventory/**/*.lua',
    'INSTALL/*'
}

files {
    'locales/*.json'
}

dependencies {
    'oxmysql',
    'ox_lib'
}

dependency '/assetpacks'