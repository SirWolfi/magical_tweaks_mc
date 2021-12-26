##
 # bottle_o_blood.mcfunction
 # intern/spawns
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:potion",tag:{EntityTag:{Tags:["bottle_ob"]},CustomPotionColor:16711680,CustomPotionEffects:[{ShowIcon:true,Id:21b,ShowParticles:false,Duration:2000},{ShowParticles:false,ShowIcon:true,Id:15b,Duration:200}],CustomModelData:1,display:{Name:'{"text":"Bottle O\' Blood","color":"dark_red"}'}}},Tags:["bottle_ob"]}

particle smoke ~ ~ ~ 2 0 2 10 10
kill @e[type=item,distance=..1]
