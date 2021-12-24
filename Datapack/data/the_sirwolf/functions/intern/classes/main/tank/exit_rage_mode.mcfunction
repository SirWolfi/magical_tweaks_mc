##
 # exit_rage_mode.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##

scoreboard players set @s pal_rage_mode 0

playsound block.beacon.deactivate master @a
particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 20
effect give @s slowness 5 2 true
effect give @s hunger 2 20 true

effect give @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["king_r"]}},Slot:-106b}]}] weakness 7 2 true

effect give @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["king_r"]}},Slot:-106b}]}] weakness 10 2 true
