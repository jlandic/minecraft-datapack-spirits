tellraw @a[tag=spirits.Debug] "Planting grapevine"

execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~1 ~ {Invisible:1b,CustomNameVisible:0b,Small:1b,Marker:1b,Tags:["spirits.Crop","spirits.Crop.Grapevine"],ArmorItems:[{},{},{},{id:"minecraft:wheat",Count:1b,tag:{CustomModelData:1409000}}]}

execute as @e[type=armor_stand,distance=..1,limit=1,tag=spirits.Crop.Grapevine] at @s run function spirits:crops/grapevine/events/planted
