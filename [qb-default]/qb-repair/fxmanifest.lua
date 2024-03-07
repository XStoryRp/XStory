fx_version 'cerulean'
game 'gta5'

description 'vehiclemod'

shared_scripts {
	"config.lua"
}

client_scripts {
	'kh-carcontrol.lua',
	'mech_client.lua',
}

server_scripts {
	'mech_server.lua',
}

exports {
	'GetVehicleStatusList',
	'GetVehicleStatus',
	'SetVehicleStatus',
}
