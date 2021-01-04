tellraw @a[tag=spirits.Debug] "Identified Mead ingredients"

tag @s add spirits.Recipe.Mead
scoreboard players set @s spirits.FermTime 24000
function spirits:cauldron/events/fermentation_started