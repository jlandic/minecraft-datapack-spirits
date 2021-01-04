tellraw @a[tag=spirits.Debug] "Ingredient added"

execute if entity @s[tag=spirits.Ingredients.2] run tag @s add spirits.Ingredients.3
execute if entity @s[tag=spirits.Ingredients.1] run tag @s add spirits.Ingredients.2
execute if entity @s[tag=spirits.Ingredients.0] run tag @s add spirits.Ingredients.0

execute if entity @s[tag=spirits.Ingredients.3] run function spirits:cauldron/events/full

# Check ingredients and match recipe

function spirits:cauldron/check_ingredients

summon area_effect_cloud ~ ~1 ~ {Particle:"splash",NoGravity:0b,Radius:0.5f,Duration:5,Motion:[0.0,2.0,0.0]}
playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1.0
