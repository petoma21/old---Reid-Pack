scoreboard players set タイマー raid_advance 60
bossbar set minecraft:raid_jointimer max 60
scoreboard players set 状況 raid_advance 7
tellraw @a[scores={raid_advance=0..3}] [{"text":"=========================\n\n","color":"yellow","bold":true},{"text":"極楽部屋に移動しました！","color":"yellow","bold":true},{"text":"\n交易可能時間は1分間です。","color":"yellow","bold":true},{"text":"\n\n=========================","color":"yellow","bold":true}]
execute as @a[scores={raid_advance=0..3}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0
execute in minecraft:reid run tp @a[scores={raid_advance=0..3}] 21.44 -59.00 -258.74 -179.55 -2.40