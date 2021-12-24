##
 # check_block_to_ingots.mcfunction
 # intern/spawns/config
 #
 # Created by The_SirWolf
##

execute as @e[type=item,nbt={Item:{Count:9b,id:"minecraft:iron_ingot"}}] at @s if block ~ ~-1 ~ anvil run function the_sirwolf:intern/spawns/ironblock
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:iron_block"}}] at @s if block ~ ~ ~ stonecutter run function the_sirwolf:intern/spawns/9iron

execute as @e[type=item,nbt={Item:{Count:9b,id:"minecraft:gold_ingot"}}] at @s if block ~ ~-1 ~ anvil run function the_sirwolf:intern/spawns/gold_ingot_block
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:gold_block"}}] at @s if block ~ ~ ~ stonecutter run function the_sirwolf:intern/spawns/gold_ingot


execute as @e[type=item,nbt={Item:{Count:9b,id:"minecraft:coal"}}] at @s if block ~ ~-1 ~ anvil run function the_sirwolf:intern/spawns/coal_block
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:coal_block"}}] at @s if block ~ ~ ~ stonecutter run function the_sirwolf:intern/spawns/coal


execute as @e[type=item,nbt={Item:{Count:9b,id:"minecraft:emerald"}}] at @s if block ~ ~-1 ~ anvil run function the_sirwolf:intern/spawns/emerald_block
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:emerald"}}] at @s if block ~ ~ ~ stonecutter run function the_sirwolf:intern/spawns/emerald


execute as @e[type=item,nbt={Item:{Count:9b,id:"minecraft:diamond"}}] at @s if block ~ ~-1 ~ anvil run function the_sirwolf:intern/spawns/diamond_block
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:diamond_block"}}] at @s if block ~ ~ ~ stonecutter run function the_sirwolf:intern/spawns/diamond


execute as @e[type=item,nbt={Item:{Count:9b,id:"minecraft:netherite_ingot"}}] at @s if block ~ ~-1 ~ anvil run function the_sirwolf:intern/spawns/netherite_ingot_block
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:netherite_block"}}] at @s if block ~ ~ ~ stonecutter run function the_sirwolf:intern/spawns/netherite_ingot
