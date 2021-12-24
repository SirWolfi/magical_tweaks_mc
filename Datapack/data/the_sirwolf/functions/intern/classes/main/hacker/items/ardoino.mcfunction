##
 # ardoino.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:clay_ball",tag:{EntityTag:{Tags:["ardoino"]},display:{Name:'{"text":"Ardoino","color":"dark_gray"}'},CustomModelData:1}},Tags:["ardoino"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]

