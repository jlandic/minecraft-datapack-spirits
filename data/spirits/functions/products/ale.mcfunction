tellraw @a[tag=spirits.Debug] "Identified fermented ale"

summon item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1409007,display:{Name:'{"text":"Ale","color":"gold","italic":true}'},Ale:1b,CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:1200},{Id:5b,Amplifier:1b,Duration:1200},{Id:9b,Amplifier:1b,Duration:600,ShowParticles:1b}],CustomPotionColor:11765315}}}
tag @s add spirits.Collected
