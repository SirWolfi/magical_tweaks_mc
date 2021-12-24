##
 # circuit_board.mcfunction
 # intern/spawns
 #
 # Created by .
##

    #Circuit board

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:copper_ingot",tag:{EntityTag:{Tags:["circuit_board"]},display:{Name:'{"text":"Circuit Board","color":"gold"}'},CustomModelData:1}},Tags:["circuit_board"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]