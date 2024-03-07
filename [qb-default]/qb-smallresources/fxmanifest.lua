fx_version 'cerulean'
game 'gta5'
client_debug_mode 'true'
server_debug_mode 'true'
experimental_features_enabled '0'

description 'QB-SmallResources'
version '1.3.4'
lua54 'yes'
use_experimental_fxv2_oal 'yes'
dependency {'ox_lib', 'qb-core' }

shared_scripts {
	'@ox_lib/init.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
    'config.lua',
}
server_script  {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua',
}
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua'
}

-- data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'
-- data_file 'FIVEM_LOVES_YOU_341B23A2F0E0F131' 'popgroups.ymt'

files {
	'*.xml',
	'relationships.dat',
	--client_scripts
	'client/antiflawless.lua',
	'client/trains.lua',
	'client/vehiclepush.lua',
	'client/elevator.lua',
	'client/headbag.lua',
	'client/parkingmetterROB.lua',
	'client/itemweight.lua',
	'client/anti180snap.lua',
	'client/patachute.lua',
	'client/pikebikes.lua',
	'client/vehiclelosecontrol.lua',
	'client/charactershowers.lua',
	'client/gearanim.lua',
	'client/carjack.lua',
	'client/anticombat-roll.lua',
	'client/vape.lua',
	'client/takehostage.lua',
	'client/adminclothing.lua',
	'client/tireslash.lua',
	'client/radioanims.lua',
	'client/motocross.lua',
	'client/weaponsling.lua',
	-- 'client/visuals.lua',
	'client/recoil.lua',
	'client/voicefix.lua',
	'client/carrypad.lua',
	'client/thrown-weapons.lua',
	'client/parkingmeter.lua',
	'client/playerping.lua',
	'client/errorlog.lua',
	'client/sling.lua',
	--server_script
	-- 'server/slap.lua',
	'server/autodv.lua',
	'server/carjack.lua',
	'server/patachute.lua',
	'server/parkingmetterROB.lua',
	'server/anticombat-roll.lua',
	'server/vape.lua',
	'server/tireslash.lua',
	'server/takehostage.lua',
	'server/weaponsling.lua',
	'server/carrypad.lua',
	'server/radioanims.lua',
	'server/thrown-weapons.lua',
	'server/parkingmeter.lua',
	'server/headbag.lua',
	'server/staffcheck.lua',
	'server/playerping.lua',
	'server/errorlog.lua',
	'server/sling.lua',
	--dat_script
	-- 'visualsettings.dat',
}
file 'config.lua'