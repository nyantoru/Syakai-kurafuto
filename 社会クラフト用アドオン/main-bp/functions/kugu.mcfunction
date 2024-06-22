# 初期設定
scoreboard objectives add kugu_muki dummy
execute as @e[family=kugu,tag=!kugu] at @s run scoreboard players set @s kugu_muki 1
execute as @e[family=kugu,tag=!kugu] at @s run tag @s add kugu
# 向き調整
execute as @e[type=item,name="レンチ"] at @s as @e[r=3,tag=kugu,c=1] at @s run scoreboard players add @s kugu_muki 1
execute as @e[type=item,name="レンチ"] at @s as @e[r=3,tag=kugu,type=!syakai:kugu_drl,c=1] at @s if entity @s[scores={kugu_muki=5..}] run scoreboard players set @s kugu_muki 1
execute as @e[type=item,name="レンチ"] at @s as @e[r=3,tag=kugu,type=syakai:kugu_drl,c=1] at @s if entity @s[scores={kugu_muki=7..}] run scoreboard players set @s kugu_muki 1
execute as @e[type=item,name="レンチ"] at @s as @e[r=3,tag=kugu,c=1] at @s run tag @s remove kugu_marker
execute as @e[type=item,name="レンチ"] at @s as @p run loot give @s loot kugu_rnt
execute as @e[type=item,name="レンチ"] run kill
# 向き調整-ドリル
execute as @e[type=syakai:kugu_drl,scores={kugu_muki=1}] at @s run tp ~ ~ ~ 0 0
execute as @e[type=syakai:kugu_drl,scores={kugu_muki=2}] at @s run tp ~ ~ ~ 90 0
execute as @e[type=syakai:kugu_drl,scores={kugu_muki=3}] at @s run tp ~ ~ ~ 180 0
execute as @e[type=syakai:kugu_drl,scores={kugu_muki=4}] at @s run tp ~ ~ ~ 270 0
execute as @e[type=syakai:kugu_drl,scores={kugu_muki=5}] at @s run tp ~ ~ ~ 0 -90
execute as @e[type=syakai:kugu_drl,scores={kugu_muki=6}] at @s run tp ~ ~ ~ 0 90
# 向き調整-発電機
execute as @e[type=syakai:kugu_htdn,scores={kugu_muki=1}] at @s run tp ~ ~ ~ 0 0
execute as @e[type=syakai:kugu_htdn,scores={kugu_muki=2}] at @s run tp ~ ~ ~ 90 0
execute as @e[type=syakai:kugu_htdn,scores={kugu_muki=3}] at @s run tp ~ ~ ~ 180 0
execute as @e[type=syakai:kugu_htdn,scores={kugu_muki=4}] at @s run tp ~ ~ ~ 270 0
# 向き調整-コンベア
execute as @e[type=syakai:kugu_knba,scores={kugu_muki=1}] at @s run tp ~ ~ ~ 0 0
execute as @e[type=syakai:kugu_knba,scores={kugu_muki=2}] at @s run tp ~ ~ ~ 90 0
execute as @e[type=syakai:kugu_knba,scores={kugu_muki=3}] at @s run tp ~ ~ ~ 180 0
execute as @e[type=syakai:kugu_knba,scores={kugu_muki=4}] at @s run tp ~ ~ ~ 270 0
# 向き調整-ファン
execute as @e[type=syakai:kugu_blower,scores={kugu_muki=1}] at @s run tp ~ ~ ~ 0 0
execute as @e[type=syakai:kugu_blower,scores={kugu_muki=2}] at @s run tp ~ ~ ~ 90 0
execute as @e[type=syakai:kugu_blower,scores={kugu_muki=3}] at @s run tp ~ ~ ~ 180 0
execute as @e[type=syakai:kugu_blower,scores={kugu_muki=4}] at @s run tp ~ ~ ~ 270 0
# マーカー
execute as @e[tag=kugu,tag=!kugu_marker] at @s anchored eyes run particle minecraft:endrod ^ ^ ^0.5
execute as @e[tag=kugu,tag=!kugu_marker] at @s run tag @s add kugu_marker
# ドリル
execute as @e[type=syakai:kugu_drl] at @s unless block ^ ^ ^1 air if entity @e[r=10,type=syakai:kugu_htdn,scores={battery=20..},c=1] run tag @s add kugu_drl
execute as @e[type=syakai:kugu_drl,tag=kugu_drl] at @s run fill ^ ^ ^1 ^ ^ ^1 minecraft:air destroy
execute as @e[type=syakai:kugu_drl,tag=kugu_drl] at @s run scoreboard players remove @e[r=10,type=syakai:kugu_htdn,scores={battery=20..},c=1] battery 20
execute as @e[type=syakai:kugu_drl,tag=kugu_drl] at @s run tag @s remove kugu_drl
# コンベア
execute as @e[type=syakai:kugu_knba] at @s if entity @e[r=1,tag=!member,type=!syakai:kugu_knba] if entity @e[r=10,type=syakai:kugu_htdn,scores={battery=1..},c=1] run tag @s add kugu_knba
execute as @e[type=syakai:kugu_knba,tag=kugu_knba] at @s run scoreboard players remove @e[r=10,type=syakai:kugu_htdn,scores={battery=1..},c=1] battery 1
execute as @e[type=syakai:kugu_knba,tag=kugu_knba] at @s as @e[r=1,tag=!member,type=!syakai:kugu_knba] facing ^ ^ ^1 positioned as @s run tp ^ ^ ^0.5
execute as @e[type=syakai:kugu_knba,tag=kugu_knba] at @s run tag @s remove kugu_knba
# ファン
execute as @e[type=syakai:kugu_blower] at @s if entity @e[r=1,tag=!member,type=!syakai:kugu_blower] if entity @e[r=10,type=syakai:kugu_htdn,scores={battery=1..},c=1] run tag @s add kugu_blower
execute as @e[type=syakai:kugu_blower,tag=kugu_blower] at @s run scoreboard players remove @e[r=10,type=syakai:kugu_htdn,scores={battery=1..},c=1] battery 1
execute as @e[type=syakai:kugu_blower,tag=kugu_blower] at @s as @e[r=1,tag=!member,type=!syakai:kugu_blower] at @s run tp ~ ~0.8 ~
execute as @e[type=syakai:kugu_blower,tag=kugu_blower] at @s run tag @s remove kugu_blower
# 発電機
function kugu_htdn
# レンチ
execute as @a[hasitem={item=syakai:kugu_rnt,location=slot.weapon.offhand},tag=shift] at @s positioned ^ ^ ^3 if entity @e[r=2,tag=kugu,family=bt,c=1] run titleraw @s actionbar {"rawtext":[{"text":"バッテリー残量:"},{"score":{"name":"@e[r=2,tag=kugu,family=bt,c=1]","objective":"battery"}}]}
execute as @a[hasitem={item=syakai:kugu_rnt,location=slot.weapon.offhand},tag=shift] at @s positioned ^ ^ ^3 unless entity @e[r=2,tag=kugu,family=bt,c=1] run titleraw @s actionbar {"rawtext":[{"text":"対応する機械が近くにありません"}]}