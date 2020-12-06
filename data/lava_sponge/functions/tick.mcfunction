
execute as @a store result score @s lava_sponge run clear @s spawner 0
execute as @a[scores={lava_sponge=1..}] run function lava_sponge:give
execute as @e[type=area_effect_cloud,tag=lava_sponge] at @s run function lava_sponge:lava
execute as @e[type=area_effect_cloud,tag=heated_sponge] at @s run function lava_sponge:heated

execute as @a unless score @s VP.LS matches 1 run function lava_sponge:vanillaplus
