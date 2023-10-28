# UNIQX WIWANG TOWER (Special thanks to uNiqx for the MLO)
https://www.gta5-mods.com/maps/mlo-wiwang-tower-lobby-rooftop-bar-add-on-sp-fivem

# Philly Rooftop Bar
- QB Core
-Work in progress
## Showcase
https://youtu.be/gp-ohFfFALo


## DISCORD
https://discord.gg/Q8S4VYQWwB


## DEPENDENCIES
```
-QBCORE
-Jim-Payments
-Jim-Consumables
-uniqx_wiwangtower (MLO)
```
## INFO
This script is my first actually script, the code may be messy but its just something I wanted to put out and keep working on to maybe get some feedback.

## How to install
- Drag the resource and mlo into your resources folder (MLO LOCATED IN MAPS FOLDER)
-add the following to \resources\[qb]\qb-core\shared\items.lua
```
-- Philly's Rooftop Bar
['beer_am'] 				 		= {['name'] = 'beer_am', 			  	  		['label'] = 'A.M. Japanese', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_am.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of AM Beer!'},
['beer_logger'] 				 		= {['name'] = 'beer_logger', 			  	  		['label'] = 'Logger American', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_logger.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Logger!'},
['beer_piss'] 				 		= {['name'] = 'beer_piss', 			  	  		['label'] = 'Piswasser German', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_piss.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Pisshwasser!'},
['beer_dusche'] 				 		= {['name'] = 'beer_dusche', 			  	  		['label'] = 'Dusche German', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_dusche.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Dusche Gold!'},
['beer_patriot'] 				 		= {['name'] = 'beer_patriot', 			  	  		['label'] = 'Patriot American', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer_patriot.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  ['description'] = 'A bottle of Patriot!'},
```
-add the following to \resources\[qb]\qb-core\shared\jobs.lua : 
```
['wiwang'] = {label = 'Wiwang', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Barback', payment = 50},
			['1'] = {name = 'Bartender', payment = 75},
            ['2'] = {name = 'Manager', payment = 90},
            ['3'] = {name = 'Owner', payment = 105},
        },
	},
```
    -Add the following lines to \jim-consumables\config.lua under Consumables 
```
        --Philly Rooftop Bar
		["beer_am"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_logger"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_piss"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_dusche"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
		["beer_patriot"] = { 			emote = "beer", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", stats = { thirst = math.random(10,20), canOD = true }},
```
    -Add the images from \ph_rooftopbar\html\images to \resources\[qb]\qb-inventory\html\images 
	And Done!
	Like I said this is a work in progress so it is a very simple bar job. Will be adding more drinks and other options soon!

	
