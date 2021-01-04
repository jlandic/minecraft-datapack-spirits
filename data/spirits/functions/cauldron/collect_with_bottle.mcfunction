tellraw @a[tag=spirits.Debug] "Attempt to collect from cauldron with bottle"

execute if entity @s[tag=spirits.Recipe.Cyser] run function spirits:products/cyser
execute if entity @s[tag=spirits.Recipe.Mead] run function spirits:products/mead
execute if entity @s[tag=spirits.Recipe.Ale] run function spirits:products/ale
execute if entity @s[tag=spirits.Recipe.RuinedAle] run function spirits:products/ruined_ale
