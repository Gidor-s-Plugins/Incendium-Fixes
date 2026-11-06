####
# Summon helper marker (patched)
#  Called on /reload, every 7s, and before aiming
###

execute store result score $count in.dummy if entity @e[type=marker,tag=in.helper_entity]

# more than one visible: remove them all, the next run summons a single new one
execute if score $count in.dummy matches 2.. run kill @e[type=marker,tag=in.helper_entity]

# none visible: summon one with a fixed UUID, so if one already exists
# (even if the selector can't see it) the summon fails instead of adding another
execute if score $count in.dummy matches 0 in minecraft:overworld run summon marker 0.0 0.0 0.0 {UUID:[I;1469003501,-1862310418,-1450067122,1219586013],Tags:["in.helper_entity","smithed.entity"]}