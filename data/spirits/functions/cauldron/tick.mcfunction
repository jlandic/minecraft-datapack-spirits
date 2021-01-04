# Unload if the cauldron is gone, or the water has been removed

execute as @s at @s unless block ~ ~ ~ minecraft:cauldron[level=3] run function spirits:cauldron/unload

# Detect ingredient added

execute if entity @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..1] unless entity @s[tag=spirits.SweetBerries] unless entity @s[tag=spirits.Full] run function spirits:ingredients/sweet_berries
execute if entity @e[type=item,nbt={Item:{id:"minecraft:honey_bottle"}},distance=..1] unless entity @s[tag=spirits.Honey] unless entity @s[tag=spirits.Full] run function spirits:ingredients/honey

# Execute time-sensitive processes

execute if entity @s[tag=spirits.Fermenting] run function spirits:cauldron/ferment

# Check for empty bottle

execute if entity @s[tag=spirits.Ready] if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1,limit=1] run function spirits:cauldron/collect
