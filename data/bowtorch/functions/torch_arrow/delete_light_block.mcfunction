#> bowtorch:torch_arrow/delete_light_block
# Run by the marker entity at a temporary light block
# to remove the light when the arrow moves on
# to the next block.
# @context marker

execute store result score @s bowtorch.dummy run data get entity @s data.originalAirBlock
execute if score @s bowtorch.dummy matches 0 run setblock ~ ~ ~ air replace
execute if score @s bowtorch.dummy matches 1 run setblock ~ ~ ~ cave_air replace
execute if score @s bowtorch.dummy matches 2 run setblock ~ ~ ~ void_air replace
kill @s