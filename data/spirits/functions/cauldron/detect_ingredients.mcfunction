execute if entity @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}},distance=..1] unless entity @s[tag=spirits.SweetBerries] run function spirits:ingredients/sweet_berries
execute if entity @e[type=item,nbt={Item:{id:"minecraft:honey_bottle"}},distance=..1] unless entity @s[tag=spirits.Honey] run function spirits:ingredients/honey
execute if entity @e[type=item,nbt={Item:{id:"minecraft:apple"}},distance=..1] unless entity @s[tag=spirits.Apple] run function spirits:ingredients/apple
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wheat"}},distance=..1] unless entity @s[tag=spirits.Wheat] run function spirits:ingredients/wheat
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..1] unless entity @s[tag=spirits.WheatSeeds] run function spirits:ingredients/wheat_seeds
execute if entity @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew",tag:{Wort:1b}}},distance=..1] unless entity @s[tag=spirits.Wort] run function spirits:ingredients/wort
