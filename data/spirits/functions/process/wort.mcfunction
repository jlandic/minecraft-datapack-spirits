tellraw @a[tag=spirits.Debug] "Identified Wort ingredients"

tag @s add spirits.Recipe.Wort
scoreboard players set @s spirits.MashTime 12000
function spirits:cauldron/events/mashing_started
