##
 # explode.mcfunction
 # intern/classes/main/scientist/items/disease_nuke
 #
 # Created by .
##

execute at @a[distance=..30] unless score @p dis_nuke_link = @s dis_nuke_link run scoreboard players add @p parasite_expl_cldw 1

execute at @a[scores={class_id=8}] if score @p dis_nuke_link = @s dis_nuke_link run scoreboard players set @p dis_nuke_link 0
scoreboard players set @s dis_nuke_link 0

particle dust 0.02 0.373 0.035 1 ~ ~ ~ 4 4 4 0.6 40
summon creeper ~ ~ ~ {Fuse:1,ignited:1b,Invulnerable:1b,NoGravity:1b,ExplosionRadius:5}

playsound entity.dragon_fireball.explode master @a
playsound entity.dragon_fireball.explode master @a
playsound entity.dragon_fireball.explode master @a
playsound entity.generic.explode master @a
playsound entity.generic.explode master @a
playsound entity.generic.explode master @a
playsound entity.generic.explode master @a
playsound block.beacon.deactivate master @a

kill @s