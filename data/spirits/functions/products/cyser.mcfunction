tellraw @a[tag=spirits.Debug] "Identified fermented cyser"

summon item ~ ~1 ~ {Tags:["spirits.Cyser"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1409006,display:{Name:'{"text":"Cyser","color":"red","italic":true}'},Cyser:1b,CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:600},{Id:5b,Amplifier:1b,Duration:600},{Id:9b,Amplifier:1b,Duration:600,ShowParticles:1b}],CustomPotionColor:14407720}}}
tag @s add spirits.Collected
