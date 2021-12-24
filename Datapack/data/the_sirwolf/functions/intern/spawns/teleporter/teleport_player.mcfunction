##
 # teleport_player.mcfunction
 # intern/spawns/teleporter
 #
 # Created by .
##

playsound entity.enderman.teleport master @a

scoreboard players set @s tmp 0
execute at @e[type=item_frame,tag=telep_out] if score @s telep_reg = @e[type=item_frame,tag=telep_out,sort=nearest,limit=1] telep_reg run scoreboard players add @s tmp 1

execute if score @s tmp > c1 variables run title @p[scores={sneak=1..}] title [{"text": "To many output teleporter: "},{"score":{"name": "@s","objective": "tmp"}}]
execute if score @s tmp < c1 variables run title @p[scores={sneak=1..}] title {"text": "Found no output teleporter"}

execute if score @s tmp matches 1 run scoreboard players set @p[scores={sneak=1..}] telep_reg 1
execute if score @s tmp matches 1 run execute at @e[type=item_frame,tag=telep_out] if score @s telep_reg = @e[type=item_frame,tag=telep_out,sort=nearest,limit=1] telep_reg run tp @a[scores={telep_reg=1}] ^ ^ ^1
execute if score @s tmp matches 1 run playsound entity.enderman.teleport master @a
execute if score @s tmp matches 1 at @a[scores={telep_reg=1..}] run playsound entity.enderman.teleport master @a

execute if score @s tmp matches 1 run particle portal ~ ~ ~ 1 1 1 0.01 20
execute if score @s tmp matches 1 at @a[scores={telep_reg=1..}] run particle portal ~ ~ ~ 1 1 1 0.01 20

execute if score @s tmp matches 1 run scoreboard players remove @a[scores={telep_reg=1..}] telep_reg 1

