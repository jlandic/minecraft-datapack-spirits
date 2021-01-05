tellraw @a[tag=spirits.Debug] "Checking ingredients to match recipe"

execute if entity @s[tag=spirits.Honey,tag=spirits.Apple] run function spirits:process/cyser
execute if entity @s[tag=spirits.SweetBerries,tag=spirits.Honey] run function spirits:process/mead
execute if entity @s[tag=spirits.Wheat,tag=spirits.WheatSeeds] run function spirits:process/wort
execute if entity @s[tag=spirits.Wort,tag=spirits.Wheat] run function spirits:process/ale
execute if entity @s[tag=spirits.BurntMash,tag=spirits.Wheat] run function spirits:process/ruined_ale
execute if entity @s[tag=spirits.Grapes] run function spirits:process/wine
