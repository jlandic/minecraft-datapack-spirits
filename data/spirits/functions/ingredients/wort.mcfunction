kill @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew",tag:{Wort:1b}}},limit=1,distance=..1]
tag @s add spirits.Wort
function spirits:cauldron/events/ingredient_added
