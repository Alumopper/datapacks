summon armor_stand ~ ~100 ~ {Tags:["disaster_mud_rain_core"],Marker:true,NoGravity:true,Invisible:true}
spreadplayers ~ ~ 50 30 false @e[tag=disaster_mud_rain_core]
execute as @e[tag=disaster_mud_rain_core] at @s run tp @s ~ 200 ~
execute as @e[tag=disaster_mud_rain_core] at @s if predicate disaster:1_2 run function disaster:disaster/each/mud_rain/rand_block
execute at @e[tag=disaster_mud_rain_core] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dirt"},Tags:["disaster_mud"],Time:2}
kill @e[tag=disaster_mud_rain_core]