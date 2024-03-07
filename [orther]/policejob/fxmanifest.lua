fx_version 'cerulean'
game 'gta5'

description 'QB-PoliceJob'
version '1.3.3'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua',
    'client/camera.lua',
    'client/interactions.lua',
    'client/job.lua',
    'client/heli.lua',
    "client/pursitmode.lua",
    'client/evidence.lua',
    'client/objects.lua',
    'client/tracker.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/vue.min.js',
    'html/script.js',
    'html/tablet-frame.png',
    'html/fingerprint.png',
    'html/main.css',
    'html/vcr-ocd.ttf',
    'stream/ril1.ydr',
    'stream/builderdef.ytyp'
}

exports {
    'GetVehicleMode',
}

lua54 'yes'

this_is_a_map "yes"

data_file 'DLC_ITYP_REQUEST' 'stream/ril1.ydr'
data_file 'DLC_ITYP_REQUEST' 'stream/builderdef.ytyp'