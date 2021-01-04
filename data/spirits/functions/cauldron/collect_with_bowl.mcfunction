tellraw @a[tag=spirits.Debug] "Attempt to collect from cauldron"

execute if entity @s[tag=spirits.Recipe.Wort] run function spirits:products/wort

execute if entity @s[tag=spirits.Collected] run function spirits:cauldron/events/collected