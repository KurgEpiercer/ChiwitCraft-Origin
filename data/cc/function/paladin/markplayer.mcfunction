# cc:markplayer  - toggle paladin_marked on the entity this function runs as
# ONE-TIME: create the scoreboard objective with:
# /scoreboard objectives add cc_toggle_temp dummy

# Stop if target has death tag
execute if entity @s[tag=death] run return 0

# store current state (0 = unmarked, 1 = marked)
scoreboard players set @s cc_toggle_temp 0
execute if entity @s[tag=paladin_marked] run scoreboard players set @s cc_toggle_temp 1

# act based on stored value (this avoids the "remove then immediately add" race)
execute if score @s cc_toggle_temp matches 1 run tag @s remove paladin_marked
execute if score @s cc_toggle_temp matches 0 run tag @s add paladin_marked

# feedback sounds/particles
execute if entity @s[tag=paladin_marked] run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 1 1
execute unless entity @s[tag=paladin_marked] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 1 1

# cleanup temp score
scoreboard players reset @s cc_toggle_temp

# particles
execute if entity @s[tag=paladin_marked] run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0 0.3 0 60 force
execute unless entity @s[tag=paladin_marked] run particle minecraft:trial_spawner_detection ~ ~ ~ 0.3 0 0.3 0 60 force

execute if entity @s[tag=paladin_marked] run particle dust_color_transition{from_color:[0.44,0.86,1.0],to_color:[1.0,0.98,0.26],scale:1} ~ ~0.07 ~ 0.3 0 0.3 0 40 force
execute unless entity @s[tag=paladin_marked] run particle dust_color_transition{from_color:[1.0,0.57,0.09],to_color:[1.0,0.97,0.26],scale:1} ~ ~0.07 ~ 0.3 0 0.3 0 40 force