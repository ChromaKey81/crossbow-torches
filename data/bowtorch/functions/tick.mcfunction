#> bowtorch:tick
# Run every tick
# @context root

execute as @e[type=arrow,tag=bowtorch.has_torch] at @s run function bowtorch:torch_arrow/tick
execute as @e[type=marker,tag=bowtorch.temp_light_block] at @s unless entity @e[type=arrow,tag=bowtorch.has_torch,distance=..1] run function bowtorch:torch_arrow/delete_light_block