# バッテリー
scoreboard objectives add battery dummy
scoreboard players add @a battery 1
tag @a[scores={battery=100..}] remove nb
scoreboard players set @a[scores={battery=100..}] battery 100
# スタグレ
execute as @e[name="スタングレネード"] at @s unless entity @e[type=armor_stand,r=1,name=kstmitem-stn] unless block ~ ~-0.1 ~ air run summon minecraft:armor_stand kstmitem-stn ~ ~ ~
execute as @e[name="スタングレネード"] at @s if entity @e[type=armor_stand,r=1,name=kstmitem-stn] unless block ~ ~-0.1 ~ air run kill
execute as @e[name="kstmitem-stn"] at @s run scoreboard players add @s time 1
execute as @e[name="kstmitem-stn",scores={time=40..}] at @s as @a[r=5,tag=!d] run camera @s fade time 0.2 1 6 color 255 255 255
execute as @e[name="kstmitem-stn",scores={time=40..}] at @s as @e[family=!player,tag=!dc,r=5] run effect @s slowness 5 255 true
execute as @e[name="kstmitem-stn",scores={time=40..}] at @s as @e[family=!player,tag=!dc,r=5] run effect @s weakness 5 255 true
execute as @e[name="kstmitem-stn",scores={time=40..}] at @s run kill
effect @e[type=minecraft:armor_stand,name=kstmitem-stn] invisibility 1 1 true
effect @e[type=minecraft:armor_stand,name=kstmitem-stn] instant_health 1 255 true
effect @e[type=minecraft:armor_stand,name=kstmitem-stn] resistance 1 255 true
# ジェットパック
execute as @a[tag=!nb,tag=shift,hasitem={item=syakai:kstm-jet,location=slot.weapon.offhand}] at @s run effect @s levitation 1 5 true
execute as @a[tag=!nb,tag=shift,hasitem={item=syakai:kstm-jet,location=slot.weapon.offhand}] at @s run scoreboard players remove @s battery 2
execute as @a[tag=nb,hasitem={item=syakai:kstm-jet,location=slot.weapon.offhand}] at @s run effect @s levitation 0 1 true
execute as @a[tag=!nb,tag=!shift,hasitem={item=syakai:kstm-jet,location=slot.weapon.offhand}] at @s run effect @s levitation 0 1 true
# wpその1
scoreboard players add @a[hasitem={item=syakai:wp-tmp,quantity=1..,data=2}] money 1
clear @a syakai:wp-tmp 2 1
# wp その2
scoreboard players add @a[hasitem={item=syakai:wp-tmp,quantity=1..,data=3}] money 100
clear @a syakai:wp-tmp 3 1
# wp その3
scoreboard players add @a[hasitem={item=syakai:wp-tmp,quantity=1..,data=4}] money 500
clear @a syakai:wp-tmp 4 1
# batteryその2
tag @a[scores={battery=..0}] add nb