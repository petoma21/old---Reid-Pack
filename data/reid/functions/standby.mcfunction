scoreboard players set 状況 raid_advance 0
bossbar set minecraft:raid_jointimer max 60
bossbar set minecraft:raid_jointimer players @a[scores={raid_advance=-1}]
execute as @a[scores={raid_advance=-1}] run bossbar set minecraft:raid_jointimer visible true
bossbar set minecraft:raid_jointimer color green
scoreboard players set タイマー raid_advance 60
scoreboard players set 制限タイマー raid_advance 1000
scoreboard players set @a raid_damage 0
execute as @a[scores={raid_advance=-1}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[scores={raid_advance=-1}] at @s run tellraw @s [{"text":"参加者申請が締め切られました！","color":"green","bold":true},{"text":"\nまもなくレイドがスタートします!  準備をしましょう!","color":"yellow","bold":false},{"text":"\n参加人数","color":"aqua","bold":true},{"text":"：","color":"gray","bold":false},{"score":{"name":"参加者","objective":"raid_advance"},"color":"yellow","bold":false},{"text":"名","color":"yellow","bold":false}]
scoreboard players set 状況 raid_advance 2
scoreboard players reset @a raid_death
execute as @a[scores={raid_advance=-1}] at @s unless dimension minecraft:reid run execute in minecraft:reid run tp @s 0.49 -54.00 -66.30 -539.85 -1.35