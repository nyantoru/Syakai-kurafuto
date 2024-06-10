# tickごとに実行されるコマンド
scoreboard objectives add ttid dummy
# スポーン設定
execute as @e[name=spawnpoint,tag=!spawn] at @s run kill @e[name=spawnpoint,tag=spawn]
execute as @e[name=spawnpoint,tag=!spawn] at @s run say ワールドスポーンを設定しました
execute as @e[name=spawnpoint,tag=!spawn] at @s run tickingarea remove spawnpoint
execute as @e[name=spawnpoint,tag=!spawn] at @s run tickingarea add circle ~ ~ ~ 4 spawnpoint
execute as @e[name=spawnpoint,tag=!spawn] at @s run setworldspawn
execute as @e[name=spawnpoint,tag=!spawn] at @s run tag @s add spawn
effect @e[tag=spawn] invisibility 1 1 true
effect @e[tag=spawn] instant_health 1 100 true
execute as @e[tag=spawn] at @s run tp ~ ~ ~
# 無敵化
effect @e[type=syakai:knkn-isi] resistance 1 255 true
effect @e[type=syakai:knkn-isi] instant_health 1 255