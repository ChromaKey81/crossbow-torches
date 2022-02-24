#> bowtorch:tick
# Run every tick
# @context root

execute as @e[type=arrow,tag=bowtorch.has_torch] at @s run function bowtorch:torch_arrow/tick
execute as @e[type=marker,tag=bowtorch.temp_light_block] at @s run function bowtorch:torch_arrow/glow_marker/tick