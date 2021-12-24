##
 # shuricen.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["shurc"]},display:{Name:'{"text":"Shuricen","color":"gray"}'},CustomModelData:29}},Invulnerable:1b,Tags:["shurc"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]