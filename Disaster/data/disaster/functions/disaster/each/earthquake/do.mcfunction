execute unless entity @e[tag=disaster_tower,distance=0..100] if predicate disaster:1_10 at @p run function disaster:disaster/each/earthquake/ray
scoreboard players set dis_prot dis_temp 1