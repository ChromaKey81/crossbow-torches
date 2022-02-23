#> bowtorch:firing/launched
#
# Tags the arrow that should be bundled with a torch.
#
# @context player who has fired an arrow from a crossbow while holding a torch in their offhand


tag @e[type=arrow,sort=nearest,limit=1,tag=!bowtorch.has_torch,nbt=!{HasBeenShot:1b}] add bowtorch.has_torch
clear @s torch 1