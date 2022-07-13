summon armor_stand ~ ~5 ~ {Tags:[disaster_lighting],Marker:true,NoGravity:true,Invisible:true}
summon armor_stand ~ ~5 ~ {Tags:[disaster_lighting],Marker:true,NoGravity:true,Invisible:true}
summon armor_stand ~ ~5 ~ {Tags:[disaster_lighting],Marker:true,NoGravity:true,Invisible:true}
execute positioned ~ ~5 ~ run spreadplayers ~ ~ 5 10 false @e[tag=disaster_lighting,distance=0..5]
execute at @e[tag=disaster_lighting] run summon lightning_bolt ~ ~ ~
execute at @e[tag=disaster_lighting] run summon lightning_bolt ~ ~ ~
execute at @e[tag=disaster_lighting] run summon lightning_bolt ~ ~ ~
kill @e[tag=disaster_lighting]