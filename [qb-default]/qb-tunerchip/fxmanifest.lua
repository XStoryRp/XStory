fx_version 'cerulean'
game 'gta5'

description 'QB-TunerChip'
version '1.0.0'

ui_page 'html/index.html'

client_scripts {
    'client/wheel.lua',
    'client/main.lua',
    'client/nos.lua',
}

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua',
}

server_script {
    'server/main.lua',
    'server/wheel.lua',
}

files {
    'html/*',
}

lua54 'yes'