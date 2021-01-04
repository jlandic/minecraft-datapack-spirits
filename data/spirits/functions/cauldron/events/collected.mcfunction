tellraw @a[tag=spirits.Debug] "Successfully collected drink from the cauldron"

kill @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1,limit=1]
function spirits:cauldron/unload
