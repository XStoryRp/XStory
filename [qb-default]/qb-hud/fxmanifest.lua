fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'qb-hud'
version '2.2.1'
this_is_a_map 'yes'
shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_script { 
    'client.lua'
}
server_script 'server.lua'

ui_page 'html/index.html'

files {
    'html/*',
    'html/index.html',
    'html/styles.css',
    'html/responsive.css',
    'html/app.js',
}
