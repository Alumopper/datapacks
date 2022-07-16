#在地狱扣时间
execute unless entity @e[tag=disaster_core] as @a[predicate=disaster:in_nether] run scoreboard players remove dis_timer dis_timer 1
#超范围的debuff
execute as @a[predicate=!disaster:out_range,predicate=disaster:in_overworld] run function disaster:others/debuff