

execute unless entity @s[tag=heated_sponge_old] run setblock ~ ~ ~ nether_wart_block
tag @s[tag=!heated_sponge_old] add heated_sponge_old

execute unless block ~ ~ ~ nether_wart_block if entity @e[type=item,nbt={Item:{id:"minecraft:nether_wart_block"}},distance=0..1] run data merge entity @e[type=item,nbt={Item:{id:"minecraft:nether_wart_block"}},distance=0..1,limit=1] {Item:{id:"minecraft:bat_spawn_egg",tag:{display:{Name:'{"text":"Heated Sponge","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Tags:["heated_sponge"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}}}}

execute unless block ~ ~ ~ nether_wart_block unless entity @e[type=item,nbt={Item:{id:"minecraft:nether_wart_block"}},distance=0..1] run kill @s


execute if block ~1 ~ ~ water run setblock ~ ~ ~ wet_sponge
execute if block ~-1 ~ ~ water run setblock ~ ~ ~ wet_sponge
execute if block ~ ~1 ~ water run setblock ~ ~ ~ wet_sponge
execute if block ~ ~-1 ~ water run setblock ~ ~ ~ wet_sponge
execute if block ~ ~ ~1 water run setblock ~ ~ ~ wet_sponge
execute if block ~ ~ ~-1 water run setblock ~ ~ ~ wet_sponge
