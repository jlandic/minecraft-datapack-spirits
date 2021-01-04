tellraw @a[tag=spirits.Debug] "Identified burnt mash"

summon item ~ ~ ~ {CustomName:'{"text":"Burnt mash"}',Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{display:{Name:'{"text":"Burnt mash"}',Lore:['{"text":"No way this wort is going to make ale."}']},HideFlags:1,BurntMash:1b,Effects:[{EffectId:4b,EffectDuration:600},{EffectId:9b,EffectDuration:600},{EffectId:19b,EffectDuration:600}]}}}
tag @s add spirits.Collected
