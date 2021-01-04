execute if block ~ ~-1 ~ minecraft:campfire[lit=true] run scoreboard players remove @s spirits.BurnTime 1
execute if score @s spirits.BurnTime matches ..0 run function spirits:cauldron/events/burning_ended

execute if block ~ ~-1 ~ minecraft:campfire[lit=true] run particle bubble ~ ~1 ~ 0.1 0.1 0.1 0.2 3 normal
