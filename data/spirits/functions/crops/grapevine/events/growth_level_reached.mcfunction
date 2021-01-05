tellraw @a[tag=spirits.Debug] "New growth level reached"

scoreboard players set @s spirits.GrowTime 24000

execute if entity @s[tag=spirits.Growing.2] run function spirits:crops/events/ripe
execute if entity @s[tag=spirits.Growing.2] run tag @s remove spirits.Growing
execute if entity @s[tag=spirits.Growing.2] run tag @s remove spirits.Growing.2
execute if entity @s[tag=spirits.Growing.1] run tag @s add spirits.Growing.2
execute if entity @s[tag=spirits.Growing.1] run tag @s remove spirits.Growing.1
execute if entity @s[tag=spirits.Growing.0] run tag @s add spirits.Growing.1
execute if entity @s[tag=spirits.Growing.0] run tag @s remove spirits.Growing.0

function spirits:crops/grapevine/update_model
