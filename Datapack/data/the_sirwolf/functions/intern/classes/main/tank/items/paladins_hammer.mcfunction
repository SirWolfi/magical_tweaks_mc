##
 # paladins_hammer.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##


summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:iron_axe",tag:{EntityTag:{Tags:["pal_ham"]},display:{Name:'{"text":"Paladins Hammer","color":"yellow"}'},CustomModelData:1,Unbreakable:1b}},Tags:["pal_ham"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
