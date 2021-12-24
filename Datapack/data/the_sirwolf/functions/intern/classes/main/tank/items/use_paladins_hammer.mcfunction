##
 # use_paladins_hammer.mcfunction
 # intern/classes/main/tank/items
 #
 # Created by .
##

effect give @s fire_resistance 10 1 true

effect give @e[distance=0.1..3] levitation 1 12 true
scoreboard players set @s pal_ham_used 0
scoreboard players set @s pal_rage_mode 1
playsound block.chain.break master @a
playsound block.chain.break master @a
playsound entity.dragon_fireball.explode master @a
playsound block.beacon.activate master @a