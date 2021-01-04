tellraw @a[tag=spirits.Debug] "Attempt to collect from cauldron with bowl"

execute if entity @s[tag=spirits.Recipe.Wort] run function spirits:products/wort
