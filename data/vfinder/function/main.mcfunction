execute as @a at @a if items entity @s weapon.mainhand #c:tools/mining_tool[enchantments={"vfinder:vein_finder":1}] unless entity @e[type=marker, distance=..1] run function vfinder:cube
execute as @a if items entity @s weapon.mainhand #c:tools/mining_tool[enchantments={"vfinder:vein_finder":1}] run tag @s add hasCoolPick
execute as @a unless items entity @s weapon.mainhand #c:tools/mining_tool[enchantments={"vfinder:vein_finder":1}] run tag @s remove hasCoolPick
execute as @e[type=marker] at @s if block ~ ~ ~ #c:ores unless entity @e[tag=highlight, distance=..1] run summon shulker ~ ~ ~ {id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],Tags:["highlight"]}
execute as @e[type=marker] at @s if block ~ ~ ~ lava run title @p[tag=hasCoolPick] actionbar {"text":"You are approaching lava.","color":"red"}
execute as @e[tag=highlight] at @s unless block ~ ~ ~ #c:ores run tag @s add silent_kill
execute as @e[tag=silent_kill] at @s run tp @s ~ 10000000 ~
execute as @e[tag=silent_kill] run kill @s