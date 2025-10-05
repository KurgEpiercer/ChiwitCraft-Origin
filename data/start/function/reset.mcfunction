# remove tag
tag @a[tag=floating] remove floating

# clear effects
effect clear @a minecraft:blindness
effect clear @a minecraft:slow_falling

# remove attribute modifiers (safe to run even if they’re not present)
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove no_move
execute as @a run attribute @s minecraft:generic.jump_strength modifier remove no_jump

# remove barrier if under player
execute as @a at @s if block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ air
