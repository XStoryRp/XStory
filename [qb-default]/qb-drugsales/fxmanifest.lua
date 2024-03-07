fx_version 'cerulean'
game 'gta5'

author 'Cadburry#7547'
description 'Drug Sales with PolyZone and Target'
version '2.0.9'

shared_scripts {
    'shared.lua',
}

server_scripts {    
    'sv_drugsell.lua',
    'sv_durgped.lua',
}

client_scripts {
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',   
    'cl_drugsell.lua',
    'cl_drugped.lua',
}

dependencies {
    'qb-core',
    'PolyZone',
    'qb-target',
    'qb-menu'
}

lua54 'yes'