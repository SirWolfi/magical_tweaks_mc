##
 # edotens_tomb_tick.mcfunction
 # intern/classes/main/night_walker/other
 #
 # Created by .
##

scoreboard players add @s edo_tmb_livetime 1
execute if score @s edo_tmb_livetime >= MAX edo_tmb_livetime run kill @s

execute if entity @s[tag=!summoned,tag=!set] run scoreboard players operation @s edo_tmb_spawn = edo_tmp_spawn_glob variables
execute if entity @s[tag=!summoned,tag=!set] run tag @s add set
execute if entity @s[tag=!summoned] run say o
execute if entity @s[tag=!summoned,scores={edo_tmb_spawn=1}] run summon skeleton ~ ~ ~ {CustomName:"Shaku",CustomNameVisible:1b,Health:20,Invulnerable:1b,HandItems:[{id:"minecraft:bow"}],Tags:["edo_ent","edo_ent_1"],Team:night_walker}
execute if entity @s[tag=!summoned,scores={edo_tmb_spawn=2}] run summon zombie ~ ~ ~ {CustomName:"Mira",CustomNameVisible:1b,Health:20,Invulnerable:1b,HandItems:[{id:"minecraft:golden_shovel"}],Tags:["edo_ent","edo_ent_2"],Team:night_walker}
execute if entity @s[tag=!summoned,scores={edo_tmb_spawn=3}] run summon zombie_horse ~ ~ ~ {Passengers:[{id:"wither_skeleton",CustomName:"Kushuh",CustomNameVisible:1b,Health:20,Invulnerable:1b,HandItems:[{id:"minecraft:black_banner"}],Team:night_walker}],Invulnerable:1b,Tags:["edo_ent","edo_ent_3"]}
# add more if you want

execute if entity @s[tag=!summoned] run scoreboard players add edo_tmp_spawn_glob variables 1
execute if score edo_tmp_spawn_glob variables >= MAX edo_tmb_spawn run scoreboard players set edo_tmp_spawn_glob variables 1
execute if entity @s[tag=!summoned] run tag @s add summoned

particle falling_dust coal_block ^ ^1 ^1 1 2 0 0.01 20 
particle falling_dust coal_block ^ ^1 ^-1 1 2 0 0.01 20 
particle falling_dust coal_block ^1 ^1 ^ 0 2 1 0.01 20 
particle falling_dust coal_block ^-1 ^1 ^ 0 2 1 0.01 20
