##
 # explode_lazer.mcfunction
 # intern/classes/main/hacker/items/lazer
 #
 # Created by .
##

summon creeper ~ ~ ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,Fuse:1,ignited:1b,ExplosionRadius:10}
summon minecraft:area_effect_cloud ~ ~ ~ {Potion:"minecraft:harming",Radius:1.5f,Duration:6,Particle:"minecraft:explosion"}

effect give @e[distance=..5] wither 4 1 true

particle campfire_cosy_smoke ~ ~ ~ 1.3 4 1.3 0.01 40

kill @s