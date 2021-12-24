##
 # shield_of_savety.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["sh_os"]},display:{Name:'{"text":"Shield of savety","color":"grey"}'},CustomModelData:30}},Tags:["sh_os"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]