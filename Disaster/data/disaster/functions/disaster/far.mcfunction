tellraw @a {"text":"天灾发生在了遥远的地方……","color": "gray","italic":true}
bossbar set disaster:timer visible false
scoreboard players set dis_type dis_temp -1
kill @e[tag=disaster_core]
tag @a remove disaster_victim
kill @e[tag=disaster_victim_core]
function disaster:disaster/next_disaster