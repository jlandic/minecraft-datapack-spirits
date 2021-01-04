tellraw @a[tag=spirits.Debug] "Attempt to collect from cauldron"

execute if entity @s[tag=spirits.Recipe.Mead] run function spirits:products/mead

execute if entity @s[tag=spirits.Collected] run function spirits:cauldron/events/collected