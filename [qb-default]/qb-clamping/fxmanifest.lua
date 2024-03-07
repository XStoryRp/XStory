fx_version 'cerulean'
game 'gta5'

description 'q-clamping'
version '2.0.0'

shared_script 'config.lua'

client_scripts {
    'client/*.lua'
}

server_script 'server/*.lua'

lua54 'yes'

escrow_ignore {
    'config.lua',
    'client/framework.lua',
    'server/framework.lua',
}

data_file 'DLC_ITYP_REQUEST' 'stream/boot.ytyp'
dependency '/assetpacks'