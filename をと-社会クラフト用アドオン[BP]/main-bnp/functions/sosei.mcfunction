# kkt=救急隊 dc=死亡中プレイヤー d=蘇生待ちプレイヤー ds=蘇生用アマスタ dst=蘇生中救急隊 shift=スニーク中のプレイヤー
# sstime=蘇生P dstime=全ロスまでの時間
gamerule showdeathmessages false
scoreboard objectives add sstime dummy
scoreboard objectives add dstime dummy
scoreboard objectives add time dummy
tag @a remove shift
execute as @a at @s if entity @s[y=~1.4,dx=0] unless entity @s[y=~1.5,dx=0] run tag @s add shift
execute as @a at @s run spawnpoint
execute as @e[tag=ds] at @s run tp @a[tag=d,c=1]
tag @a add dc
tag @e[type=player] remove dc
gamemode s @a[tag=d,scores={sstime=..0}]
execute as @a[tag=d,scores={sstime=..0}] at @s run tellraw @a[tag=kkt] {"rawtext":[{"selector":"@s"},{"text":"が"},{"selector":"@a[tag=kkt,tag=!d,c=1]"},{"text":"によって蘇生されました"}]}
execute as @a[tag=d,scores={sstime=..0}] at @s run inputpermission set @s movement enabled
execute as @a[tag=d,scores={sstime=..0}] at @s run ability @s mute false
execute as @a[tag=d,scores={sstime=..0}] at @s run kill @e[tag=ds,c=1]
tag @a[tag=d,scores={sstime=..0}] remove d
execute as @a[tag=dc,tag=!d] at @s run summon armor_stand 蘇生待ちプレイヤー
execute as @a[tag=dc,tag=!d] at @s run tag @e[type=armor_stand,c=1] add ds
execute as @a[tag=dc,tag=!d] at @s run scoreboard players set @s sstime 110
execute as @a[tag=dc,tag=!d] at @s run scoreboard players set @s dstime 3000
execute as @a[tag=dc,tag=!d] at @s run inputpermission set @s movement disabled
execute as @a[tag=dc,tag=!d] at @s run ability @s mute true
execute as @a[tag=dc,tag=!d] at @s run title @s title ダウンしてしまった!
execute as @a[tag=dc,tag=!d] at @s run title @s subtitle 約3分以内に蘇生されなかった場合全ロスします
execute as @a[tag=dc,tag=!d] at @s run tellraw @s {"rawtext":[{"text":"情報:ダウン中はチャットができません"}]}
tag @a[tag=dc,tag=!d] add d
execute as @a[tag=kkt,tag=dst] at @s unless entity @a[tag=d,r=2] run tag @s remove dst
execute as @a[tag=dst,tag=!shift] at @s run tag @s remove dst
execute as @a[tag=dst,tag=d] at @s run tag @s remove dst
execute as @a[tag=kkt,tag=!dst,tag=!d,tag=shift] at @s if entity @a[tag=d,r=2] run tellraw @s {"rawtext":[{"text":"蘇生中..."}]}
execute as @a[tag=kkt,tag=!dst,tag=!d,tag=shift] at @s if entity @a[tag=d,r=2] run tag @s add dst
execute as @a[tag=kkt,tag=dst] at @s run scoreboard players remove @e[tag=d,c=1] sstime 1
execute as @a[tag=!dc,tag=d] at @s run scoreboard players remove @s dstime 1
execute as @a[tag=d,scores={dstime=..0}] at @s run kill @e[tag=ds,c=1]
execute as @a[tag=d,scores={dstime=..0}] at @s run clear
execute as @a[tag=d,scores={dstime=..0}] at @s run tp @e[tag=spawn,c=1]
execute as @a[tag=d,scores={dstime=..0}] at @s run inputpermission set @s movement enabled
execute as @a[tag=d,scores={dstime=..0}] at @s run ability @s mute false
execute as @a[tag=d,scores={dstime=..0}] at @s run gamemode s
execute as @a[tag=d,scores={dstime=..0}] at @s run tellraw @s {"rawtext":[{"text":"あなたは所持品をすべて失って初期リスにスポーンした....."}]}
execute as @a[tag=d,scores={dstime=..0}] at @s run tag @s remove d
effect @e[tag=ds] resistance 1 255 true
effect @e[tag=ds] instant_health 1 100 true
effect @e[tag=d] resistance 1 255 true
effect @e[tag=d] instant_health 1 100 true
effect @e[tag=d] 
execute as @a[tag=d,scores={dstime=1..}] at @s run titleraw @s actionbar {"rawtext":[{"text":"残り時間:"},{"score":{"name":"@s","objective":"dstime"}}]}
execute as @a[scores={dstime=..2980},tag=d,tag=!dc] at @s unless entity @a[tag=dc] unless entity @a[tag=!d,tag=kkt] run tellraw @s {"rawtext":[{"text":"救急隊が全滅してしまった....."}]}
execute as @a[scores={dstime=..2980},tag=d,tag=!dc] at @s unless entity @a[tag=dc] unless entity @a[tag=!d,tag=kkt] run scoreboard players set @s dstime 0
execute as @a[tag=d] at @s unless entity @e[type=minecraft:armor_stand,tag=ds,r=5] run summon armor_stand 蘇生待ちプレイヤー
execute as @a[tag=d] at @s unless entity @e[type=minecraft:armor_stand,tag=ds,r=5] run tag @e[type=armor_stand,c=1] add ds
clear @a minecraft:armor_stand
execute as @a[tag=!dc,tag=d] at @s if block ~ ~-0.1 ~ air run tp ~ ~-0.1 ~
playanimation @a[tag=d,tag=!dc] animation.player.sleeping none 0.1