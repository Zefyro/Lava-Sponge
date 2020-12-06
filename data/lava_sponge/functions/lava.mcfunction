

execute unless entity @s[tag=lava_sponge_old] run setblock ~ ~ ~ warped_wart_block
tag @s[tag=!lava_sponge_old] add lava_sponge_old

execute store success score @s lava_sponge run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace lava
execute if score @s lava_sponge matches 1 run function lava_sponge:convert


execute unless block ~ ~ ~ warped_wart_block if entity @e[type=item,nbt={Item:{id:"minecraft:warped_wart_block"}},distance=0..1] run data merge entity @e[type=item,nbt={Item:{id:"minecraft:warped_wart_block"}},distance=0..1,limit=1] {Item:{id:"minecraft:piglin_brute_spawn_egg",tag:{display:{Name:'{"text":"Lava Sponge","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Tags:["lava_sponge"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}}}}
execute unless block ~ ~ ~ warped_wart_block unless entity @e[type=item,nbt={Item:{id:"minecraft:warped_wart_block"}},distance=0..1] run kill @s


