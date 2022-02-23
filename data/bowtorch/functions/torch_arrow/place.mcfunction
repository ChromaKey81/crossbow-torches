#> bowtorch:torch_arrow/place
# Places the torch on contact with a block.
# Arrow entity is killed unless shot into a 
# ceiling, in which case it is left alone and
# the torch is not placed.
# @context torch arrow

execute if entity @s facing ~ ~ ~1 run setblock ~ ~ ~ wall_torch[facing=north] replace
execute if entity @s facing ~ ~ ~-1 run setblock ~ ~ ~ wall_torch[facing=south] replace
execute if entity @s facing ~1 ~ ~ run setblock ~ ~ ~ wall_torch[facing=west] replace
execute if entity @s facing ~-1 ~ ~ run setblock ~ ~ ~ wall_torch[facing=east] replace
execute if entity @s facing ~ ~1 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
execute if entity @s facing ~ ~-1 ~ run setblock ~ ~ ~ torch replace
execute unless entity @s facing ~ ~1 ~ run kill @s