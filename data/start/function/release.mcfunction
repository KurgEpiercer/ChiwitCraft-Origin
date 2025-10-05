# play a ding to participants
playsound minecraft:block.note_block.pling master @a[tag=floating] ~ ~ ~ 1 1

# clear blindness and give slow falling for 60s
effect clear @a[tag=floating] minecraft:blindness
effect give @a[tag=floating] minecraft:slow_falling 60 0 true

# remove barrier under players (only if barrier exists)
execute as @a[tag=floating] at @s if block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ air

# remove the attribute modifiers
execute as @a[tag=floating] run attribute @s minecraft:generic.movement_speed modifier remove no_move
execute as @a[tag=floating] run attribute @s minecraft:generic.jump_strength modifier remove no_jump

# clean up tag
tag @a[tag=floating] remove floating

# Start sound once
playsound minecraft:item.elytra.flying master @s ~ ~ ~ 2 0
