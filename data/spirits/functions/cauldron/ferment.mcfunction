scoreboard players remove @s spirits.FermTime 1
execute if score @s spirits.FermTime matches ..0 run function spirits:cauldron/events/fermentation_ended

particle bubble ~ ~1 ~ 0.1 0.1 0.1 0.2 3 normal