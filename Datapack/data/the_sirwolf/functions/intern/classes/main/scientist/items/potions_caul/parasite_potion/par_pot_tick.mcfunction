##
 # par_pot_tick.mcfunction
 # intern/classes/main/scientist/items/potions_caul/parasite_potion
 #
 # Created by .
##

execute as @a[scores={parasite_expl_cldw=1..}] run scoreboard players add @s parasite_expl_cldw 1
execute as @a[scores={parasite_expl_cldw=1..}] at @s run particle dust 0 0.278 0.016 1 ~ ~ ~ 0.2 0.4 0.2 0.01 30

execute as @a[scores={parasite_expl_cldw=1..}] at @s if block ~ ~ ~ water if block ~ ~1 ~ water run scoreboard players set @s parasite_expl_cldw 0

execute as @a[scores={parasite_expl_cldw=1..}] at @s if score @s parasite_expl_cldw = MAX_cldw parasite_expl_cldw run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/parasite_potion/par_pot_expl

execute as @e[type=potion] if data entity @s {Item:{tag:{EntityTag:{Tags:["par_pot"]}}}} at @s unless block ~ ~-0.5 ~ air run function the_sirwolf:intern/classes/main/scientist/items/potions_caul/parasite_potion/parasite_pot_splash

execute as @a[scores={parasite_expl_cldw=1..}] run title @s actionbar {"text": "Infected!!","color": "dark_green"}

execute as @a[scores={parasite_expl_cldw=1..}] run scoreboard players add @a[distance=0.2..1] parasite_expl_cldw 1
