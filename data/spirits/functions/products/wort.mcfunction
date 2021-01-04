tellraw @a[tag=spirits.Debug] "Identified wort"

summon item ~ ~1 ~ {CustomName:'{"text":"Wort"}',Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{display:{Name:'{"text":"Wort"}',Lore:['{"text":"Wort can be used to craft ales"}']},Wort:1b,Effects:[{EffectId:18b,EffectDuration:60},{EffectId:23b,EffectDuration:1200}]}}}
tag @s add spirits.Collected
