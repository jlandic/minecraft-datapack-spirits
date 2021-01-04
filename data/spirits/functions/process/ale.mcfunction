tellraw @a[tag=spirits.Debug] "Identified Ale ingredients"

tag @s add spirits.Recipe.Ale
scoreboard players set @s spirits.FermTime 12000
function spirits:cauldron/events/fermentation_started