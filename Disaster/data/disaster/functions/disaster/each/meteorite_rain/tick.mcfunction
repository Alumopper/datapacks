#给陨石添加轨迹
execute at @e[tag=disaster_cold_meteorite] run particle dust 0 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 30
execute at @e[tag=disaster_hot_meteorite] run particle smoke ~ ~ ~ 0.1 0.1 0.1 1 30
execute at @e[tag=disaster_hot_meteorite] run particle lava ~ ~ ~ 0.1 0.1 0.1 1 30
#触地爆炸
execute at @e[tag=disaster_cold_meteorite] unless block ~ ~-1 ~ #disaster:fluid run summon tnt
execute as @e[tag=disaster_cold_meteorite] at @s unless block ~ ~-1 ~ #disaster:fluid run kill @s
execute at @e[tag=disaster_hot_meteorite] unless block ~ ~-1 ~ #disaster:fluid run summon creeper ~ ~ ~ {powered:true,Fuse:0,ExplosionRadius:8}
execute as @e[tag=disaster_hot_meteorite] at @s unless block ~ ~-1 ~ #disaster:fluid run kill @s
#生成陨石
execute if predicate disaster:1_500 as @e[tag=disaster_victim_core] at @s unless entity @e[tag=disaster_tower,distance=..100,scores={dis_protower=200..}] positioned ~ 150 ~ run function disaster:disaster/each/meteorite_rain/do