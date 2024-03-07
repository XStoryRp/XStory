fx_version 'cerulean'
game 'gta5'

description 'QB-Drugs'
version '1.2.0'

shared_scripts{
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_scripts{
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua'

}

server_scripts{
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

lua54 'yes'
