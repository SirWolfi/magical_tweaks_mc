##
 # main.mcfunction
 # intern
 #
 # Created by The_SirWolf.
##

# display:{Name:'{"text":"Fire Orb","color":"blue"}'},CustomModelData:1


#time
scoreboard players add tick variables 1
execute if score tick variables matches 20 run scoreboard players set onSec variables 1
execute if score tick variables matches 20 run scoreboard players add tonSec variables 1
execute if score tick variables matches 20 run scoreboard players set tick variables 0

execute if score tonSec variables matches 5 run scoreboard players set on5Sec variables 1

scoreboard players add @e time_tick 1
execute as @e at @s run scoreboard players operation @s time_sec = @s time_tick
execute as @e at @s run scoreboard players operation @s time_sec /= c20 variables
scoreboard players add @e time_tick_reset 1
execute as @e[scores={time_tick_reset=20..}] at @s run scoreboard players set @s time_sec_reset 1

#classes
function the_sirwolf:intern/classes/main/main

#standard crafting command
# implement own function for it in spawns/
#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:dirt"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:grass_block"}}] run function the_sirwolf:intern/spawns/debug

# crafter
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:stone"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:crafting_table"}}] run function the_sirwolf:intern/spawns/crafter


# Prod 5
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:4s}]}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:4s}]}}}] run function the_sirwolf:intern/spawns/prod5

# Prod 6
#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:5s}]}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:5s}]}}}] run function the_sirwolf:intern/spawns/prod6

# Prod 7
#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:6s}]}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:6s}]}}}] run function the_sirwolf:intern/spawns/prod6

# Prod 8
#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:7s}]}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:7s}]}}}] run function the_sirwolf:intern/spawns/prod6

# Prod 9
#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:8s}]}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:8s}]}}}] run function the_sirwolf:intern/spawns/prod6

# Prod 10
#execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:9s}]}}}] at @s run execute if entity @e[type=item,limit=1,distance=0.1..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection",lvl:9s}]}}}] run function the_sirwolf:intern/spawns/prod6

# jumppad
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:slime_block"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:stick"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:stone"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/jumppad

# Altar
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:glowstone"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:diamond"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/altar

# knive
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:stick"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:iron_ingot"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/knive

# strong stick
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:stick"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:iron_ingot"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/strong_stick

# color crystal
# green, blue, brown, grey, white, magenta, orange, yellow, pink, purple, red, lime, cyan
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:green_dye"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:gray_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:red_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:white_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:blue_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:magenta_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:cyan_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:lime_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:pink_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:brown_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:orange_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:yellow_dye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:purple_dye"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/color_crystal

# kings clock
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:clock"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:infinity"}]}}}] if entity @e[distance=..0.6,tag=crafter,type=item_frame] run function the_sirwolf:intern/spawns/kings_clock

# Signaler
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:stone"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:stick"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:diamond"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:redstone"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/signaler

# Extractor
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:stone"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:stone"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:diamond"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:hopper"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:brewing_stand"}}] run function the_sirwolf:intern/spawns/extractor

# Glass Sword
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:glass"}}] at @s run execute run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/glass_sword

execute as @a[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{EntityTag:{Tags:["glass_sw"]}}}}] run effect give @s invisibility 1 1 false
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{EntityTag:{Tags:["glass_sw"]}}}}] at @s run particle white_ash ~ ~ ~ 0.3 1 0.3 0.01 1

# Circuit Board
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:copper_ingot"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:lime_dye",tag:{EntityTag:{Tags:["poison"]}}}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:32b,id:"minecraft:sand"}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.6] run function the_sirwolf:intern/spawns/circuit_board

# Tech Table (tech_table)
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:iron_block"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:10b,id:"minecraft:lime_dye",tag:{EntityTag:{Tags:["poison"]}}}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:redstone_block"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/tech_table

# Antenna
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:lightning_rod"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["signaler"]}}}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:iron_ingot"}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.6] run function the_sirwolf:intern/spawns/antenna

execute as @e[type=item_frame,tag=signaler,tag=!setSig] at @s run function the_sirwolf:intern/spawns/config/set_signaler

function the_sirwolf:intern/spawns/config/signal_check
execute as @e[type=item_frame,tag=altar] at @s run function the_sirwolf:intern/spawns/config/check_altar_struc

function the_sirwolf:intern/spawns/config/check_block_to_ingots

execute as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:iron_ingot"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:stone"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:redstone"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:diamond_block"}}] run function the_sirwolf:intern/spawns/drill

execute if score on5Sec variables matches 1 as @e[type=item_frame,tag=drill] at @s if block ^ ^ ^-2 glowstone run fill ^ ^ ^1 ^ ^ ^1 air destroy

execute as @e[type=item_frame,tag=drill,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:pointed_dripstone",Count:1b}
execute as @e[type=item_frame,tag=drill,tag=!hasItem] at @s run tag @s add hasItem

execute as @e[type=item_frame,tag=crafter,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:crafting_table",Count:1b}
execute as @e[type=item_frame,tag=crafter,tag=!hasItem] at @s run tag @s add hasItem
execute as @e[type=item_frame,tag=crafter] at @s if block ~ ~-1 ~ crafting_table run tag @s add valid
kill @e[type=item_frame,tag=crafter,tag=!valid]

execute as @e[type=item_frame,tag=tech_table,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:detector_rail",Count:1b}
execute as @e[type=item_frame,tag=tech_table,tag=!hasItem] at @s run tag @s add hasItem
execute as @e[type=item_frame,tag=tech_table] at @s if block ~ ~-1 ~ iron_block run tag @s add valid
kill @e[type=item_frame,tag=tech_table,tag=!valid]

execute as @e[type=item_frame,tag=extractor,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:hopper",Count:1b}
execute as @e[type=item_frame,tag=extractor,tag=!hasItem] at @s run tag @s add hasItem
execute as @e[type=item_frame,tag=extractor] at @s if block ~ ~-1 ~ polished_diorite run tag @s add valid
kill @e[type=item_frame,tag=extractor,tag=!valid]

execute as @e[type=item_frame,tag=jumppad,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:slime_ball",Count:1b}
execute as @e[type=item_frame,tag=jumppad,tag=!hasItem] at @s run tag @s add hasItem

execute as @e[tag=jumppad,type=item_frame,tag=!level2JP] at @s run effect give @a[dz=1] jump_boost 1 10 true
execute as @e[tag=jumppad,type=item_frame,tag=level2JP] at @s run effect give @a[dz=1] jump_boost 1 20 true

execute as @e[tag=jumppad,type=item_frame,tag=!level2JP] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:slime_block",Count:10b}}] run function the_sirwolf:intern/spawns/config/upgrade_jumppad


execute as @e[type=item_frame,tag=daylightchanger,nbt={Item:{id:"minecraft:emerald",Count:1b,tag:{Tags:["daylightchanger_day"]}}}] run time set day
execute as @e[type=item_frame,tag=daylightchanger,nbt={Item:{id:"minecraft:emerald",Count:1b,tag:{Tags:["daylightchanger_night"]}}}] run time set night

execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:sugar"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:rabbit_foot"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:stone"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/speedloop

# Ring frame 
execute as @e[type=item,nbt={Item:{Count:20b,id:"minecraft:iron_ingot"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:5b,id:"minecraft:gold_nugget"}}] run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:diamond"}}] if block ~ ~-1 ~ #anvil run function the_sirwolf:intern/spawns/ring_frame

execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["ring_f"]}},Slot:-106b}]}] run effect give @s resistance 10 1 true

# big torch 
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:coal"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] run execute if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/big_torch

execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["big_tor"]}},Slot:-106b}]}] run effect give @s night_vision 4 1 true

# Bloody Nail
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:coal"}}] at @s run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] run execute if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/big_torch

execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{EntityTag:{Tags:["bloody_n"]}},Slot:-106b}]}] run function the_sirwolf:intern/spawns/config/apply_bloody_nail_stats

# glider
execute as @e[type=item,nbt={Item:{Count:10b,id:"minecraft:phantom_membrane"}}] at @s run execute run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:4b,id:"minecraft:stick",tag:{EntityTag:{Tags:["strong_stick"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:20b,id:"minecraft:leather"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/glider

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["glider"]}}}}] run effect give @s slow_falling 1 30 true
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["glider"]}}}}] run scoreboard players add @s glider_boost_cldw 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["glider"]}}}}] if score @s glider_boost_cldw >= MAX_cldw glider_boost_cldw run scoreboard players operation @s glider_boost_cldw = MAX_cldw glider_boost_cldw
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["glider"]}}}}] run particle spit ~ ~ ~ 0.1 0 0.1 0.01 2 

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{EntityTag:{Tags:["glider"]}}}},scores={usedWeapon=1..}] if score @s glider_boost_cldw >= MAX_cldw glider_boost_cldw run scoreboard players set @s glider_boost_trail_t 1
execute as @a at @s if score @s glider_boost_trail_t > c0 variables run scoreboard players add @s glider_boost_trail_t 1
execute as @a at @s if score @s glider_boost_trail_t > c0 variables run particle flame ~ ~ ~ 0.1 0 0.1 0.01 3
execute as @a at @s if score @s glider_boost_trail_t >= MAX glider_boost_trail_t run scoreboard players set @s glider_boost_trail_t 0

# teleporter
execute as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:diamond"}}] at @s run execute run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:4b,id:"minecraft:ender_eye"}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:2b,id:"minecraft:redstone_block"}}] if entity @e[type=item_frame,tag=crafter,distance=..0.6] run function the_sirwolf:intern/spawns/teleporter/teleporter
execute as @e[type=item,nbt={Item:{Count:2b,id:"minecraft:diamond"}}] at @s run execute run execute if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:item_frame",tag:{EntityTag:{Tags:["telep_in"]}}}}] if entity @e[type=item,limit=1,distance=..1,sort=nearest,nbt={Item:{Count:1b,id:"minecraft:compass"}}] if entity @e[type=item_frame,tag=tech_table,distance=..0.6] run function the_sirwolf:intern/spawns/teleporter/teleporter_out


function the_sirwolf:intern/spawns/teleporter/main

# speedloop
execute as @e[type=item_frame,tag=speedloop] at @s run function the_sirwolf:intern/spawns/config/check_speedloop_struc

execute as @e[type=item_frame,tag=speedloop,tag=!level2SL] at @s run effect give @a[distance=..1] speed 2 10 true 
execute as @e[type=item_frame,tag=speedloop,tag=level2SL] at @s run effect give @a[distance=..1] speed 3 20 true 

execute as @e[type=item_frame,tag=speedloop,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:sugar",Count:1b}
execute as @e[type=item_frame,tag=speedloop,tag=!hasItem] at @s run tag @s add hasItem

execute as @e[tag=speedloop,type=item_frame,tag=!level2SLfunction] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sugar",Count:64b}}] run function the_sirwolf:intern/spawns/config/upgrade_speedloop

#lightning bolds spawn storm shards
execute as @e[type=lightning_bolt,tag=!b_tag] at @s run function the_sirwolf:intern/spawns/storm_shard
tag @e[type=lightning_bolt] add b_tag

#item transport
#execute as @e[type=item] at @s if block ~ ~-1 ~ piston if score onSec variables matches 1 run function the_sirwolf:intern/spawns/config/item_trans/move

execute as @e[type=item_frame,tag=altar] at @s run execute as @e[type=item,distance=..1] at @s run function the_sirwolf:intern/spawns/config/check_item_drop_altar

#execute as @e[type=!player] at @s run data modify entity @s CustomName set from entity @s Health
#execute as @e[type=!player] at @s run data modify entity @s CustomNameVisible set value true

execute as @e[tag=extractor] at @s run function the_sirwolf:intern/spawns/config/extractor_check


scoreboard players operation rand variables += @a did_hit
scoreboard players operation rand variables += @a got_hurt
scoreboard players operation rand variables += @a moved
scoreboard players operation rand variables += @a jump
scoreboard players operation rand variables += @a fell
scoreboard players operation rand variables += @a piged
scoreboard players operation rand variables += @a flew

execute as @e run scoreboard players add rand variables 1
scoreboard players operation rand variables %= rand_max variables

function the_sirwolf:intern/bin/check_if_active
function the_sirwolf:intern/bin/check_if_total_active
scoreboard players set @a did_hit 0
scoreboard players set @a got_hurt 0
scoreboard players set @a got_hurt 0
scoreboard players set @a moved 0
scoreboard players set @a fell 0
scoreboard players set @a piged 0
scoreboard players set @a flew 0

# has to be at the end:
execute if score onSec variables matches 1 run scoreboard players set onSec variables 0
execute if score tonSec variables matches 5 run scoreboard players set tonSec variables 0
execute if score on5Sec variables matches 1 run scoreboard players set on5Sec variables 0

execute as @e[scores={time_tick_reset=20..}] at @s run scoreboard players set @s time_tick_reset 0
execute as @e[scores={time_tick_reset=20..}] at @s run scoreboard players set @s time_sec_reset 0

execute as @a[scores={join=1..}] run function the_sirwolf:intern/bin/join_hand

scoreboard players add @a afk_cldw 1
execute as @a if score @s was_inactive matches 1 if score @s afk_cldw >= MAX_cldw afk_cldw run scoreboard players operation @s afk_cldw = MAX_cldw afk_cldw

function the_sirwolf:intern/bin/afk

execute as @a[scores={usedWeapon=1..}] at @s run function the_sirwolf:intern/classes/used_weapon
scoreboard players set @a usedWeapon 0

scoreboard players set @a jump 0
scoreboard players set @a sneak 0
scoreboard players set @a deaths 0