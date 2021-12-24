##
 # make_item_frame_invis.mcfunction
 # intern/spawns/config
 #
 # Created by .
##

effect give @s invisibility 999999 150 true
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}]