##
 # book_of_sins.mcfunction
 # intern/classes/main/night_walker/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["book_o_s"]},display:{Name:'{"text":"Book of Sins","color":"black","bold":true}'},CustomModelData:34}},Invulnerable:1b,Tags:["book_o_s"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
