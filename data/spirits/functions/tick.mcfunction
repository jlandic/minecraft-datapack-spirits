# Cauldron init when bone meal is thrown into it if water level = 3

execute if entity @e[type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}}] as @e[type=item,nbt={Item:{id:"minecraft:bone_meal"}}] at @s unless entity @e[tag=spirits.Cauldron,distance=..1] if block ~ ~ ~ minecraft:cauldron[level=3] run function spirits:cauldron/load

# Tick all cauldron entities

execute as @e[tag=spirits.Cauldron] at @s run function spirits:cauldron/tick

# Crop init when seed is placed
execute as @e[type=armor_stand,tag=spirits.Seed] at @s run function spirits:crops/load

# Tick all crops

execute as @e[type=armor_stand,tag=spirits.Crop] at @s run function spirits:crops/tick
