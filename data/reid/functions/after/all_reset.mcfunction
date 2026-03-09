scoreboard players reset * raid_advance
scoreboard players reset * raid_death
scoreboard players reset * raid_life
bossbar set minecraft:raid_jointimer color red
scoreboard players set 状況 raid_advance 0
scoreboard players set タイマー raid_advance 1800
scoreboard players set 制限タイマー raid_advance 0
scoreboard objectives add raid_damage minecraft.custom:minecraft.damage_dealt
scoreboard players set 参加者 raid_advance 0
execute as @a run bossbar set minecraft:raid_jointimer visible false
scoreboard objectives remove raid_damage_max
tag @a remove raid_dame_max
scoreboard objectives remove raid_randm