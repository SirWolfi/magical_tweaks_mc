##
 # main.mcfunction
 # intern/classes/main/tank
 #
 # Created by .
##

execute as @a[scores={class_id=4}] at @s run attribute @s generic.max_health base set 22
execute as @a[scores={class_id=4}] at @s run attribute @s generic.attack_damage base set 0.7
execute as @a[scores={class_id=4}] at @s run attribute @s generic.movement_speed base set 0.08


# applying axe changes

execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] if score @s class_id = TANK class_id run effect give @s resistance 2 1
execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:stone_axe"}}] if score @s class_id = TANK class_id run effect give @s resistance 2 1
execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:golden_axe"}}] if score @s class_id = TANK class_id run effect give @s resistance 2 1
execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:iron_axe"}}] if score @s class_id = TANK class_id run effect give @s resistance 2 1
execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] if score @s class_id = TANK class_id run effect give @s resistance 2 1
execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] if score @s class_id = TANK class_id run effect give @s resistance 2 1

# pal hammer
execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b,tag:{EntityTag:{Tags:["pal_ham"]}}}}] at @s if score @s class_id = TANK class_id run scoreboard players add @s pal_ham_used 1

execute as @a[scores={did_hit=1..},nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b,tag:{EntityTag:{Tags:["pal_ham"]}}}}] at @s if score @s class_id = TANK class_id if score @s pal_ham_used >= @s pal_ham_used_max run function the_sirwolf:intern/classes/main/tank/items/use_paladins_hammer

# rage mode

execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id run effect give @s resistance 1 0 true
execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id run effect give @s regeneration 1 1 true
execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id run effect give @s speed 1 1 true
execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id run particle dust 1 0.851 0 1 ~ ~ ~ 0.2 0.4 0.4 0.01 20

execute as @a[scores={pal_rage_mode=1}] at @s if score @s class_id = TANK class_id run title @s title {"text": "","color": "yellow"}
execute as @a[scores={pal_rage_mode=1}] at @s if score @s class_id = TANK class_id run title @s subtitle {"text": "Rage mode!","color": "yellow","bold": true}

execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id run effect give @s strength 1 0 true

execute as @a[scores={pal_rage_mode=1..,did_hit=1..}] at @s if score @s class_id = TANK class_id run particle flame ~ ~ ~ 1.3 0.4 1.3 0.01 40

execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id run scoreboard players add @s pal_rage_mode 1
execute as @a[scores={pal_rage_mode=1..}] at @s if score @s class_id = TANK class_id if score @s pal_rage_mode >= @s pal_rage_mode_max run function the_sirwolf:intern/classes/main/tank/exit_rage_mode


#crafting

execute as @e[type=item,nbt={Item:{Count:4b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:4b,id:"minecraft:iron_block"}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_hammer

execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:gold_ingot"}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv1
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_1"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:golden_chestplate"}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv2
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_2"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:glowstone"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["kings_clock"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv3
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_3"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:lava_bucket"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:3b,id:"minecraft:diamond"}}] if entity @e[tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:3b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv4
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_4"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:netherite_ingot"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv5

# kings ring

execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["ring_f"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["kings_clock"]}}}}] if block ~ ~-1 ~ #anvil if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/kings_ring

scoreboard players operation @a pal_ham_used_max = NORM pal_ham_used_max
scoreboard players operation @a pal_ham_used_max_m1 = NORM pal_ham_used_max_m1
scoreboard players operation @a pal_rage_mode_max = NORM pal_rage_mode_max

execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["king_r"]}},Slot:-106b}]}] at @s run scoreboard players remove @s pal_ham_used_max 10
execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["king_r"]}},Slot:-106b}]}] at @s run scoreboard players remove @s pal_ham_used_max_m1 10 
execute as @a[scores={class_id=4},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["king_r"]}},Slot:-106b}]}] at @s run scoreboard players add @s pal_rage_mode_max 100


# fixing
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_1"]}}}}] at @s run execute run execute if entity @e[tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv1
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_2"]}}}}] at @s run execute run execute if entity @e[tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv2
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_3"]}}}}] at @s run execute run execute if entity @e[tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv3
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_4"]}}}}] at @s run execute run execute if entity @e[tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv4
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:chainmail_chestplate",tag:{EntityTag:{Tags:["pal_arm_5"]}}}}] at @s run execute run execute if entity @e[tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:raw_gold",tag:{EntityTag:{Tags:["holy_gold"]}}}}] if entity @e[tag=crafter,distance=..0.6] if entity @a[scores={class_id=4},distance=..2] run function the_sirwolf:intern/classes/main/tank/items/paladins_armor_lv5


execute as @e[type=item,nbt={Item:{Count:3b,id:"minecraft:gold_ingot"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:glowstone_dust"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:amethyst_shard",tag:{EntityTag:{Tags:["storm_shard"]}}}}] if entity @a[scores={class_id=4},distance=..2] if block ~ ~-1 ~ gold_block run function the_sirwolf:intern/classes/main/tank/items/holy_gold

# weapon feedback

execute as @a[scores={class_id=4},nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b,tag:{EntityTag:{Tags:["pal_ham"]}}}}] at @s unless score @s pal_ham_used >= @s pal_ham_used_max_m1 run title @s actionbar [{"score":{"name":"@s","objective":"pal_ham_used"}},"/",{"score":{"name":"@s","objective":"pal_ham_used_max_m1"}}]

execute as @a[scores={class_id=4},nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b,tag:{EntityTag:{Tags:["pal_ham"]}}}}] at @s if score @s pal_ham_used >= @s pal_ham_used_max_m1 run title @s actionbar {"text":"Power fully charged!","color": "yellow","bold": true}


function the_sirwolf:intern/classes/main/tank/apply_paladins_armor_effects

