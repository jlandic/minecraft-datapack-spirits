tellraw @a[tag=spirits.Debug] "Successfully collected drink from the cauldron"

kill @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..1,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:bowl"}},distance=..1,limit=1]
setblock ~ ~ ~ minecraft:cauldron[level=0]

function spirits:cauldron/unload
