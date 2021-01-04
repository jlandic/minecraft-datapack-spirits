tellraw @a[tag=spirits.Debug] "Identified Cyser ingredients"

tag @s add spirits.Recipe.Cyser
scoreboard players set @s spirits.FermTime 24000
function spirits:cauldron/events/fermentation_started