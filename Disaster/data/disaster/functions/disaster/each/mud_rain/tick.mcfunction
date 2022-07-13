execute at @e[tag=disaster_victim_core] unless entity @e[tag=disaster_tower,distance=..100,scores={dis_protower=200..}] if predicate disaster:1_10 run function disaster:disaster/each/mud_rain/do
execute as @e[tag=disaster_mud] run data modify entity @s Time set value 2
weather rain