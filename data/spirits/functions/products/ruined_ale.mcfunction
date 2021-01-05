tellraw @a[tag=spirits.Debug] "Identified ruined ale"

summon item ~ ~ ~ {CustomName:'{"text":"Burnt mash"}',Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:1409007,display:{Name:'{"text":"Ale","color":"gold","italic":true}',Lore:['{"text":"It smells a bit funny"}']},HideFlags:3,RuinedAle:1b,CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:1200},{Id:4b,Amplifier:1b,Duration:60},{Id:9b,Amplifier:1b,Duration:60}],CustomPotionColor:11765315}}}
tag @s add spirits.Collected
