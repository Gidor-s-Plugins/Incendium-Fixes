####
# Summon helper marker
#  Checks if a helper exists
#   if it doesn't makes a new one
#  Called on `/reload` and every 7s
###

execute unless entity @e[type=marker,tag=in.helper_entity,limit=1] in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["in.helper_entity", "smithed.entity"]}