# Features

* Usage of ropes
* Highly Configurable
* Multiple Slaughterhouse Location
* Highly Optimized (0.00ms Idle & Active)
* Usage of Targeting Script for more immersive experience
* Sound FX
* Smooth Animations
* Synced between users

# Preview

[![Preview](https://img.youtube.com/vi/HAL5wDDFH74/0.jpg)](https://www.youtube.com/watch?v=HAL5wDDFH74)

# Dependencies

**Required**

* [ox_lib](https://github.com/overextended/ox_lib)

**Framework**

- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qbx-core](https://github.com/Qbox-project/qbx-core)
- [es_extended](https://github.com/esx-framework/esx_core)

**Target**

- [qb-target](https://github.com/qbcore-framework/qb-target) 
- [ox_target](https://github.com/overextended/ox_target)

**Inventory**

- [qb-inventory](https://github.com/qbcore-framework/qb-inventory)
- [lj-inventory](https://github.com/loljoshie/lj-inventory)
- [ps-inventoy](https://github.com/Project-Sloth/ps-inventory)
- [ox_inventory](https://overextended.dev/ox_inventory) 

**Optional**

- [interact-sound](https://github.com/plunkettscott/interact-sound)
- Fuel Script
  - [ox_fuel](https://github.com/overextended/ox_fuel)
  - [cdn-fuel](https://github.com/CodineDev/cdn-fuel)
  - [LegacyFuel](https://github.com/InZidiuZ/LegacyFuel)
  - (or any fuel script that has SetFuel export)

# Installation

Join my [Discord Server](https://discord.gg/DbqC2SWzJk) for updates

## Configuration

### Language

Add this to your server.cfg
```cfg
setr ox:locale en
```

### Disabling job requirements

1. In kloud-slaughter/shared/locations.lua find the location you want to disable the job then set this:

```lua
RestrictJob = true, -- Require job?
```

To this:
```lua
RestrictJob = false, -- Require job?
```

### Adding locations

1. Follow this template and add it to kloud-slaughter/shared/locations.lua:
```lua
["jobnamehere"] = { -- Job name
        Restocking = false, -- DONT CHANGE
        Releasing = false, -- DONT CHANGE
        CowField = vec3(x, y, z CHANGETHIS), -- Cows will spawn here
        RestrictJob = true, -- Require job?
        MaxCows = 10, -- Maximum cows to be spawned on the field
        MaxStock = 15, -- Maximum cows the storage can hold
        Stash = {
            Rank = 0, -- Minimum job level to access.
            Label = "slaughterstashlabel", -- Stash label
            Slots = 50, -- Stash slot count
            Weight = 50000 -- Stash weight
        },
        Deposit = { 
            Truck = {
                Enabled = true, -- Require deposit fee for vehicle rental?
                Fee = 500, -- How much then?
            },
            Storage = {
                Enabled = true, -- Require deposit fee for taking out cow?
                Fee = 100 -- How much then?
            }
        },
        Reward = {
            Truck = { 
                Enabled = true, -- Enable reward for cows stored?
                Reward = 25 -- How much per cow then?
            },
            Storage = {
                Enabled = true, -- Enable reward for storing boxed meat?
                Reward = 65 -- How much per meat inside the box then?
            },
        },
        Duty = { -- Change duty locations
            vec3(x, y, z CHANGETHIS),
            vec3(x, y, z CHANGETHIS)
        },
        Blip = {
            Enabled = true,
            Coords = vec3(x, y, z CHANGETHIS),
            Name = "blip name here",
            Sprite = 815,
            Scale = 0.9,
            Colour = 1
        },
        Vehicle = {
            VehicleSpawn = { -- Vehicle spawn points
                vec4(x, y, z, w CHANGETHIS),
                vec4(x, y, z, w CHANGETHIS)
            },
            DropOff = { -- Restock zone
                vec4(x, y, z, w CHANGETHIS)
            },
            Model = "benson", -- Vehicle model
        },
        Trolly = { -- Trolleys
            vec4(x, y, z, w CHANGETHIS),
            vec4(x, y, z, w CHANGETHIS)
        },
        Machine = {
            ["IDHERE"] = { vec4(x, y, z, w CHANGETHIS), taken = false } -- ID SHOULD MATCH WITH TROLLYSPOTS
        },
        TrollySpots = {
            ["IDHERE"] = {  -- ID SHOULD MATCH WITH Machine
                { vec4(x, y, z, w CHANGETHIS), taken = false },
                { vec4(x, y, z, w CHANGETHIS), taken = false }
            }
        },
        Slaughter = {
            Truck = vec4(x, y, z, w CHANGETHIS), -- Vehicle rent ped
            Stock = vec4(x, y, z, w CHANGETHIS), -- Cow request ped
            Stash = vec4(x, y, z, w CHANGETHIS), -- Stash ped

            Spawn = vec4(x, y, z, w CHANGETHIS), -- Cow initial spawn point
            EscortSpawn = vec4(x, y, z, w CHANGETHIS), -- Cow escort initial spawn point
            EndPath = vec4(x, y, z, w CHANGETHIS), -- Cow will go here
            EscortEndPath = vec4(x, y, z, w CHANGETHIS), -- Escort wil go here

            KillCow = vec4(x, y, z, w CHANGETHIS), -- Teleport cow to machine (there's an invisible wall)
            KilledCow = vec4(x, y, z, w CHANGETHIS), -- Teleport killed cow
        },
        Ped = {
            Truck = { -- Vehicle rental ped
                Model = "pedhashmodelhere",
            },
            Stock = { -- Cow request ped
                Model = "pedhashmodelhere",
            },
            Stash = { -- Stash ped
                Model = "pedhashmodelhere",
            },
            Escort = { -- Cow escort ped
                Model = "pedhashmodelhere"
            }
        },
        Outfit = { -- Job Outfit
            Male = {
                ['pants'] = { item = 36, texture = 0 },
                ['arms'] = { item = 63, texture = 0 },
                ['t-shirt'] = { item = 15, texture = 0 },
                ['vest'] = { item = 0, texture = 0 },
                ['torso2'] = { item = 56, texture = 0 },
                ['decals'] = { item = 0, texture = 0 },
                ['accessory'] = { item = 0, texture = 0 },
                ['shoes'] = { item = 56, texture = 0 },
                ['hat'] ={ item = 0, texture = 0 },
            },
            Female = {
                ['arms'] = { item = 72, texture = 0 },
                ['t-shirt'] = { item = 15, texture = 0 },
                ['torso2'] = { item = 49, texture = 0 },
                ['vest'] = { item = 0, texture = 0 },
                ['decals'] = { item = 0, texture = 0 },
                ['accessory'] = { item = 0, texture = 0 },
                ['pants'] = { item = 35, texture = 0 },
                ['shoes'] = { item = 59, texture = 0 },
                ['hat'] ={ item = 0, texture = 0 },
            }
        }
    }
```


## server.cfg

```cfg
ensure FRAMEWORK # es_extended / qb-core
ensure ox_lib
ensure TARGET # ox_target / qb-target
ensure INVENTORY # ox_inventory / qb-inventory / lj-inventory
ensure kloud-slaughter
```

## For qb-core

### qb-core\shared\items.lua

```lua
    ['meat']                              = {['name'] = 'meat',                                ['label'] = 'Raw Meat',             ['weight'] = 350,           ['type'] = 'item',         ['image'] = 'meat.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Fresh MEAAAT?'},
    ['boxed_meat']                        = {['name'] = 'boxed_meat',                          ['label'] = 'Boxed Meat',           ['weight'] = 2500,          ['type'] = 'item',         ['image'] = 'boxed_meat.png',              ['unique'] = true,          ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Boxed MEAAAT?'},
    ['deer_carcass']                        = {['name'] = 'deer_carcass',                          ['label'] = 'Deer Carcass',           ['weight'] = 2500,          ['type'] = 'item',         ['image'] = 'deer_carcass.png',              ['unique'] = true,          ['useable'] = false,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'DEEEER?'},
```

With Decay:

```lua
    ['meat']                              = {['name'] = 'meat',                                ['label'] = 'Raw Meat',             ['weight'] = 350,           ['type'] = 'item',         ['image'] = 'meat.png',              ['unique'] = false,         ['useable'] = false,     ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Fresh MEAAAT?', ["decay"] = 14.0, ["delete"] = true},
    ['boxed_meat']                        = {['name'] = 'boxed_meat',                          ['label'] = 'Boxed Meat',           ['weight'] = 2500,          ['type'] = 'item',         ['image'] = 'boxed_meat.png',              ['unique'] = true,          ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Boxed MEAAAT?', ["decay"] = 14.0, ["delete"] = true},
    ['deer_carcass']                        = {['name'] = 'deer_carcass',                          ['label'] = 'Deer Carcass',           ['weight'] = 2500,          ['type'] = 'item',         ['image'] = 'deer_carcass.png',              ['unique'] = true,          ['useable'] = false,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'DEEEER?', ["decay"] = 14.0, ["delete"] = true},
```

## For qb-inventory 

### qb-inventory\server\main.lua

Add this anywhere:

```lua
RegisterNetEvent('qb-inventory:server:SaveStashItems', function(stashId, items)
    MySQL.Async.insert('INSERT INTO stashitems (stash, items) VALUES (:stash, :items) ON DUPLICATE KEY UPDATE items = :items', {
        ['stash'] = stashId,
        ['items'] = json.encode(items)
    })
end)
```

## For lj-inventory, ps-inventory & qb-inventory

On /html/js/app.js find: 

```js
function FormatItemInfo(itemData) 
```

And add this:
```js
        else if (itemData.name == "boxed_meat") {
            $(".item-info-title").html("<p>" + itemData.label + "</p>");
            $(".item-info-description").html(
                "<p><strong>Meat: </strong><span>" + itemData.info.meat + "</span></p>"
            );
        }
```

## For qs-inventory

The item will be sent into the player's inventory instead of the location stash

## For ox_inventory

### ox_inventory\data\items.lua

```lua
	['meat'] = {
		label = 'Raw Meat',
		weight = 350,
		degrade = 7160,
		decay = true,
		stack = true,
		close = true,
		description = 'Fresh MEAAAAT?',
	},
	
	['boxed_meat'] = {
		label = 'Boxed Meat',
		weight = 2500,
		degrade = 7160,
		decay = true,
		stack = false,
		close = true,
		description = 'Boxed MEAAAAT?',
		client = {
			usetime = 5000
		}
	},
	
	['deer_carcass'] = {
		label = 'Deer Carcass',
		weight = 2500,
		degrade = 7160,
		decay = true,
		stack = false,
		close = true,
		description = 'DEEEER!?'
	},
```

### ox_inventory\modules\items\server.lua
Before: 

```lua
return Items
```

Add This:

```lua
Item('boxed_meat', function(event, item, inventory, slot, data)
	if event == 'usingItem' then
		if Inventory.GetItem(inventory, item, inventory.items[slot].metadata, true) > 0 then
			meta = inventory.items[slot].metadata
		end
	end

	if event == 'usedItem' then
		if meta.meat > 0 then
			Inventory.AddItem(inventory, 'meat', meta.meat)
		end
	end
end)
```

# Support & Suggestions

Contact me at my discord @ybarra. or join my Discord Server! <br>![Discord Server](https://discordapp.com/api/guilds/1131198002976014377/widget.png?style=shield)