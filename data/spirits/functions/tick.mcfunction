# Cauldron init when bone meal is thrown into it if water level = 3

execute if entity @e[type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}}] as @e[type=item,nbt={Item:{id:"minecraft:bone_meal"}}] at @s unless entity @e[tag=spirits.Cauldron,distance=..1] if block ~ ~ ~ minecraft:cauldron[level=3] run function spirits:cauldron/load

# Tick all cauldron entities

execute as @e[tag=spirits.Cauldron] at @s run function spirits:cauldron/tick