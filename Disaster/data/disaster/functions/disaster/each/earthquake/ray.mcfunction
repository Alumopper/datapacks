fill ~-1 ~0 ~-1 ~1 ~-5 ~1 air destroy
execute if predicate disaster:1_5 run setblock ~ ~ ~ lava
execute if predicate disaster:2_3 positioned ^ ^ ^2 run function disaster:disaster/each/earthquake/ray