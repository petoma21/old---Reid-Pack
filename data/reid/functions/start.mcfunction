execute in minecraft:reid run setblock -14 -51 118 minecraft:command_block{UpdateLastExecution: 1b,id: "minecraft:command_block", powered: 0b, conditionMet: 0b, Command: "mm mobs spawn general_dragonstorm_medievalsoldiers:1 1 reid,-13,-54,94,640.60,-2.85", SuccessCount: 0, CustomName: '{"text":"@"}', TrackOutput: 0b, auto: 0b}
execute in minecraft:reid run setblock -14 -51 117 minecraft:chain_command_block{UpdateLastExecution: 1b, id: "minecraft:command_block", powered: 0b, conditionMet: 0b, Command: "function reid:airblock", SuccessCount: 0, CustomName: '{"text":"@"}', TrackOutput: 1b, auto: 1b}
scoreboard players set 状況 raid_advance 0
execute in minecraft:reid run setblock 0 -63 1 minecraft:air
execute as @a[scores={raid_advance=-1}] run bossbar set minecraft:raid_jointimer visible false
scoreboard players set 制限タイマー raid_advance 1000
scoreboard players set @a raid_damage 0
execute in minecraft:reid run tp @a[scores={raid_advance=-1}] -12.50 -56.00 140.49 1260.29 -2.40
execute as @a[scores={raid_advance=-1}] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 1 1
execute as @a[scores={raid_advance=-1}] at @s run tellraw @s [{"text":"開始！","color":"green","bold":true}]
scoreboard players set 状況 raid_advance 3
scoreboard players reset @a raid_death
scoreboard players set @a[scores={raid_advance=-1}] raid_advance 3
execute as @a[scores={raid_advance=3}] run scoreboard players operation @s raid_life = @s raid_advance
execute in minecraft:reid run setblock -13 -51 118 minecraft:redstone_block