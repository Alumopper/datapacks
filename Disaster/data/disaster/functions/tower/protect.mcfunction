#世界天灾保护
execute if score dis_prot dis_temp matches 1 run scoreboard players remove @s dis_protower 100
scoreboard players set dis_prot dis_temp 0
#泥沙
execute store success score dis_prot dis_temp if entity @e[tag=disaster_mud] run kill @e[tag=disaster_mud,limit=1,sort=nearest]
execute if score dis_prot dis_temp matches 1 run scoreboard players remove @s dis_protower 20
scoreboard players set dis_prot dis_temp 0
#陨石
execute store success score dis_prot dis_temp if entity @e[tag=disaster_hot_meteorite] run kill @e[tag=disaster_hot_meteorite,limit=1,sort=nearest]
execute if score dis_prot dis_temp matches 1 run scoreboard players remove @s dis_protower 100
scoreboard players set dis_prot dis_temp 0
execute store success score dis_prot dis_temp if entity @e[tag=disaster_cold_meteorite] run kill @e[tag=disaster_cold_meteorite,limit=1,sort=nearest]
execute if score dis_prot dis_temp matches 1 run scoreboard players remove @s dis_protower 70
scoreboard players set dis_prot dis_temp 0
#抑制天灾核心
execute if entity @e[tag=disaster_victim_core,distance=..100] run scoreboard players remove @s dis_protower 10
scoreboard players set dis_prot dis_temp 0
