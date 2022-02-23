#> bowtorch:torch_arrow/glow
# Produces the glowing effect of the torch arrows in midair
# @context run by torch arrows in air blocks

#alias entity light @e[type=marker,tag=bowtorch.temp_light_block,sort=nearest,limit=1]

execute align xyz run summon marker ~ ~ ~ {Tags:["bowtorch.temp_light_block"]}
execute if block ~ ~ ~ air run data merge entity @e[type=marker,tag=bowtorch.temp_light_block,sort=nearest,limit=1] {data:{bowtorch:{originalAirBlock:0}}}
execute if block ~ ~ ~ cave_air run data merge entity @e[type=marker,tag=bowtorch.temp_light_block,sort=nearest,limit=1] {data:{bowtorch:{originalAirBlock:1}}}
execute if block ~ ~ ~ void_air run data merge entity @e[type=marker,tag=bowtorch.temp_light_block,sort=nearest,limit=1] {data:{bowtorch:{originalAirBlock:2}}}