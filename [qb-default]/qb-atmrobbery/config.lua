Config = {}
Config.Debug = true

QBCore = exports['qb-core']:GetCoreObject() 


Config.Settings = {
	Framework = 'QB', -- QB ONLY
	Inventory = 'QB', -- QB/OX
	Target = "QB", -- OX/QB
	WebHook = "https://discord.com/api/webhooks/1143255619223167097/8GmaJDg6JdzPo_ZGXpLE_oGYt5OBahvwM34Vyci_QFjyCCbKbBe7fjfxhjiQVapOXCnE", -- Discord webhook 
	ATMs = { -- Props that can be robbed - https://forge.plebmasters.de/
		'prop_atm_01', 'prop_atm_02', 'prop_fleeca_atm', 'prop_atm_03'
	},
	Reward = 300, -- Cash Reward per bill.
	Cooldown = 25, -- Cooldwon in minutes.
	BombItemName = 'atm_bomb' -- Item Requierd for the robbery.
}

