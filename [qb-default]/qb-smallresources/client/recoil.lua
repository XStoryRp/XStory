-- local recoils = {
--     -- Melee
--     -- [-1834847097] = 0.3,        --['weapon_dagger']
--     -- [-1786099057] = 0.3,        --['weapon_bat']
--     -- [-102323637] = 0.3,        --['weapon_bottle']
--     -- [2067956739] = 0.3,        --['weapon_crowbar']
--     -- [-1951375401] = 0.3,        --['weapon_flashlight']
--     -- [1141786504] = 0.3,        --['weapon_golfclub']
--     -- [1317494643] = 0.3,        --['weapon_hammer']
--     -- [-102973651] = 0.3,        --['weapon_hatchet']
--     -- [-656458692] = 0.3,        --['weapon_knuckle']
--     -- [-1716189206] = 0.3,        --['weapon_knife']
--     -- [-581044007] = 0.3,        --['weapon_machete']
--     -- [-538741184] = 0.3,        --['weapon_switchblade']
--     -- [1737195953] = 0.3,        --['weapon_nightstick']
--     -- [419712736] = 0.3,        --['weapon_wrench']
--     -- [-853065399] = 0.3,        --['weapon_battleaxe']
--     -- [-1810795771] = 0.3,        --['weapon_poolcue']
--     -- [-2000187721] = 0.0,        --['weapon_briefcase']
--     -- [28811031] = 0.0,        --['weapon_briefcase_02']
--     -- [-499989876] = 0.0,        --['weapon_garbagebag']
--     -- [-800287667] = 0.0,        --['weapon_handcuffs']
--     -- [1309015656] = 0.0,        --['weapon_bread']
--     -- [940833800] = 0.3,        --['weapon_stone_hatchet']

--     -- Handguns
--     [453432689] = 0.3,            --['weapon_pistol']
--     [-1075685676] = 0.5,        --['weapon_pistol_mk2']
--     [1593441988] = 0.2,            --['weapon_combatpistol']
--     [584646201] = 0.3,            --['weapon_appistol']
--     [911657153] = 0.1,            --['weapon_stungun']
--     [-1716589765] = 0.6,        --['weapon_pistol50']
--     [-1076751822] = 0.2,        --['weapon_snspistol']
--     [-771403250] = 0.5,            --['weapon_heavypistol']
--     [137902532] = 0.4,            --['weapon_vintagepistol']
--     [1198879012] = 0.9,            --['weapon_flaregun']
--     [-598887786] = 0.9,            --['weapon_marksmanpistol']
--     [-1045183535] = 0.6,        --['weapon_revolver']
--     [-879347409] = 0.6,            --['weapon_revolver_mk2']
--     [-1746263880] = 0.3,        --['weapon_doubleaction']
--     [-2009644972] = 0.3,        --['weapon_snspistol_mk2']
--     [-1355376991] = 0.3,        --['weapon_raypistol']
--     [727643628] = 0.3,            --['weapon_ceramicpistol']
--     [-1853920116] = 0.3,        --['weapon_navyrevolver']
--     [1470379660] = 0.3,            --['weapon_gadgetpistol']

--     -- Submachine Guns
--     [324215364] = 0.5,            --['weapon_microsmg']
--     [736523883] = 0.4,            --['weapon_smg']
--     [2024373456] = 0.1,            --['weapon_smg_mk2']
--     [-270015777] = 0.1,            --['weapon_assaultsmg']
--     [171789620] = 0.2,            --['weapon_combatpdw']
--     [-619010992] = 0.3,            --['weapon_machinepistol']
--     [-1121678507] = 0.1,        --['weapon_minismg']
--     [1198256469] = 0.3,            --['weapon_raycarbine']

--     -- Shotguns
--     [487013001] = 0.4,            --['weapon_pumpshotgun']
--     [2017895192] = 0.7,            --['weapon_sawnoffshotgun']
--     [-494615257] = 0.4,            --['weapon_assaultshotgun']
--     [-1654528753] = 0.2,        --['weapon_bullpupshotgun']
--     [-1466123874] = 0.7,        --['weapon_musket']
--     [984333226] = 0.2,            --['weapon_heavyshotgun']
--     [-275439685] = 0.7,            --['weapon_dbshotgun']
--     [317205821] = 0.2,            --['weapon_autoshotgun']
--     [1432025498] = 0.4,            --['weapon_pumpshotgun_mk2']
--     [94989220] = 0.0,            --['weapon_combatshotgun']

--     -- Assault Rifles
--     [-1074790547] = 0.5,        --['weapon_assaultrifle']
--     [961495388] = 0.2,            --['weapon_assaultrifle_mk2']
--     [-2084633992] = 0.3,        --['weapon_carbinerifle']
--     [-86904375] = 0.1,            --['weapon_carbinerifle_mk2']
--     [-1357824103] = 0.1,        --['weapon_advancedrifle']
--     [-1063057011] = 0.2,        --['weapon_specialcarbine']
--     [2132975508] = 0.2,            --['weapon_bullpuprifle']
--     [1649403952] = 0.3,            --['weapon_compactrifle']
--     [-1768145561] = 0.2,        --['weapon_specialcarbine_mk2']
--     [-2066285827] = 0.2,        --['weapon_bullpuprifle_mk2']
--     [-1658906650] = 0.0,        --['weapon_militaryrifle']

--     -- Light Machine Guns
--     [-1660422300] = 0.1,        --['weapon_mg']
--     [2144741730] = 0.1,            --['weapon_combatmg']
--     [1627465347] = 0.1,            --['weapon_gusenberg']
--     [-608341376] = 0.1,            --['weapon_combatmg_mk2']

--     -- Sniper Rifles
--     [100416529] = 0.5,            --['weapon_sniperrifle']
--     [205991906] = 0.7,            --['weapon_heavysniper']
--     [-952879014] = 0.3,            --['weapon_marksmanrifle']
--     [856002082] = 1.2,            --['weapon_remotesniper']
--     [177293209] = 0.6,            --['weapon_heavysniper_mk2']
--     [1785463520] = 0.3,            --['weapon_marksmanrifle_mk2']

--     -- Heavy Weapons
--     [-1312131151] = 0.0,        --['weapon_rpg']
--     [-1568386805] = 1.0,        --['weapon_grenadelauncher']
--     [1305664598] = 1.0,            --['weapon_grenadelauncher_smoke']
--     [1119849093] = 0.1,            --['weapon_minigun']
--     [2138347493] = 0.3,            --['weapon_firework']
--     [1834241177] = 2.4,            --['weapon_railgun']
--     [1672152130] = 0.0,            --['weapon_hominglauncher']
--     [125959754] = 0.5,            --['weapon_compactlauncher']
--     [-1238556825] = 0.3,        --['weapon_rayminigun']

--     -- Throwables
--     -- [-1813897027] = 0.3,        --['weapon_grenade']
--     -- [-1600701090] = 0.3,        --['weapon_bzgas']
--     -- [615608432] = 0.3,        --['weapon_molotov']
--     -- [741814745] = 0.3,        --['weapon_stickybomb']
--     -- [-1420407917] = 0.3,        --['weapon_proxmine']
--     -- [126349499] = 0.3,        --['weapon_snowball']
--     -- [-1169823560] = 0.3,        --['weapon_pipebomb']
--     -- [600439132] = 0.3,        --['weapon_ball']
--     -- [-37975472] = 0.3,        --['weapon_smokegrenade']
--     -- [1233104067] = 0.3,        --['weapon_flare']

--     -- Miscellaneous
--     -- [883325847] = 0.3,        --['weapon_petrolcan']
--     -- [101631238] = 0.3,        --['weapon_fireextinguisher']
--     -- [-1168940174] = 0.3,        --['weapon_hazardcan']
-- }
local weapons = {
	[GetHashKey('WEAPON_PISTOL')] = {recoil = 0.3, shake = 0.06}, 	--PISTOL	
	[GetHashKey('WEAPON_PISTOL_MK2')] = {recoil = 0.3, shake = 0.03}, 	--PISTOL MK2
	[GetHashKey('WEAPON_COMBATPISTOL')] = {recoil = 0.2, shake = 0.03}, -- COMBAT PISTOL
	[GetHashKey('WEAPON_APPISTOL')] = {recoil = 0.1, shake = 0.05}, -- AP PISTOL
	[GetHashKey('WEAPON_PISTOL50')] = {recoil = 0.6, shake = 0.05}, -- PISTOL .50
	[GetHashKey('WEAPON_MICROSMG')] = {recoil = 0.2, shake = 0.035}, -- MICRO SMG
	[GetHashKey('WEAPON_SMG')] = {recoil = 0.1, shake = 0.045}, -- SMG
	[GetHashKey('WEAPON_SMG_MK2')] = {recoil = 0.1, shake = 0.055}, -- SMG MK2
	[GetHashKey('WEAPON_ASSAULTSMG')] = {recoil = 0.1, shake = 0.050}, -- ASSAULT SMG
	[GetHashKey('WEAPON_ASSAULTRIFLE')] = {recoil = 0.2, shake = 0.07}, -- ASSAULT RIFLE
	[GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = {recoil = 0.2, shake = 0.072},-- ASSAULT RIFLE MK2
	[GetHashKey('WEAPON_CARBINERIFLE')] = {recoil = 0.1, shake = 0.06}, -- CARBINE RIFLE
	[GetHashKey('WEAPON_CARBINERIFLE_MK2')] = {recoil = 0.1, shake = 0.065}, -- CARBINE RIFLE MK2
	[GetHashKey('WEAPON_ADVANCED_RIFLE')] = {recoil = 0.1, shake = 0.06}, -- ADVANCED RIFLE
	[GetHashKey('WEAPON_MG')] = {recoil = 0.1, shake = 0.07}, -- MG
	[GetHashKey('WEAPON_COMBATMG')] = {recoil = 0.1, shake = 0.08}, -- COMBAT MG
	[GetHashKey('WEAPON_COMBATMG_MK2')] = {recoil = 0.1, shake = 0.085},-- COMBAT MG MK2
	[GetHashKey('WEAPON_PUMPSHOTGUN')] = {recoil = 0.4, shake = 0.07}, -- PUMP SHOTGUN
	[GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = {recoil = 0.4, shake = 0.085},-- PUMP SHOTGUN MK2
	[GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = {recoil = 0.7, shake = 0.06}, -- SAWNOFF SHOTGUN
	[GetHashKey('WEAPON_ASSAULTSHOTGUN')] = {recoil = 0.4, shake = 0.12}, -- ASSAULT SHOTGUN
	[GetHashKey('WEAPON_BULLPUPSHOTGUN')] = {recoil = 0.2, shake = 0.08},-- BULLPUP SHOTGUN
	[GetHashKey('WEAPON_STUNGUN')] = {recoil = 0.1, shake = 0.01},-- STUN GUN
	[GetHashKey('WEAPON_SNIPERRIFLE')] = {recoil = 0.5, shake =  0.2},-- SNIPER RIFLE
	[GetHashKey('WEAPON_HEAVYSNIPER')] = {recoil = 0.7, shake = 0.3},-- HEAVY SNIPER
	[GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = {recoil = 0.7, shake = 0.35}, -- HEAVY SNIPER MK2
	[GetHashKey('WEAPON_REMOTESNIPER')] = {recoil  = 1.2, shake = 0.1},-- REMOTE SNIPER
	[GetHashKey('WEAPON_GRENADELAUNCHER')] = {recoil = 1.0, shake = 0.08},-- GRENADE LAUNCHER
	[GetHashKey('WEAPON_GRENADELAUCHER_SMOKE')] = {recoil = 1.0, shake = 0.04},-- GRENADE LAUNCHER SMOKE
	[GetHashKey('WEAPON_RPG')] = {recoil = 0.0, shake = 0.9},-- RPG
	[GetHashKey('WEAPON_STINGER')] = {recoil = 0.0, shake = 0.3},-- STINGER
	[GetHashKey('WEAPON_MINIGUN')] = {recoil = 0.01, shake = 0.25},  -- MINIGUN
	[GetHashKey('WEAPON_SNSPISTOL')] = {recoil = 0.2, shake = 0.02},-- SNS PISTOL
	[GetHashKey('WEAPON_SNSPISTOL_MK2')] = {recoil = 0.25, shake = 0.025}, -- SNS PISTOL MK2
	[GetHashKey('WEAPON_GUSENBERG')] = {recoil = 0.1, shake = 0.05}, -- GUSENBERG
	[GetHashKey('WEAPON_SPECIALCARBINE')] = {recoil = 0.2, shake = 0.06},-- SPECIAL CARBINE
	[GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = {recoil = 0.25, shake = 0.075}, -- SPECIAL CARBINE MK2
	[GetHashKey('WEAPON_HEAVYPISTOL')] = {recoil = 0.4, shake = 0.04},-- HEAVY PISTOL		--new hashkey
	[GetHashKey('WEAPON_BULLPUPRIFLE')] = {recoil = 0.2, shake = 0.05},-- BULLPUP RIFLE
	[GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = {recoil = 0.25, shake = 0.055}, -- BULLPUP RIFLE MK2
	[GetHashKey('WEAPON_VINTAGEPISTOL')] = {recoil = 0.4, shake = 0.025}, -- VINTAGE PISTOL
	[GetHashKey('WEAPON_DOUBLEACTION')] = {recoil = 0.4, shake = 0.025}, -- DOUBLE ACTION REVOLVER
	[GetHashKey('WEAPON_MUSKET')] = {recoil = 0.7, shake = 0.09}, -- MUSKET
	[GetHashKey('WEAPON_HEAVYSHOTGUN')] = {recoil = 0.2, shake = 0.13}, -- HEAVY SHOTGUN
	[GetHashKey('WEAPON_MARKSMANRIFLE')] = {recoil = 0.3, shake = 0.05}, -- MARKSMAN RIFLE
	[GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = {recoil = 0.35, shake = 0.035}, -- MARKSMAN RIFLE MK2
	[GetHashKey('WEAPON_HOMINGLAUNCHER')] = {recoil = 0, shake = 0.04}, -- HOMING LAUNCHER
	[GetHashKey('WEAPON_FLAREGUN')] = {recoil = 0.9, shake = 0.04}, -- FLARE GUN
	[GetHashKey('WEAPON_COMBATPDW')] = {recoil = 0.2, shake = 0.05}, -- COMBAT PDW
	[GetHashKey('WEAPON_MARKSMANPISTOL')] = {recoil = 0.9, shake = 0.04}, -- MARKSMAN PISTOL
  	[GetHashKey('WEAPON_RAILGUN')] = {recoil = 2.4, shake = 0.08}, -- RAILGUN
	[GetHashKey('WEAPON_MACHINEPISTOL')] = {recoil = 0.3, shake = 0.04},-- MACHINE PISTOL
	[GetHashKey('WEAPON_REVOLVER')] = {recoil = 0.6, shake = 0.05}, -- REVOLVER
	[GetHashKey('WEAPON_REVOLVER_MK2')] = {recoil = 0.65, shake = 0.055}, -- REVOLVER MK2
	[GetHashKey('WEAPON_DBSHOTGUN')] = {recoil = 0.7, shake = 0.04}, -- DOUBLE BARREL SHOTGUN
	[GetHashKey('WEAPON_COMPACTRIFLE')] = {recoil = 0.3, shake = 0.03}, -- COMPACT RIFLE
	[GetHashKey('WEAPON_AUTOSHOTGUN')] = {recoil = 0.2, shake = 0.04},-- AUTO SHOTGUN
	[GetHashKey('WEAPON_COMPACTLAUNCHER')] = {recoil = 0.5, shake = 0.05}, -- COMPACT LAUNCHER
	[GetHashKey('WEAPON_MINISMG')] = {recoil = 0.1, shake = 0.03}, -- MINI SMG
	
}

local loopend = true

-- RegisterNetEvent('weapons:client:DrawWeapon', function(currentWeapon)
--     loopend = true
--     if currentWeapon == nil then
--         loopend = false
--     end
--     while loopend do
--         if loopend then break end
--         local ped = PlayerPedId()
--         if IsPedShooting(ped) and not IsPedDoingDriveby(ped) then
--             local _, wep = GetCurrentPedWeapon(ped)
--             _, cAmmo = GetAmmoInClip(ped, wep)
--             if recoils[wep] and recoils[wep] ~= 0 then
--                 -- luacheck: ignore
--                 local tv = 0
--                 if GetFollowPedCamViewMode() ~= 4 then
--                     repeat
--                         Wait(0)
--                         local p = GetGameplayCamRelativePitch()
--                         SetGameplayCamRelativePitch(p+0.1, 0.2)
--                         tv += 0.1
--                     until tv >= recoils[wep]
--                 else
--                     repeat
--                         Wait(0)
--                         local p = GetGameplayCamRelativePitch()
--                         if recoils[wep] > 0.1 then
--                             SetGameplayCamRelativePitch(p+0.6, 1.2)
--                             tv += 0.6
--                         else
--                             SetGameplayCamRelativePitch(p+0.016, 0.333)
--                             tv += 0.1
--                         end
--                     until tv >= recoils[wep]
--                 end
--             end
--         end
--         Wait(0)
--     end
-- end)



--separated coroutines

CreateThread(function()
	while true do
		Wait(0)
		local ped = PlayerPedId()
		local weapon = GetSelectedPedWeapon(ped)
		for hash, data in pairs(weapons) do
			if weapon == hash then	
				if IsPedShooting(ped) then
					ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', data.shake)
				end
			end
		end
	end
end)

CreateThread(function()
	while true do
		Wait(0)
		if IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then
			local _,wep = GetCurrentPedWeapon(PlayerPedId())
			_,cAmmo = GetAmmoInClip(PlayerPedId(), wep)
			if weapons[wep].recoil and weapons[wep].recoil ~= 0 then
				tv = 0
				repeat 
					Wait(0)
					p = GetGameplayCamRelativePitch()
					if GetFollowPedCamViewMode() ~= 4 then
						SetGameplayCamRelativePitch(p+0.1, 0.2)
					end
					tv = tv+0.1
				until tv >= weapons[wep].recoil
			end
			
		end
	end
end)


-- Damage

CreateThread(function ()
--Melee--
SetWeaponDamageModifier(`weapon_dagger`, 0.85)
SetWeaponDamageModifier(`weapon_bat`, 0.85)
SetWeaponDamageModifier(`weapon_bottle`, 0.85)
SetWeaponDamageModifier(`weapon_crowbar`, 0.75)
SetWeaponDamageModifier(`weapon_unarmed`,0.45)
SetWeaponDamageModifier(`weapon_flashlight`, 0.75)
SetWeaponDamageModifier(`weapon_golfclub`, 0.85)
SetWeaponDamageModifier(`weapon_hammer`, 0.75)
SetWeaponDamageModifier(`weapon_hatchet`, 0.8)
SetWeaponDamageModifier(`weapon_knuckle`, 0.7)
SetWeaponDamageModifier(`weapon_knife`, 0.8)
SetWeaponDamageModifier(`weapon_machete`, 0.8)
SetWeaponDamageModifier(`weapon_switchblade`, 0.8)
SetWeaponDamageModifier(`weapon_nightstick`, 0.75)
SetWeaponDamageModifier(`weapon_wrench`, 0.75)
SetWeaponDamageModifier(`weapon_battleaxe`, 0.8)
SetWeaponDamageModifier(`weapon_poolcue`, 0.85)
SetWeaponDamageModifier(`weapon_stone_hatchet`, 0.95)


--Handguns--
SetWeaponDamageModifier(`weapon_pistol`, 0.91)
SetWeaponDamageModifier(`weapon_pistol_mk2`, 1.03)
SetWeaponDamageModifier(`weapon_combatpistol`, 0.92)
SetWeaponDamageModifier(`weapon_appistol`, 0.91)
SetWeaponDamageModifier(`weapon_stungun`, 0)
SetWeaponDamageModifier(`weapon_pistol50`, 1.16)
SetWeaponDamageModifier(`weapon_snspistol`, 0.95)
SetWeaponDamageModifier(`weapon_snspistol_mk2`, 0.97)
SetWeaponDamageModifier(`weapon_heavypistol`, 1.05)
SetWeaponDamageModifier(`weapon_vintagepistol`, 1)
SetWeaponDamageModifier(`weapon_flaregun`, 0.85)
SetWeaponDamageModifier(`weapon_marksmanpistol`, 1.45)
SetWeaponDamageModifier(`weapon_revolver`, 1.35)
SetWeaponDamageModifier(`weapon_revolver_mk2`, 1.4)
SetWeaponDamageModifier(`weapon_doubleaction`, 1.25)
SetWeaponDamageModifier(`weapon_raypistol`, 0.95)
SetWeaponDamageModifier(`weapon_ceramicpistol`, 0.97)
SetWeaponDamageModifier(`weapon_navyrevolver`, 1.35)


--Submachine Guns--
SetWeaponDamageModifier(`weapon_microsmg`, 0.86)
SetWeaponDamageModifier(`weapon_smg`, 0.87)
SetWeaponDamageModifier(`weapon_smg_mk2`, 0.91)
SetWeaponDamageModifier(`weapon_assaultsmg`, 0.88)
SetWeaponDamageModifier(`weapon_combatpdw`, 0.9)
SetWeaponDamageModifier(`weapon_machinepistol`, 0.93)
SetWeaponDamageModifier(`weapon_minismg`, 0.87)
SetWeaponDamageModifier(`weapon_raycarbine`, 1.2)


--Shotguns--
SetWeaponDamageModifier(`weapon_pumpshotgun`, 1.32)
SetWeaponDamageModifier(`weapon_pumpshotgun_mk2`, 1.35)
SetWeaponDamageModifier(`weapon_sawnoffshotgun`, 1.61)
SetWeaponDamageModifier(`weapon_assaultshotgun`, 1.42)
SetWeaponDamageModifier(`weapon_bullpupshotgun`, 1.32)
SetWeaponDamageModifier(`weapon_musket`, 1.62)
SetWeaponDamageModifier(`weapon_heavyshotgun`, 1.5)
SetWeaponDamageModifier(`weapon_dbshotgun`, 1.63)
SetWeaponDamageModifier(`weapon_autoshotgun`, 1.35)
SetWeaponDamageModifier(`weapon_combatshotgun`,1.42)


--Assault Rifles--
SetWeaponDamageModifier(`weapon_assaultrifle`, 0.95)
SetWeaponDamageModifier(`weapon_assaultrifle_mk2`, 0.98)
SetWeaponDamageModifier(`weapon_carbinerifle`, 0.97)
SetWeaponDamageModifier(`weapon_carbinerifle_mk2`, 1.01)
SetWeaponDamageModifier(`weapon_advancedrifle`, 0.99)
SetWeaponDamageModifier(`weapon_specialcarbine`, 0.99)
SetWeaponDamageModifier(`weapon_specialcarbine_mk2`, 1.01)
SetWeaponDamageModifier(`weapon_bullpuprifle`, 0.97)
SetWeaponDamageModifier(`weapon_bullpuprifle_mk2`, 0.99)
SetWeaponDamageModifier(`weapon_compactrifle`, 1.01)
SetWeaponDamageModifier(`weapon_militaryrifle`, 1.03)
SetWeaponDamageModifier(`weapon_heavyrifle`, 1.05)


--Assault Rifles--
SetWeaponDamageModifier(`weapon_mg`, 1.15)
SetWeaponDamageModifier(`weapon_combatmg`, 1.2)
SetWeaponDamageModifier(`weapon_combatmg_mk2`, 1.22)
SetWeaponDamageModifier(`weapon_gusenberg`, 0.99)


--Sniper Rifles--
SetWeaponDamageModifier(`weapon_sniperrifle`, 1.61)
SetWeaponDamageModifier(`weapon_heavysniper`, 1.63)
SetWeaponDamageModifier(`weapon_heavysniper_mk2`, 1.65)
SetWeaponDamageModifier(`weapon_marksmanrifle`, 1.35)
SetWeaponDamageModifier(`weapon_marksmanrifle_mk2`, 1.4)


--Heavy Weapons--
SetWeaponDamageModifier(`weapon_rpg`, 1.65)
SetWeaponDamageModifier(`weapon_grenadelauncher`, 1.6)
SetWeaponDamageModifier(`weapon_grenadelauncher_smoke`,0.01)
SetWeaponDamageModifier(`weapon_minigun`, 0.95)
SetWeaponDamageModifier(`weapon_firework`, 1.1)
SetWeaponDamageModifier(`weapon_railgun`, 1.55)
SetWeaponDamageModifier(`weapon_hominglauncher`, 1.6)
SetWeaponDamageModifier(`weapon_compactlauncher`, 1.6)
SetWeaponDamageModifier(`weapon_rayminigun`, 0.95)
SetWeaponDamageModifier(`weapon_emplauncher`,1.6)


--Throwables--
SetWeaponDamageModifier(`weapon_grenade`, 1.6)
SetWeaponDamageModifier(`weapon_bzgas`, 0.65)
SetWeaponDamageModifier(`weapon_molotov`, 1.15)
SetWeaponDamageModifier(`weapon_stickybomb`, 1.6)
SetWeaponDamageModifier(`weapon_proxmine`, 1.55)
SetWeaponDamageModifier(`weapon_snowball`, 0.2)
SetWeaponDamageModifier(`weapon_pipebomb`, 1.5)
SetWeaponDamageModifier(`weapon_ball`, 0.4)
SetWeaponDamageModifier(`weapon_smokegrenade`, 0.1)
SetWeaponDamageModifier(`weapon_flare`, 0.1)
end)