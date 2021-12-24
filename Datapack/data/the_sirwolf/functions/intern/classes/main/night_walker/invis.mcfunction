##
 # invis.mcfunction
 # intern/classes/main/night_walker
 #
 # Created by .
##

effect give @s invisibility 1 1 true
particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 20
effect give @s speed 1 2 true
effect give @s jump_boost 1 1 true

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["book_o_s"]}}}]}] run effect give @s strength 1 0 true

