##
 # staff_of_clearence.mcfunction
 # intern/classes/main/medic/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["staff_oc"]},display:{Name:'{"text":"Staff of clearence","color":"white"}'},CustomModelData:27}},Tags:["staff_oc"]}
particle smoke ~ ~ ~ 2 0 2 10 10

playsound minecraft:ui.toast.challenge_complete master @a

kill @e[type=item,distance=..1]
