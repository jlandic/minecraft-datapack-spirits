execute if entity @s[tag=spirits.Growing] run scoreboard players remove @s spirits.GrowTime 1
execute if entity @s[tag=spirits.Growing] run function spirits:crops/grapevine/grow

# Check for ground covered in snow

execute if block ~ ~ ~ snow run function spirits:crops/grapevine/events/covered_in_snow
