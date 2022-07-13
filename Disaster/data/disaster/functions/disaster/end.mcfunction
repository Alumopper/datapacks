gamerule randomTickSpeed 3
gamerule doDaylightCycle true
gamerule naturalRegeneration true
weather clear
tellraw @a {"text":"天灾已经过去……","color": "gray","italic":true}
bossbar set disaster:timer visible false
scoreboard players set dis_type dis_temp -1
tag @a remove disaster_victim
kill @e[tag=disaster_victim_core]
execute as @e[type=!armor_stand] run data modify entity @s NoGravity set value false
schedule clear #disaster:schedule
function disaster:disaster/next_disaster