local Allowrefuel = false
local AllowElectricRefuel = false

function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 4.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = true

-- The default distance to draw the Sprite
Config.DrawDistance = 8.5

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = {255, 255, 255, 255}

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = {121,255,192,152}

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = false

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 24

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {
	["prisonslushy"] = {
        name = "prisonslushy",
        coords = vector3(1777.66, 2560.07, 45.67),
        length = 0.6,
        width = 0.6,
        heading = 0,
        debugPoly = false,
		minZ = 45.67,
		maxZ = 46.67,
        options = {
			{
                type = "client",
                event = "qb-prison:client:slushy",
                icon = "fas fa-wine-bottle",
                label = "Make Slushy",
            },
        },
        distance = 1.4
    },
	["prisontime"] = {
        name = "prisontime",
        coords = vector3(1827.3, 2587.72, 46.01),
        length = 0.45,
        width = 0.55,
        heading = 0,
        debugPoly = false,
		minZ = 46.11,
		maxZ = 47.01,
        options = {
			{
                type = "client",
                event = "qb-prison:client:checkTime",
                icon = "fas fa-user-clock",
                label = "Check Jail Time",
            },
        },
        distance = 1.4
    },
	["prisoncanteen"] = {
        name = "prisoncanteen",
        coords = vector3(1783.12, 2559.56, 45.67),
        length = 0.4,
        width = 0.55,
        heading = 0,
        debugPoly = false,
		minZ = 45.62,
		maxZ = 46.07,
        options = {
			{
                type = "client",
                event = "qb-prison:client:useCanteen",
                icon = "fas fa-utensils",
                label = "Open Canteen",
            },
        },
        distance = 1.4
    },
	["mechaniccraft"] = {
        name = "Mechanic Toolbox",
        coords = vector3(121.15, -3104.19, 6.01),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ=3.44,
        maxZ=7.44,
        options = {
            {
                type = "client",
                event = "craft:mechanicparts", 
                icon = "fas fa-wrench",
                label = "Craft",
                job = "mechanic",
            },
        },
        distance = 1.3
    },
	["Seating"] = {
		type = "client",
		event = "qb-fivemems:client:StretcherSeatMenu",
		icon = "fas fa-ambulance",
		label = "Stretcher Seating",
		distance = 1.3
	},
	["Stretcher_Menu"] = {
		type = "client",
		event = "qb-fivemems:client:StretcherMenu",
		icon = "fas fa-ambulance",
		label = "Stretcher Menu",
		job = "ambulance",
		distance = 1.3
	},
	["EMS"] = {
		type = "client",
		event = "qb-fivemems:client:AmbulanceMenu",
		icon = "fas fa-ambulance",
		label = "EMS Menu",
		job = "ambulance",
		distance = 1.3
	},
}

Config.BoxZones = {
	["court-gavel"] = {
        name = "court-gavel",
        coords = vector3(-576.19, -209.92, 38.77),
        length = 1.55,
        width = 0.3,
        heading = 210,
        debugPoly = false,
        minZ = 38.52,
        maxZ = 38.72,
        options = {
            {
                type = "client",
                event = "police:client:judgeGavel",
                icon = "fa-solid fa-gavel",
                label = "Use gavel",
				job = 'police',
            },
        },
        distance = 1.0
    },
	
}

Config.PolyZones = {
	["mechanic"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
            {
                type = "client",
                event = "craft:vehmenu",
                icon = "fad fa-key",
                label = "Vehicle menu",
                job = "mechanic",
            },
        },
        distance = 1.1
    },
}

Config.TargetBones = {
	["trunk"] = {
		bones = {
			"boot"
		},
	options = {
		{
			type = "client",
			event = "cdn-fuel:client:SendMenuToServer",
			icon = "fas fa-gas-pump",
			label = "Insert nozzle",
			canInteract = Allowrefuel
		},
		{
			type = "client",
			action = TriggerEvent('cdn-fuel:client:electric:RefuelMenu'),
			icon = "fas fa-bolt",
			label = "Charge Vehicle",
			canInteract = AllowElectricRefuel
		},
	},
   		distance = 1.3
	},
	["seat"] = {
			bones = {
				"seat_dside_f",
				"seat_pside_f",
				"seat_dside_r",
				"seat_pside_r",
				"door_dside_f",
				"door_dside_r",
				"door_pside_f",
				"door_pside_r",
			
			},
			options = {
				{
					type = "client",
					event = 'police:client:PutPlayerInVehicle',
					icon = "fas fa-user-plus",
					label = "Seat in vehicle",
				},
				{
					type = "client",
					event = "police:client:SetPlayerOutVehicle",
					icon = "fas fa-user-minus",
					label = "Take out vehicle",
				},
				{
					type = "client",
					event = "police:client:ImpoundVehicle",
					icon = "fas fa-car",
					label = "Impound vehicle",
					job = {["police"] = 0, ["sasp"] = 0, ["saspr"] = 0, ["bcso"] = 0},
				},
				{
					type = "client",
					event = "qb-trunk:client:GetIn",
					icon = "fas fa-user-secret",
					label = "Get in trunk",
				},
				{
					type = 'client',
					event = 'qb-radialmenu:flipVehicle',
					icon = 'fa-solid fa-repeat',
					label = 'Flip vehicle',
				},
			},
			distance = 1.3
	},
}

Config.TargetModels = {

}

Config.GlobalPedOptions = {
	options = {
        {
            type = "client",
            event = "roadphone:client:GiveContactDetails",
            icon = "fas fa-address-book",
            label = "Give contact details",
        },
        {
            event = "police:client:RobPlayer",
            icon = "fas fa-user-secret",
            label = "Search person",
        },
        -- {
        --     type = "client",
        --     event = "police:client:CuffPlayer",
        --     icon = "fas fa-hands",
        --     label = "Handcuff person",
        --     job = "police",
        --     item = 'handcuffs',
        -- },
        {
          type = "client",
          event = "police:client:EscortPlayer",
          icon = "fas fa-key",
          label = "Escort person",
        },{
            type = "client",
            event = "police:client:SeizeDriverLicense",
            icon = "fas fa-chevron-circle-right",
            job = 'police',
            label = "Revoke Drivers License",
        },
        {
            type = "client",
            event = "police:client:JailPlayer",
            icon = "fas fa-chevron-circle-right",
            job = 'police',
            label = "Send person to jail",
        },
        -- {
        --     type = "client",
        --     event = "police:client:SearchPlayer",
        --     icon = "fas fa-chevron-circle-right",
        --     job = 'police',
        --     label = "Search Person",
        -- },
        {
            type = "client",
            event = "hospital:client:RevivePlayer",
            icon = "fas fa-chevron-circle-right",
            job = 'ambulance',
			item = 'firstaid',
            label = "First aid person",
        },
        {
            type = "client",
            event = "hospital:client:CheckStatus",
            icon = "fas fa-chevron-circle-right",
            -- job = 'ambulance',
            label = "Check health",
        },
        {
            type = "client",
            event = "hospital:client:TreatWounds",
            icon = "fas fa-chevron-circle-right",
            -- job = 'ambulance',
			item = "bandage",
            label = "Treats injuries",
        },
		distance = 1.4,
	},
}

Config.GlobalVehicleOptions = {
	{
		type = 'client',
		event = "fxo-towrequest:client:OpenTowOptions",
		icon = "fas fa-lock",
		label = "Request Tow",
		distance = 0.7
	},
	-- {
	-- 	type = 'client',
	-- 	event = "police:client:PutPlayerInVehicle",
	-- 	icon = "fa-light fa-person-seat-reclined",
	-- 	label = "Seat in Vehicle",
	-- 	jobtype = 'leo' or 'ems',
	-- },
	-- {
	-- 	type = 'client',
	-- 	event = "police:client:SetPlayerOutVehicle",
	-- 	icon = "fa-sharp fa-regular fa-person-seat",
	-- 	label = "Unseat form vehicle",
	-- 	jobtype = 'leo' or 'ems',
	-- },
}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {
	-- {
	-- 	type = "client",
	-- 	event = "qb-phone:client:GiveContactDetails",
	-- 	icon = 'fas fa-phone',
	-- 	label = 'Give Contact Details',
	-- 	item = 'phone',
	-- },{
	-- 	type = "client",
	-- 	event = "police:client:RobPlayer",
	-- 	icon = 'fas fa-mask',
	-- 	item = "weapon_pistol",
	-- 	label = 'Rob',
	-- },{
	-- 	  type = "client",
	-- 	  event = "police:client:KidnapPlayer",
	-- 	  icon = 'fas fa-user-group',
	-- 	  label = 'Kidnap',
	-- },{
	-- 	  type = "client",
	-- 	  event = 'police:client:EscortPlayer',
	-- 	  icon = 'fas fa-user-group',
	-- 	  item = "handscuff",
	-- 	  label = 'Escort',
	-- },{
	-- 	  label = "Send to jail",
	-- 	  icon = 'fa-solid fa-handcuffs',
	-- 	  type = 'client',
	-- 	  event = 'police:client:JailPlayer',
	-- 	  jobtype = "leo",
	-- },{
	-- 	label = 'Revoke Drivers License',
	-- 	icon = 'id-card',
	-- 	type = 'client',
	-- 	event = 'police:client:SeizeDriverLicense',
	-- 	jobtype = "leo",
	-- },
	-- distance = 0.6
}

Config.Peds = {

}


-- Config.CircleZones = {

-- }

-- Config.BoxZones = {

-- }

-- Config.PolyZones = {

-- }

-- Config.TargetBones = {

-- }

-- Config.TargetModels = {

-- }

-- Config.GlobalPedOptions = {

-- }

-- Config.GlobalVehicleOptions = {

-- }

-- Config.GlobalObjectOptions = {

-- }

-- Config.GlobalPlayerOptions = {

-- }

-- Config.Peds = {

-- }

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function JobTypeCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		local timeout = 0
		while state ~= 'started' and timeout <= 100 do
			timeout += 1
			state = GetResourceState('qb-core')
			Wait(0)
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCheck = QBCore.Functions.HasItem

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		JobTypeCheck = function(jobType)
			if type(jobType) == 'table' then
				jobType = jobType[PlayerData.job.type]
				if jobType then
					return true
				end
			elseif jobType == 'all' or jobType == PlayerData.job.type then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.excludejob and JobCheck(data.excludejob) then return false end
	if data.jobType and not JobTypeCheck(data.jobType) then return false end
	if data.excludejobType and JobTypeCheck(data.excludejobType) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.excludegang and GangCheck(data.excludegang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end
