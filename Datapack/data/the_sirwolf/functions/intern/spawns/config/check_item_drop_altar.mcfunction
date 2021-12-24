##
 # check_item_drop_altar.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

#effect clear @p

execute if entity @s[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:10b}}] run effect give @p luck 200 1 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run effect give @p haste 250 2 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run effect give @p jump_boost 100 2 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:carved_pumpkin",Count:1b}}] run effect give @p blindness 100 1 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:observer",Count:1b}}] run effect give @p night_vision 120 2 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] run effect give @p fire_resistance 100 4 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:cake",Count:1b}}] run effect give @p saturation 2000 1 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:nautilus_shell",Count:2b}}] run effect give @p water_breathing 300 2 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:shield",Count:1b}}] run effect give @p absorption 150 1 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run effect give @p strength 140 1 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:redstone_lamp",Count:1b}}] run effect give @p glowing 200 5 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] run effect give @p slow_falling 100 5 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}}] run effect give @p speed 100 3 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:prismarine_shard",Count:2b}}] run effect give @p dolphins_grace 100 2 true

execute if entity @s[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["kings_clock"]}}},Tags:["kings_clock"]}] run effect give @e[type=!player] slowness 200 250 true
execute if entity @s[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["kings_clock"]}}},Tags:["kings_clock"]}] run effect give @a[distance=3..] slowness 20 250 true

kill @s