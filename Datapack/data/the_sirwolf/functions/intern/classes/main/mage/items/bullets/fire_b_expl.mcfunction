##
 # fire_b_expl.mcfunction
 # intern/classes/main/mage/items/bullets
 #
 # Created by .
##

summon creeper ~ ~ ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,Fuse:1,ignited:1b,ExplosionRadius:5}
particle flame ~ ~ ~ 3 3 3 0.1 40
particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 10
execute as @e[type=!armor_stand,type=!item_frame,type=!item,distance=..4] at @s run setblock ~ ~ ~ fire keep
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace #ice
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace snow
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace snow_block

kill @s