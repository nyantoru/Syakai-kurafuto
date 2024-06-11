# kkt=救急隊 dc=死亡中プレイヤー d=蘇生待ちプレイヤー dst=蘇生中救急隊 shift=スニーク中のプレイヤー rsm=リスポーンメッセージを表示したかの管理用
# sstime=蘇生P dstime=全ロスまでの時間 aktime=リスポーンできるようになるまでの時間
gamerule showdeathmessages false
scoreboard objectives add sstime dummy
scoreboard objectives add dstime dummy
scoreboard objectives add time dummy
scoreboard objectives add aktime dummy
tag @a remove shift
execute as @a at @s if entity @s[y=~1.4,dx=0] unless entity @s[y=~1.5,dx=0] run tag @s add shift
execute as @a at @s run spawnpoint
execute as @e[tag=ds] at @s run tp @a[tag=d,c=1]
tag @a add dc
tag @e[type=player] remove dc
gamemode s @a[tag=d,scores={sstime=..0}]
execute as @a[tag=d,scores={sstime=..0}] at @s run tellraw @a[tag=kkt] {"rawtext":[{"selector":"@s"},{"text":"が"},{"selector":"@a[tag=kkt,tag=!d,c=1]"},{"text":"によって蘇生されました"}]}
execute as @a[tag=d,scores={sstime=..0}] at @s run inputpermission set @s movement enabled
execute as @a[tag=d,scores={sstime=..0}] at @s run inputpermission set @s camera enabled
execute as @a[tag=d,scores={sstime=..0}] at @s run ability @s mute false
execute as @a[tag=d,scores={sstime=..0}] at @s run playanimation @s animation.player.sleeping none 0
tag @a[tag=d,scores={sstime=..0}] remove d
execute as @a[tag=dc,tag=!d] at @s run scoreboard players set @s sstime 110
execute as @a[tag=dc,tag=!d] at @s run scoreboard players set @s dstime 0
execute as @a[tag=dc,tag=!d] at @s run scoreboard players set @s aktime 1800
execute as @a[tag=dc,tag=!d] at @s run inputpermission set @s movement disabled
execute as @a[tag=dc,tag=!d] at @s run inputpermission set @s camera disabled
execute as @a[tag=dc,tag=!d] at @s run ability @s mute true
execute as @a[tag=dc,tag=!d] at @s run gamemode a
execute as @a[tag=dc,tag=!d] at @s run tag @s remove rsm
execute as @a[tag=dc,tag=!d] at @s run playanimation @s animation.player.sleeping none 99999
execute as @a[tag=dc,tag=!d] at @s run title @s title ダウンしてしまった!
execute as @a[tag=dc,tag=!d] at @s run title @s subtitle 約1分半後リスポーンできます
execute as @a[tag=dc,tag=!d] at @s run tellraw @s {"rawtext":[{"text":"情報:ダウン中はチャットができません"}]}
execute as @a[tag=dc,tag=!d] at @s run tellraw @s {"rawtext":[{"text":"ヒント:ダウン中に通報を使うと救急隊に通報ができます。"}]}
tag @a[tag=dc,tag=!d] add d
execute as @a[tag=kkt,tag=dst] at @s unless entity @a[tag=d,r=2] run tag @s remove dst
execute as @a[tag=dst,tag=!shift] at @s run tag @s remove dst
execute as @a[tag=dst,tag=d] at @s run tag @s remove dst
execute as @a[tag=kkt,tag=!dst,tag=!d,tag=shift] at @s if entity @a[tag=d,r=2] run tellraw @s {"rawtext":[{"selector":"@a[tag=d,c=1]"},{"text":"を蘇生中..."}]}
execute as @a[tag=kkt,tag=!dst,tag=!d,tag=shift] at @s if entity @a[tag=d,r=2] run tag @s add dst
execute as @a[tag=kkt,tag=dst] at @s run scoreboard players remove @e[tag=d,c=1] sstime 1
execute as @a[tag=!dc,tag=d] at @s run scoreboard players remove @s aktime 1
execute as @a[tag=d,scores={dstime=100..}] at @s run kill @e[type=item,r=5]
execute as @a[tag=d,scores={dstime=100..}] at @s run clear
execute as @a[tag=d,scores={dstime=100..}] at @s run tp @e[tag=spawn,c=1]
execute as @a[tag=d,scores={dstime=100..}] at @s run inputpermission set @s movement enabled
execute as @a[tag=d,scores={dstime=100..}] at @s run inputpermission set @s camera enabled
execute as @a[tag=d,scores={dstime=100..}] at @s run ability @s mute false
execute as @a[tag=d,scores={dstime=100..}] at @s run gamemode s
execute as @a[tag=d,scores={dstime=100..}] at @s run playanimation @s animation.player.sleeping none 0
execute as @a[tag=d,scores={dstime=100..}] at @s run tellraw @s {"rawtext":[{"text":"所持品をすべて失って初期リスにリスポーンしました"}]}
execute as @a[tag=d,scores={dstime=100..}] at @s run tag @s remove d
effect @e[tag=ds] resistance 1 255 true
effect @e[tag=ds] instant_health 1 100 true
effect @e[tag=d] resistance 1 255 true
effect @e[tag=d] instant_health 1 100 true
effect @e[tag=d] weakness 1 255 true
effect @e[tag=d] water_breathing 1 255 true
effect @e[tag=d] fire_resistance 1 255 true
execute as @a[tag=d,scores={aktime=1..}] at @s run titleraw @s actionbar {"rawtext":[{"score":{"name":"@s","objective":"aktime"}},{"text":"後にリスポーン可能"}]}
execute as @a[tag=d,scores={aktime=..0}] at @s run titleraw @s actionbar {"rawtext":[{"score":{"name":"@s","objective":"dstime"}},{"text":"%-Shiftキーでリスポーン(全ロスします)"}]}
execute as @a[tag=d,scores={aktime=..0},tag=shift] at @s run scoreboard players add @s dstime 1
execute as @a[tag=d,scores={aktime=..0},tag=!rsm] at @s run title @s title リスポーンが可能になりました
execute as @a[tag=d,scores={aktime=..0},tag=!rsm] at @s unless entity @e[type=armor_stand,name=ping_kkt,r=1] run title @s subtitle 救急隊に自動通報しました
execute as @a[tag=d,scores={aktime=..0},tag=!rsm] at @s unless entity @e[type=armor_stand,name=ping_kkt,r=1] run tellraw @a[tag=!d,tag=kkt] {"rawtext":[{"selector":"@s"},{"text":"§eから119番通報がありました§r"}]}
execute as @a[tag=d,scores={aktime=..0},tag=!rsm] at @s unless entity @e[type=armor_stand,name=ping_kkt,r=1] run summon armor_stand ping_kkt
execute as @a[tag=d,scores={aktime=..0},tag=!rsm] at @s run tag @s add rsm
execute as @a[tag=d] at @s run camera @s fade time 0.1 0.1 0.1 color 0 0 0