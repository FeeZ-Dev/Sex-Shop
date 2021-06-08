# esx_sexshop
If you need support join my discord: https://discord.gg/6VdPXEM

## Description
This script will allow you to purchase and use sexual items within your server, this is intended for mature people only.

## Requirments
- pNotify
- InteractSound
- esx shops with bars or you can implement it with your own shop system (i will not provide support for this)
- Database
- https://www.gta5-mods.com/maps/gtaiv-sexshop-interior-sp-and-fivem

## Installation

1) place esx_sexshop inside your esx folder.
2) run the sql provided.
3) add this to esx_shops, this may not work with your esx_shops.

	SexShop = {
        Items = {dildo, dildo2},
        Pos = {
            {x = -175.1,   y = 229.89, z = 87.05}
        }
    },
	
4) add the InteractSound files ito InteractSound/client/html/sounds then place this inside the InteractSound __resource.lua

	'client/html/sounds/stupid.ogg',
	'client/html/sounds/stupid2.ogg',
	'client/html/sounds/stupid1.ogg',
	
5) put "start esx_sexshop" inside your server.cfg