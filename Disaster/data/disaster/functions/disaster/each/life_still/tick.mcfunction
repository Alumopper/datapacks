execute as @e[type=!player] at @s unless entity @e[tag=disaster_tower] run data modify entity @s Motion set value [0.0,0.0,0.0]
execute as @e[type=!player] at @s unless entity @e[tag=disaster_tower] run data modify entity @s NoGravity set value true