fx_version 'cerulean'
game 'gta5'

description 'QB-TowJob'
version '1.1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua',
    'locales/*.lua',
    'server/*.lua',
    '@oxmysql/lib/MySQL.lua'
}
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua'
}

server_script 'server/main.lua'

lua54 'yes'