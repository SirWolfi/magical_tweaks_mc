##
 # wand_of_the_ultimate_void.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["wand_of_the_ul_void"]},display:{Name:'{"text":"Wand of the Ultimate Void","color":"dark_purple","bold":true}'},CustomModelData:14}},Tags:["wand_of_the_ul_void"]}
particle smoke ~ ~ ~ 2 0 2 10 10

playsound minecraft:ui.toast.challenge_complete master @a

kill @e[type=item,distance=..1]
