scoreboard players reset タイマー2 raid_advance
execute if score 状況 raid_advance matches 1..2 run scoreboard players remove タイマー raid_advance 1
execute if score 状況 raid_advance matches 2 if score タイマー raid_advance matches 4..10 run execute as @a[scores={raid_advance=-1}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score 状況 raid_advance matches 2 if score タイマー raid_advance matches 1..3 run execute as @a[scores={raid_advance=-1}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score 状況 raid_advance matches 3 run scoreboard players remove 制限タイマー raid_advance 1
execute if score 状況 raid_advance matches 5..7 run scoreboard players remove タイマー raid_advance 1
execute if score 状況 raid_advance matches 5 if score タイマー raid_advance matches 31..33 run execute as @a[scores={raid_advance=0..3}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score 状況 raid_advance matches 6 if score タイマー raid_advance matches 1..3 run execute as @a[scores={raid_advance=0..3}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score 状況 raid_advance matches 7 if score タイマー raid_advance matches 4..10 run execute as @a[scores={raid_advance=0..3}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score 状況 raid_advance matches 7 if score タイマー raid_advance matches 1..3 run execute as @a[scores={raid_advance=0..3}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2