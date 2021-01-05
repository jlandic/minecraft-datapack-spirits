tellraw @a[tag=spirits.Debug] "Crop is now ripe"

tag @s remove spirits.Growing
tag @s add spirits.Ripe

scoreboard players reset @s spirits.GrowTime
