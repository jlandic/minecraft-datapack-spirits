execute if block ~ ~-1 ~ minecraft:farmland run function spirits:crops/gather

execute if entity @e[tag=spirits.Crop.Grapevine] as @e[tag=spirits.Crop.Grapevine] at @s run function spirits:crops/grapevine/tick
execute if block ~ ~-1 ~ minecraft:air run function spirits:crops/unload
