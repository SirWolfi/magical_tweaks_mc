##
 # apply_paladins_armor_effects.mcfunction
 # intern/classes/main/tank
 #
 # Created by .
##

execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_1"]}}}]}] at @s run effect give @s resistance 1 0 true
#execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_1"]}},Slot:102b}]}] at @s run effect give @s health_boost 2 2 true

execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_2"]}},Slot:102b}]}] at @s run effect give @s resistance 1 1 true
#execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_2"]}},Slot:102b}]}] at @s run effect give @s health_boost 2 4 true

execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_3"]}},Slot:102b}]}] at @s run effect give @s resistance 1 2 true
#execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_3"]}},Slot:102b}]}] at @s run effect give @s health_boost 2 6 true

execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_4"]}},Slot:102b}]}] at @s run effect give @s fire_resistance 3 2 true
execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_4"]}},Slot:102b}]}] at @s run effect give @s resistance 1 2 true
#execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_4"]}},Slot:102b}]}] at @s run effect give @s health_boost 1 8 true

execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_5"]}},Slot:102b}]}] at @s run particle happy_villager ~ ~ ~ 0.3 1 0.3 0.01 1
#execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_5"]}},Slot:102b}]}] at @s run effect give @s health_boost 2 12 true
execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_5"]}},Slot:102b}]}] at @s run effect give @s resistance 1 3 true
execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_5"]}},Slot:102b}]}] at @s run effect give @s fire_resistance 1 2 true


execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_1"]}},Slot:102b}]}] at @s unless score @s class_id = TANK class_id run item replace entity @s armor.chest with air
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_2"]}},Slot:102b}]}] at @s unless score @s class_id = TANK class_id run item replace entity @s armor.chest with air
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_3"]}},Slot:102b}]}] at @s unless score @s class_id = TANK class_id run item replace entity @s armor.chest with air
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_4"]}},Slot:102b}]}] at @s unless score @s class_id = TANK class_id run item replace entity @s armor.chest with air
execute as @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_5"]}},Slot:102b}]}] at @s unless score @s class_id = TANK class_id run item replace entity @s armor.chest with air
