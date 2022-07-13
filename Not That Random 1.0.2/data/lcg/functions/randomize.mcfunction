# get current data version from a player
execute store result score _global data_version run data get entity @p DataVersion

execute if score _global data_version matches ..2514 run function lcg:randomize/legacy
execute if score _global data_version matches 2515.. run function lcg:randomize/2515
