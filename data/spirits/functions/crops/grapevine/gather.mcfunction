summon item ~ ~ ~ {CustomName:'{"text":"Grapes","italic":false}',Item:{id:"minecraft:cookie",Count:1b,tag:{display:{Name:'{"text":"Grapes","italic":false}',Lore:['{"text":"Rumor has it one can make wine with these things..."}']},CustomModelData:1409005,Grapes:1b}}}

tag @s remove spirits.Ripe
tag @s add spirits.Growing
tag @s add spirits.Growing.0

function spirits:crops/grapevine/events/planted
