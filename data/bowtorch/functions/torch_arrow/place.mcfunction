#> bowtorch:torch_arrow/place
# Places the torch on contact with a block.
# Arrow entity is killed unless shot into a 
# ceiling, in which case it is left alone and
# the torch is not placed.
# @context torch arrow

execute unless block ~ ~ ~1 #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=north] replace
execute unless block ~ ~ ~-1 #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=south] replace
execute unless block ~1 ~ ~ #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=west] replace
execute unless block ~-1 ~ ~ #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=east] replace
execute unless block ~ ~1 ~ #bowtorch:air run summon item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
execute unless block ~ ~-1 ~ #bowtorch:air run setblock ~ ~ ~ torch replace
tag @s remove bowtorch.has_torch