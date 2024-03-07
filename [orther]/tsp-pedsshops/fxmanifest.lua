fx_version 'cerulean'
games { 'gta5' }
version '0.0.1'
author "Runyᶜᵒˣ#0001"
lua54 "yes"
ui_page "client/nui/index.html"
shared_scripts {
     '@qb-core/shared/locale.lua',
     'locales/en.lua',
     'config.lua',
     'shared/shared.lua',
     'shared/util.lua',
     'shared/badwords.lua' }

client_scripts {
     'client/animator.lua',
     'client/functions.lua',
     'client/client.lua',
     'client/menu.lua',
     'client/c_util.lua',
     'client/cl_*.lua',
     'client/cl_*.js'
}

server_scripts {
     '@oxmysql/lib/MySQL.lua',
     'server/functions.lua',
     'server/server.lua',
     'server/sv_*.lua'
}

files {
     "client/nui/index.html",
     "client/nui/app.js",
     "client/nui/main.css"
}

data_file 'DLC_ITYP_REQUEST' 'stream/ps_camera.ytyp'