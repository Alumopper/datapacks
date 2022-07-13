summon armor_stand ~ ~ ~ {Tags:["disaster_hot_meteorite_core"],NoGravity:true,Invisible:true}
summon armor_stand ~ ~ ~ {Tags:["disaster_cold_meteorite_core"],NoGravity:true,Invisible:true}
spreadplayers ~ ~ 5 30 true @e[distance=0..2,type=armor_stand]
execute at @e[tag=disaster_hot_meteorite_core] if predicate disaster:1_3 run summon falling_block ~ 150 ~ {BlockState:{Name:"minecraft:magma_block"},DropItem:false,FallHurtAmount:2,FallHurtMax:50,HurtEntities:true,Time:2,Tags:["disaster_hot_meteorite"]}
execute at @e[tag=disaster_cold_meteorite_core] if predicate disaster:1_3 run summon falling_block ~ 150 ~ {BlockState:{Name:"minecraft:stone"},DropItem:false,FallHurtAmount:2,FallHurtMax:50,HurtEntities:true,Time:2,Tags:["disaster_cold_meteorite"]}
kill @e[tag=disaster_cold_meteorite_core]
kill @e[tag=disaster_hot_meteorite_core]