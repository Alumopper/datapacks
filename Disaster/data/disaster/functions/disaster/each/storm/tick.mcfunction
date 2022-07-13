execute as @e[tag=disaster_victim_core] at @s unless entity @e[tag=disaster_tower,distance=..100,scores={dis_protower=200..}] run function disaster:disaster/each/storm/do
weather thunder
execute if entity @e[tag=disaster_storm] run schedule function disaster:disaster/each/storm/tick 5s