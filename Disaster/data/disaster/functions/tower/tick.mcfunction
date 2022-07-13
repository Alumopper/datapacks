#燃料添加
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:coal",Count:1b}}] run scoreboard players add @s dis_protower 1200
kill @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] run scoreboard players add @s dis_protower 1200
kill @e[type=item,nbt={Item:{id:"minecraft:charcoal",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:oak_planks",Count:1b}}] run scoreboard players add @s dis_protower 250
kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:spruce_planks",Count:1b}}] run scoreboard players add @s dis_protower 250
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_planks",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:birch_planks",Count:1b}}] run scoreboard players add @s dis_protower 250
kill @e[type=item,nbt={Item:{id:"minecraft:birch_planks",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:jungle_planks",Count:1b}}] run scoreboard players add @s dis_protower 250
kill @e[type=item,nbt={Item:{id:"minecraft:jungle_planks",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:acacia_planks",Count:1b}}] run scoreboard players add @s dis_protower 250
kill @e[type=item,nbt={Item:{id:"minecraft:acacia_planks",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:dark_oak_planks",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:oak_log",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:birch_log",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:birch_log",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:acacia_log",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:acacia_log",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:jungle_log",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:jungle_log",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}]
execute at @e[type=item,distance=0..10,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}] run scoreboard players add @s dis_protower 650
kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}]
#自然回复能量
execute store result score dis_daytime dis_temp run time query daytime 
execute if score @s dis_protower matches ..100000 if score dis_daytime dis_temp matches 0..11834 run scoreboard players add @s dis_protower 3
#能量溢出
execute if score @s dis_protower matches 150000.. run scoreboard players remove @s dis_protower 1
execute if score @s dis_protower matches 151000.. run scoreboard players remove @s dis_protower 5
execute if score @s dis_protower matches 152000.. run scoreboard players remove @s dis_protower 10
execute if score @s dis_protower matches 153000.. run scoreboard players remove @s dis_protower 50
execute if score @s dis_protower matches 154000.. run scoreboard players remove @s dis_protower 100
execute if score @s dis_protower matches 155000.. run scoreboard players remove @s dis_protower 500
#天灾保护
execute if entity @e[tag=disaster_core] if score @s dis_protower matches 1000.. run function disaster:tower/protect
#bossbar显示
execute if score @s dis_protower matches 150000.. run bossbar set disaster:power color purple
execute if score @s dis_protower matches ..150000 run bossbar set disaster:power color blue
execute if score @s dis_protower matches ..1000 run bossbar set disaster:power color red
bossbar set disaster:power players @a[distance=..100]
execute store result bossbar disaster:power value run scoreboard players get @s dis_protower
bossbar set disaster:power name ["中央防御塔能量:",{"score":{"name": "@s","objective": "dis_protower"}},"/100000"]
