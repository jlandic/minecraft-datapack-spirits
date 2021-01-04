tellraw @a[tag=spirits.Debug] "Loading new cauldron entity"

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["gen.Null","spirits.Cauldron","spirits.Ingredients.0"],CustomName:'{"text":"Cauldron"}'}
kill @e[type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},distance=..1,limit=1]

summon area_effect_cloud ~ ~1 ~ {Particle:"splash",NoGravity:0b,Radius:0.9f,Duration:10,Motion:[0.0,2.0,0.0]}
playsound block.bubble_column.bubble_pop master @a ~ ~ ~ 1.0
