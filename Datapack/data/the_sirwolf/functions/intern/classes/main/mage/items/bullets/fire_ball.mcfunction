##
 # fire_ball.mcfunction
 # intern/classes/main/mage/items/bullets
 #
 # Created by .
##

summon armor_stand ^ ^ ^1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["fire_ball"]}
execute as @e[type=armor_stand,tag=fire_ball,distance=..1.5] at @s run tp @s ^ ^ ^ facing entity @p[scores={class_id=2}]
execute as @e[type=armor_stand,tag=fire_ball,distance=..1.5] at @s run tp @s ^ ^1 ^

