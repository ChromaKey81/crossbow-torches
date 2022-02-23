#> bowtorch:torch_arrow/tick
# Run by torch arrows every tick
# @context torch arrow

execute if block ~ ~ ~ #bowtorch:air run function bowtorch:torch_arrow/glow
execute as @s[nbt={inGround:1b}] run function bowtorch:torch_arrow/place