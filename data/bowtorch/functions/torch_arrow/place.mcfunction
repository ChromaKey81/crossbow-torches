#> bowtorch:torch_arrow/place
# Places the torch on contact with a block.
# @context torch arrow

execute if score @s bowtorch.type matches 1 run function bowtorch:torch_arrow/place/torch
execute if score @s bowtorch.type matches 2 run function bowtorch:torch_arrow/place/soul_torch
execute if score @s bowtorch.type matches 3 run function bowtorch:torch_arrow/place/redstone_torch
tag @s remove bowtorch.has_torch