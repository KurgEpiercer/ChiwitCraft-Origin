# Particle trail (executed for each shot)
execute positioned ^ ^ ^ as @e[tag=shot] at @s run particle dust_color_transition{from_color:[0.732,0.329,1.0],to_color:[1.0,1.0,1.0],scale:1} ^ ^1 ^ 0.8 0.8 0.8 0 250 force
execute positioned ^ ^ ^ as @e[tag=shot] at @s run particle electric_spark ^ ^1 ^ 1.5 1.5 1.5 1 250 force

# Damage nearby valid entities (per shot)
execute as @e[tag=shot] at @s run damage @e[distance=..2,tag=!sentinel,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:tnt_minecart,type=!minecraft:fireball,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:dragon_fireball,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:egg,nbt=!{Tags:["shot"]},type=!area_effect_cloud,limit=1,sort=nearest] 5 minecraft:sonic_boom

# If a nearby valid entity exists, trigger hit
execute as @e[tag=shot] at @s if entity @e[distance=..2,tag=!sentinel,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:tnt_minecart,type=!minecraft:fireball,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:dragon_fireball,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:egg,nbt=!{Tags:["shot"]},type=!area_effect_cloud] run function cc:sentinel/shot_hit_actions

# Move the marker forward
execute as @e[tag=shot] at @s anchored eyes run tp @s ^ ^0 ^3

# Kill it if it hits a block (checks the block just in front)
execute as @e[tag=shot] at @s unless block ~ ~ ~ air positioned ~ ~1 ~ run function cc:sentinel/shot_hit_actions
