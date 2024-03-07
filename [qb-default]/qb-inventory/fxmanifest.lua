fx_version 'cerulean'
game 'gta5'

description 'QB-Inventory'
version '1.2.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/visual.lua',
    'server/trash.lua',
}
client_script { 
    'client/main.lua' ,
    'client/visual.lua' ,
    'client/trash.lua' ,
}
ui_page {
    'html/ui.html'
}

files {
    'html/ui.html',
    'html/css/main.css',
    'html/js/app.js',
    'html/images/*.png',
    'html/images/*.jpg',
    'html/ammo_images/*.png',
    'html/attachment_images/*.png',
    'html/*.ttf'
}
dependecy 'qb-weapons'

lua54 'yes'
