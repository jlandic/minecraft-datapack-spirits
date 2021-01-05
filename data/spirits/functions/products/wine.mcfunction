tellraw @a[tag=spirits.Debug] "Identified fermented wine"

summon item ~ ~1 ~ {Tags:["spirits.Wine"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1409008,display:{Name:'{"text":"Wine","color":"red","italic":true}'},Wine:1b,CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:600},{Id:5b,Amplifier:1b,Duration:600},{Id:9b,Amplifier:1b,Duration:600,ShowParticles:1b}],CustomPotionColor:2098698}}}
tag @s add spirits.Collected
