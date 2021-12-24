##
 # book_of_greed.mcfunction
 # intern/classes/main/mage/items
 #
 # Created by .
##

summon item ~ ~2 ~ {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["book_o_g"]},display:{Name:'{"text":"Book of Greed","color":"yellow","bold":true}'},CustomModelData:35}},Invulnerable:1b,Tags:["book_o_g"]}
particle smoke ~ ~ ~ 2 0 2 10 10

kill @e[type=item,distance=..1]
