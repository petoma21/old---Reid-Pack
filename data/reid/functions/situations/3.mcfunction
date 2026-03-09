execute if score タイマー2 raid_advance matches 20.. run function reid:join_timer
scoreboard players add タイマー2 raid_advance 1
execute if score 制限タイマー raid_advance matches ..0 run execute as @a[scores={raid_advance=-3..3}] at @s run function reid:after/faild
execute unless entity @a[scores={raid_advance=0..3}] run function reid:after/faild
execute as @a if score 状況 raid_advance matches 3 if score @s raid_advance matches 0 if score @s raid_death matches 1.. run function reid:after/fall_off
execute in minecraft:reid run spawnpoint @a[scores={raid_advance=0..3}] 0 -54 -67 -540