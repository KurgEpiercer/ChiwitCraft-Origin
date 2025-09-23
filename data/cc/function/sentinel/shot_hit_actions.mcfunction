# Particles and effects
particle minecraft:explosion ~ ~ ~ 1 1 1 0 5 force
particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.4 100 force
particle minecraft:flash ~ ~ ~ 0 0 0 0 5 force
particle minecraft:electric_spark ~ ~ ~ 0.5 0.5 0.5 1 100 force
playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..40]
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:budding_amethyst replace minecraft:amethyst_block

# Damage nearby target (again, in case previous one missed)
damage @e[distance=..4,tag=!sentinel,type=!minecraft:armor_stand,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:tnt_minecart,type=!minecraft:fireball,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:dragon_fireball,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:egg,nbt=!{Tags:["shot"]},type=!area_effect_cloud,limit=1,sort=nearest] 5 minecraft:sonic_boom

# Kill self (this will only affect the caller shot)
kill @s
