kill @e[type=item,nbt={Item:{id:"minecraft:cookie",tag:{Grapes:1b}}},limit=1,distance=..1]
tag @s add spirits.Grapes
function spirits:cauldron/events/ingredient_added
