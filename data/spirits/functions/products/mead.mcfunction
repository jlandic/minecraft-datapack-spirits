tellraw @a[tag=spirits.Debug] "Identified fermented mead"

summon item ~ ~1 ~ {Tags:["spirits.Mead"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1409006,display:{Name:'{"text":"Sweet berry mead","color":"dark_red","italic":true}'},Mead:1b,CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:600},{Id:5b,Amplifier:1b,Duration:600},{Id:9b,Amplifier:1b,Duration:600,ShowParticles:1b}],CustomPotionColor:16756795}}}
tag @s add spirits.Collected
