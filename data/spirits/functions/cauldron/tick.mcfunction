# Unload if the cauldron is gone, or the water has been removed

execute as @s at @s unless block ~ ~ ~ minecraft:cauldron[level=3] run function spirits:cauldron/unload

# Detect ingredient added

execute unless entity @s[tag=spirits.Full] run function spirits:cauldron/detect_ingredients

# Execute time-sensitive processes

execute if entity @s[tag=spirits.Fermenting] run function spirits:cauldron/ferment
execute if entity @s[tag=spirits.Mashing] run function spirits:cauldron/mash
execute if entity @s[tag=spirits.Burning] run function spirits:cauldron/burn

# Check for empty bottle or bowl to collect the product

execute if entity @s[tag=spirits.Burnt] if entity @e[type=item,nbt={Item:{id:"minecraft:bowl"}},distance=..1,limit=1] run function spirits:products/burnt_mash

execute if entity @s[tag=spirits.Ready,tag=!spirits.Burnt] if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1,limit=1] run function spirits:cauldron/collect_with_bottle
execute if entity @s[tag=spirits.Ready,tag=!spirits.Burnt] if entity @e[type=item,nbt={Item:{id:"minecraft:bowl"}},distance=..1,limit=1] run function spirits:cauldron/collect_with_bowl

# If the product was collected, trigger the `collected` event

execute if entity @s[tag=spirits.Collected] run function spirits:cauldron/events/collected
