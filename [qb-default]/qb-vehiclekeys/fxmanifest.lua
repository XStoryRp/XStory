fx_version 'cerulean'
game 'gta5'

description 'vehiclekeys'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change this to your preferred language
    'config.lua',
}
client_script 'client/main.lua'
server_script 'server/main.lua'

lua54 'yes'
