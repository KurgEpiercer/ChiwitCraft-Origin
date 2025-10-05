# spread players around center (0,0) within ~2500 radius (so ~5000x5000 area)
spreadplayers 0 0 0 2500 false @a

# lift them high (Y = 220)
execute as @a at @s run tp @s ~ 220 ~

# tag them so only participants are affected
tag @a add floating

# give blindness (long duration, hide particles)
effect give @a[tag=floating] minecraft:blindness infinite 1 true

# place an invisible barrier under each player only if there's air
execute as @a[tag=floating] at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ barrier

# apply movement/jump lock via modifiers
execute as @a[tag=floating] run attribute @s minecraft:generic.movement_speed modifier add no_move -10 add_value
execute as @a[tag=floating] run attribute @s minecraft:generic.jump_strength modifier add no_jump -10 add_value
