execute if block ~ ~-1 ~ minecraft:campfire[lit=true] run scoreboard players remove @s spirits.MashTime 1
execute if score @s spirits.MashTime matches ..0 run function spirits:cauldron/events/mashing_ended

execute if block ~ ~-1 ~ minecraft:campfire[lit=true] run particle bubble_pop ~ ~1 ~ 0.0 0.0 0.0 0.1 1 normal
