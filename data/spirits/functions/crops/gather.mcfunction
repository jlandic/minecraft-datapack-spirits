tellraw @a[tag=spirits.Debug] "Attempt to gather plant"

setblock ~ ~-1 ~ dirt replace

execute if entity @s[tag=spirits.Ripe] if entity @s[tag=spirits.Crop.Grapevine] run function spirits:crops/grapevine/gather

