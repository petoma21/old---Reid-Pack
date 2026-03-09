execute in minecraft:reid run setblock -14 -51 118 minecraft:command_block{UpdateLastExecution: 1b,id: "minecraft:command_block", powered: 0b, conditionMet: 0b, Command: "mm mobs kill general_dragonstorm_medievalsoldiers", SuccessCount: 0, CustomName: '{"text":"@"}', TrackOutput: 0b, auto: 0b}
execute in minecraft:reid run setblock -14 -51 117 minecraft:chain_command_block{UpdateLastExecution: 1b, id: "minecraft:command_block", powered: 0b, conditionMet: 0b, Command: "function reid:airblock", SuccessCount: 0, CustomName: '{"text":"@"}', TrackOutput: 1b, auto: 1b}
scoreboard players set 状況 raid_advance 4
execute as @s at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 0.8
title @s title {"text":"討伐失敗","color":"blue","bold":true}
tellraw @s [{"text":"=========================\n\n","color":"blue","bold":true},{"text":"レイドボスの討伐に失敗しました。","color":"blue"},{"text":"\n次回のレイドゲームまでお楽しみに！"},{"text":"\n\n========================="}]
execute in minecraft:reid run setblock -13 -51 118 minecraft:redstone_block
execute in minecraft:reid run setblock 6 -63 4 minecraft:redstone_block