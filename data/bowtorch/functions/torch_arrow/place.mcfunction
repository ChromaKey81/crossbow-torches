#> bowtorch:torch_arrow/place
# Places the torch on contact with a block.
# @context torch arrow

execute unless block ~ ~ ~1 #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=north] replace
execute unless block ~ ~ ~-1 #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=south] replace
execute unless block ~1 ~ ~ #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=west] replace
execute unless block ~-1 ~ ~ #bowtorch:air run setblock ~ ~ ~ wall_torch[facing=east] replace
execute unless block ~ ~-1 ~ #bowtorch:air run setblock ~ ~ ~ torch replace
execute unless block ~ ~-1 ~ #bowtorch:air unless block ~-1 ~ ~ #bowtorch:air unless block ~1 ~ ~ #bowtorch:air unless block ~ ~ ~-1 #bowtorch:air unless block ~ ~ ~1 #bowtorch:air run summon item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
tag @s remove bowtorch.has_torch