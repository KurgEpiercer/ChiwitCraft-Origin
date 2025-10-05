execute as @p at @s run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}
execute as @e[tag=husk_spawner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}
execute as @e[tag=husk_spawner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}
execute as @e[tag=husk_spawner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}
execute as @e[tag=husk_spawner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}
execute as @e[tag=husk_spawner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}
execute as @e[tag=husk_spawner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["husk_spawner"], Duration:50}

execute as @p at @s run spreadplayers ~ ~ 0 3 false @e[tag=husk_spawner]

execute at @e[tag=husk_spawner] run particle minecraft:smoke ~ ~1 ~ 0.43 0.43 0.43 0.04 50 force

execute as @e[tag=husk_spawner] at @s run summon husk ~ ~ ~ {Tags:["temp_husk"], CanPickUpLoot:0b, DeathLootTable:"minecraft:empty", DeathLootTableSeed:0}
kill @e[tag=husk_spawner]
team add husk.trickster
team modify husk.trickster seeFriendlyInvisibles false