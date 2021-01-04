tellraw @a[tag=spirits.Debug] "Identified Ruined Ale ingredients"

tag @s add spirits.Recipe.RuinedAle
scoreboard players set @s spirits.FermTime 12000
function spirits:cauldron/events/fermentation_started
