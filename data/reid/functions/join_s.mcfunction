execute as @a at @s run tellraw @s [{"text":"レイドの受付が開始されました!!","color":"gold","bold":true},{"text":"\nメニューパネルから移動して、レイドに参加しましょう！!","color":"yellow"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
bossbar add raid_jointimer [{"text":"RAID参加者受付中","color":"green","bold":true},{"text":"　受付終了まで残り","color":"yellow","bold":true},{"text":":","color":"gray","bold":false},{"score":{"name":"タイマー","objective":"raid_advance"},"color":"red","bold":false},{"text":"秒","color":"red"}]
bossbar set minecraft:raid_jointimer max 1800
scoreboard objectives add raid_death deathCount
bossbar set minecraft:raid_jointimer color red
scoreboard players set @a raid_life 3
scoreboard objectives add raid_advance dummy
scoreboard players set 状況 raid_advance 1
bossbar set minecraft:raid_jointimer max 1800
scoreboard players set タイマー raid_advance 1800
bossbar set minecraft:raid_jointimer color red
scoreboard players set 制限タイマー raid_advance 0
scoreboard players reset * raid_damage
scoreboard objectives add raid_life dummy
execute in minecraft:reid run setblock 0 -63 1 minecraft:redstone_block
scoreboard players set @a reid_zanki 3
scoreboard objectives add raid_damage minecraft.custom:minecraft.damage_dealt
scoreboard players set 参加者 raid_advance 0
scoreboard players set 参加者残り raid_advance 0
scoreboard objectives add raid_damage_max dummy
tag @a remove raid_dame_max
scoreboard objectives add raid_randm dummy