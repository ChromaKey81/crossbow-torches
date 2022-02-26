#> bowtorch:firing/launched
#
# Tags the arrow that should be bundled with a torch.
#
# @context player who has fired an arrow from a crossbow while holding a torch in their offhand

advancement revoke @s only bowtorch:technical/fired_torch
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:torch"}] run scoreboard players set @e[type=arrow,sort=nearest,limit=1,tag=!bowtorch.has_torch,nbt=!{HasBeenShot:1b}] bowtorch.type 1
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:soul_torch"}] run scoreboard players set @e[type=arrow,sort=nearest,limit=1,tag=!bowtorch.has_torch,nbt=!{HasBeenShot:1b}] bowtorch.type 2
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:redstone_torch"}] run scoreboard players set @e[type=arrow,sort=nearest,limit=1,tag=!bowtorch.has_torch,nbt=!{HasBeenShot:1b}] bowtorch.type 3
tag @e[type=arrow,sort=nearest,limit=1,tag=!bowtorch.has_torch,nbt=!{HasBeenShot:1b}] add bowtorch.has_torch
item modify entity @s weapon.offhand bowtorch:remove_one