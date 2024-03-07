fx_version 'cerulean'
game 'gta5'

description 'QB-AmbulanceJob'
version '1.2.3'

shared_scripts {
	'@qb-core/shared/locale.lua',
	'locales/en.lua',
	'locales/*.lua',
	'config.lua'
}

client_scripts {
	'client/main.lua',
	'client/wounding.lua',
	'client/emsstretcher.lua',
	'client/laststand.lua',
	'client/job.lua',
	'client/dead.lua',
	'client/knockout.lua',
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
	'server/emsstretcher.lua',
}

lua54 'yes'


this_is_a_map 'yes'