execute store success score @s bowtorch.dummy unless block ~ ~ ~1 #bowtorch:air run setblock ~ ~ ~ redstone_wall_torch[facing=north] replace
execute unless score @s bowtorch.dummy matches 1 store success score @s bowtorch.dummy unless block ~ ~ ~-1 #bowtorch:air run setblock ~ ~ ~ redstone_wall_torch[facing=south] replace
execute unless score @s bowtorch.dummy matches 1 store success score @s bowtorch.dummy unless block ~1 ~ ~ #bowtorch:air run setblock ~ ~ ~ redstone_wall_torch[facing=west] replace
execute unless score @s bowtorch.dummy matches 1 store success score @s bowtorch.dummy unless block ~-1 ~ ~ #bowtorch:air run setblock ~ ~ ~ redstone_wall_torch[facing=east] replace
execute unless score @s bowtorch.dummy matches 1 store success score @s bowtorch.dummy unless block ~ ~-1 ~ #bowtorch:air run setblock ~ ~ ~ redstone_torch replace
execute at @s unless score @s bowtorch.dummy matches 1 run summon item ~ ~-1 ~ {Item:{id:"minecraft:redstone_torch",Count:1b}}