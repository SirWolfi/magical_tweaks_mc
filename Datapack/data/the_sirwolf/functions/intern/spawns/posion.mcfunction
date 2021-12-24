##
 # posion.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:2b,id:"minecraft:lime_dye",tag:{EntityTag:{Tags:["poison"]},display:{Name:'{"text":"Poison","color":"green"}'},CustomModelData:1}},Invulnerable:1b,Tags:["poison"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]