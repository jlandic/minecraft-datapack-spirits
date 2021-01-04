# Unload if the cauldron is gone, or the water has been removed

execute as @s at @s unless block ~ ~ ~ minecraft:cauldron[level=3] run function spirits:cauldron/unload

# Detect ingredient added

execute if entity @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..1] unless entity @s[tag=spirits.SweetBerries] unless entity @s[tag=spirits.Full] run function spirits:ingredients/sweet_berries
execute if entity @e[type=item,nbt={Item:{id:"minecraft:honey_bottle"}},distance=..1] unless entity @s[tag=spirits.Honey] unless entity @s[tag=spirits.Full] run function spirits:ingredients/honey
execute if entity @e[type=item,nbt={Item:{id:"minecraft:apple"}},distance=..1] unless entity @s[tag=spirits.Apple] unless entity @s[tag=spirits.Full] run function spirits:ingredients/apple
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..1] unless entity @s[tag=spirits.Wheat] unless entity @s[tag=spirits.Full] run function spirits:ingredients/wheat
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..1] unless entity @s[tag=spirits.WheatSeeds] unless entity @s[tag=spirits.Full] run function spirits:ingredients/wheat_seeds
execute if entity @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew",tag:{Wort:1b}}},distance=..1] unless entity @s[tag=spirits.Wort] unless entity @s[tag=spirits.Full] run function spirits:ingredients/wort

# Execute time-sensitive processes

execute if entity @s[tag=spirits.Fermenting] run function spirits:cauldron/ferment

# Check for empty bottle

execute if entity @s[tag=spirits.Ready] if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1,limit=1] run function spirits:cauldron/collect_with_bottle
execute if entity @s[tag=spirits.Ready] if entity @e[type=item,nbt={Item:{id:"minecraft:bowl"}},distance=..1,limit=1] run function spirits:cauldron/collect_with_bowl
