execute as @e[type=marker] unless items entity @a weapon.mainhand #c:tools/mining_tool[enchantments={"vfinder:vein_finder":1}] run kill @s
execute as @e[tag=highlight] unless items entity @a weapon.mainhand #c:tools/mining_tool[enchantments={"vfinder:vein_finder":1}] run tag @s add silent_kill
