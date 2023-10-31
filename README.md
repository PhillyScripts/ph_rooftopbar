# UNIQX WIWANG TOWER (Special thanks to uNiqx for the MLO)
https://www.gta5-mods.com/maps/mlo-wiwang-tower-lobby-rooftop-bar-add-on-sp-fivem

# Philly Rooftop Bar
- QB Core
-Work in progress
## Showcase
https://youtu.be/xv_mN8Zy1Mc?si=7VlsqJzUM78fdBoC


## DISCORD
https://discord.gg/Q8S4VYQWwB


## DEPENDENCIES
```
-QBCORE
-qb-target
-rpemotes
-Jim-Payments
-Jim-Consumables
-Jim-DJBooth (optional in Config)
-xsound (needed for DJ Booth)
-uniqx_wiwangtower (MLO)
```

## Updates
- Made the Beer Fridge only accessible to personnel ON DUTY
- Add the option for jim-djbooth (will spawn a jukebox so guests can play music)
## INFO
This script is my first actual script, the code may be messy but its just something I wanted to put out and keep working on to maybe get some feedback.

## How to install
- Drag the resource and mlo into your resources folder (MLO LOCATED IN MAPS FOLDER)
-add the following to \resources\[qb]\qb-core\shared\items.lua
```
-- Philly's Rooftop Bar
['beer_am'] 		= {['name'] = 'beer_am', 	['label'] = 'A.M. Japanese', 		['weight'] = 500, 	['type'] = 'item', 	['image'] = 'beer_am.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A bottle of AM Beer!'},
['beer_logger'] 	= {['name'] = 'beer_logger', 	['label'] = 'Logger American', 		['weight'] = 500, 	['type'] = 'item', 	['image'] = 'beer_logger.png',	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A bottle of Logger!'},
['beer_piss'] 		= {['name'] = 'beer_piss', 	['label'] = 'Piswasser German', 	['weight'] = 500, 	['type'] = 'item',	['image'] = 'beer_piss.png',	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A bottle of Pisshwasser!'},
['beer_dusche'] 	= {['name'] = 'beer_dusche', 	['label'] = 'Dusche German', 		['weight'] = 500,	['type'] = 'item', 	['image'] = 'beer_dusche.png',	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A bottle of Dusche Gold!'},
['beer_patriot'] 	= {['name'] = 'beer_patriot', 	['label'] = 'Patriot American', 	['weight'] = 500, 	['type'] = 'item', 	['image'] = 'beer_patriot.png', ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A bottle of Patriot!'},
['vodkaglass']		= {['name'] = 'vodkaglass',     ['label'] = 'Vodka',           		['weight'] = 100,       ['type'] = 'item',      ['image'] = 'vodkaglass.png',   ['unique'] = true,	['useable'] = true,     ['shouldClose'] = true,     ['combinable'] = nil, 	['description'] = 'A Glass of Vodka'},
['whiskeyglass'] 	= {['name'] = 'whiskeyglass', 	['label'] = 'Whiskey', 			['weight'] = 1500, 	['type'] = 'item', 	['image'] = 'whiskeyglass.png', ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A Glass of Whiskey'},
['tequilaglass'] 	= {['name'] = 'tequilaglass', 	['label'] = 'Tequila', 			['weight'] = 1500, 	['type'] = 'item', 	['image'] = 'tequilaglass.png', ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,  	['description'] = 'A Glass of Tequila'},
['glasscup']            = {['name'] = 'glasscup',       ['label'] = 'Glass Cup',           	['weight'] = 100,       ['type'] = 'item',      ['image'] = 'glasscup.png',     ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,  	['description'] = 'A glass cup'},
```
-add the following to \resources\[qb]\qb-core\shared\jobs.lua : 
```
['wiwang'] = {label = 'Wiwang', defaultDuty = true, offDutyPay = false,
	grades = {
        	['0'] = {name = 'Barback', payment = 50},
		['1'] = {name = 'Bartender', payment = 75},
		['2'] = {name = 'Manager', isboss = true, payment = 90},
		['3'] = {name = 'Owner', isboss = true, payment = 105},
        },
	},
```
-Add the images from \ph_rooftopbar\html\images to \resources\[qb]\qb-inventory\html\images 
 - Add the following to your server.cfg
    ```
start rpemotes
start jim-consumables
start jim-payments
start jim-djbooth
start uniqx_wiwangtower
start ph_rooftopbar
```
**USE THIS EXACT ORDER FOR YOUR SERVER.CFG**

And Done!
Like I said this is a work in progress so it is a very simple bar job. Will be adding more drinks and other options soon!

	
