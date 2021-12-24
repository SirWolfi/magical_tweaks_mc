##
 # line_of_code.mcfunction
 # intern/classes/main/hacker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:string",tag:{EntityTag:{Tags:["line_o_c"]},display:{Name:'{"text":"Line Of Code","color":"dark_gray"}'},CustomModelData:1}},Tags:["line_o_c"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]