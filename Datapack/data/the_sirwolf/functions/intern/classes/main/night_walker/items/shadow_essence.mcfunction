##
 # shadow_essence.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{id:"minecraft:black_dye",Count:2b,tag:{EntityTag:{Tags:["dark_ess"]},display:{Name:'{"text":"Dark Essence","color":"black"}'},CustomModelData:1}},Tags:["dark_ess"]}

particle falling_dust coal_block ~ ~ ~ 1 1 1 0.05 6

kill @e[type=item,distance=..1]