##
 # homming_bullet_tick.mcfunction
 # intern/classes/main/night_walker/other/edo_ent/bullets
 #
 # Created by .
##

scoreboard players add @s edo_ent1_bulrang 1
execute if score @s edo_ent1_bulrang >= MAX_rang edo_ent1_bulrang run kill @s
scoreboard players set @s tmp 0
execute if block ~ ~ ~ air run scoreboard players set @s tmp 1
execute if score @s tmp matches 0 run kill @s

execute if score @s shuricen_range >= c5 variables as @e[distance=..2,type=!armor_stand,type=!item] run scoreboard players set @s bleeding_cldw 1
execute if score @s shuricen_range >= c5 variables if entity @e[distance=..2,type=!armor_stand,type=!item] run kill @s

particle falling_dust nether_portal ~ ~ ~ 0.1 0.1 0.1 0.01 10

scoreboard players set @s tmp 0
#execute if entity @e[sort=nearest,limit=1,scores=!{class_id=7},distance=..20] run scoreboard players set @s tmp 1
#execute if score @s tmp matches 1 run tp @e[sort=nearest,limit=1,scores=!{class_id=7},distance=..20] The_SirWolf
#execute if score @s tmp matches 1 run tp @s ^ ^ ^ facing entity @e[sort=nearest,limit=1,scores=!{class_id=7},distance=..20]
execute if score @s tmp matches 1 run tp @s ^ ^ ^1
execute if score @s tmp matches 1 run say i
scoreboard players set @s tmp 0