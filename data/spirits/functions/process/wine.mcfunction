tellraw @a[tag=spirits.Debug] "Identified Wine ingredients"

tag @s add spirits.Recipe.Wine
scoreboard players set @s spirits.FermTime 48000
function spirits:cauldron/events/fermentation_started
