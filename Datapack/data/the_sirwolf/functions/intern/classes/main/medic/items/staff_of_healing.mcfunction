##
 # staff_of_healing.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by The_SirWolf
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["staff_oh"]},display:{Name:'{"text":"Staff of Healing","color":"red"}'},CustomModelData:10}},Tags:["staff_oh"]}
particle smoke ~ ~ ~ 2 0 2 10 10

playsound minecraft:ui.toast.challenge_complete master @a

kill @e[type=item,distance=..1]