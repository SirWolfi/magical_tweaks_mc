##
 # paladins_armor_lv1.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_1" ]},display:{Name:'{"text":"Paladins Armor Level 1","color":"yellow"}'},CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;-580223902,1196572728,-1263733831,1418095933],Slot:"chest"}]}},Tags:["pal_arm_1"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]