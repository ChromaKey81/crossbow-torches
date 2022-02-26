#> bowtorch:torch_arrow/glow
# Produces the glowing effect of the torch arrows in midair
# @context run by torch arrows in air blocks

#alias entity light @e[type=marker,tag=bowtorch.temp_light_block,sort=nearest,limit=1]

execute unless entity @e[tag=bowtorch.temp_light_block,distance=..1] run summon marker ~ ~ ~ {Tags:["bowtorch.temp_light_block"]}
execute if score @s bowtorch.type matches 1 run setblock ~ ~ ~ light[level=14]
execute if score @s bowtorch.type matches 2 run setblock ~ ~ ~ light[level=10]
execute if score @s bowtorch.type matches 3 run setblock ~ ~ ~ light[level=7]