fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace water
particle cloud ~ ~ ~ 2 2 2 1.0 100
execute if predicate disaster:1_5 run summon tnt ~ ~ ~
scoreboard players set dis_prot dis_temp 1