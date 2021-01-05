tellraw @a[tag=spirits.Debug] "Attempt to plant seed"

execute if entity @s[tag=spirits.Seed.Grapevine] if block ~ ~ ~ minecraft:farmland run function spirits:crops/grapevine/load

execute if block ~ ~ ~ minecraft:farmland run setblock ~ ~ ~ minecraft:dirt replace

kill @s
