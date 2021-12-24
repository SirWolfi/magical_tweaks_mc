##
 # signal_check.mcfunction
 # intern/spawns/config
 #
 # Created by The_SirWolf
##


execute as @e[type=item_frame,tag=signaler,tag=setSig,tag=!hasItem] at @s run data modify entity @s Item set value {id:"minecraft:redstone",Count:1b}
execute as @e[type=item_frame,tag=signaler,tag=setSig,tag=!hasItem] at @s run tag @s add hasItem

#configs for the ids 0-40, not all are taken yet!

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=0}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=0}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=0}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=0}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=1}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=1}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=1}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=1}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=2}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=2}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=2}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=2}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=3}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=3}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=3}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=3}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=4}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=4}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=4}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=4}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=5}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=5}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=5}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=5}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=6}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=6}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=6}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=6}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=7}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=7}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=7}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=7}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=8}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=8}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=8}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=8}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=9}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=9}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=9}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=9}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=10}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=10}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=10}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=10}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=11}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=11}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=11}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=11}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=12}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=12}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=12}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=12}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=13}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=13}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=13}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=13}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=14}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=14}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=14}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=14}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=15}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=15}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=15}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=15}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=16}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=16}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=16}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=16}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=17}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=17}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=17}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=17}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=18}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=18}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=18}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=18}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=19}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=19}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=19}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=19}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=20}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=20}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=20}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=20}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=22}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=22}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=22}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=22}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=23}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=23}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=23}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=23}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=24}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=24}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=24}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=24}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=25}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=25}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=25}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=25}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=26}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=26}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=26}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=26}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=27}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=27}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=27}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=27}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=28}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=28}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=28}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=28}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=29}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=29}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=29}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=29}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=30}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=30}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=30}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=30}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=31}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=31}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=31}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=31}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=32}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=32}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=32}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=32}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=33}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=33}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=33}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=33}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=34}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=34}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=34}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=34}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=35}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=35}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=35}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=35}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=36}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=36}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=36}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=36}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=37}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=37}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=37}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=37}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=38}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=38}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=38}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=38}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=39}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=39}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=39}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=39}] at @s run setblock ~ ~1 ~ air

execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=40}] at @s if block ~ ~-2 ~ redstone_block run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=40}] at @s run fill ~ ~1 ~ ~ ~1 ~ redstone_block keep
execute as @e[type=item_frame,tag=signaler,tag=setSig,scores={signal_sc=40}] at @s if block ~ ~-2 ~ air run execute as @e[tag=signaler,distance=5..,tag=setSig,scores={signal_sc=40}] at @s run setblock ~ ~1 ~ air

