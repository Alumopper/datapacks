#
function disaster:disaster/each/tick
#天灾结束
execute if score dis_type dis_temp matches 0.. unless entity @e[tag=disaster_core] run function disaster:disaster/end
#天灾核心移动
execute as @e[tag=disaster_victim_core] at @s facing entity @p[tag=disaster_victim] eyes run tp @s ^ ^ ^2
#
execute if entity @e[tag=disaster_core] run function disaster:disaster/lasttime_dis