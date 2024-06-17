# 初期設定
scoreboard objectives add menu dummy
scoreboard players set menu_max menu 2
execute as @a at @s unless entity @s[scores={menu=1..}] run scoreboard players set @s menu 1
# 設定
execute as @a at @s unless entity @s[hasitem={item=syakai:add}] run replaceitem entity @s slot.inventory 2 syakai:add 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}
execute as @a at @s unless entity @s[hasitem={item=syakai:remove}] run replaceitem entity @s slot.inventory 0 syakai:remove 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}
execute as @a at @s if entity @s[hasitem={item=syakai:add}] unless entity @s[hasitem={item=syakai:add,location=slot.inventory,slot=2}] if score @s menu >= menu_max menu run scoreboard players set @s menu 1
execute as @a at @s if entity @s[hasitem={item=syakai:add}] unless entity @s[hasitem={item=syakai:add,location=slot.inventory,slot=2}] if score @s menu matches ..1 run scoreboard players add @s menu 1
execute as @a at @s if entity @s[hasitem={item=syakai:add}] unless entity @s[hasitem={item=syakai:add,location=slot.inventory,slot=2}] run clear @s syakai:add
execute as @a at @s if entity @s[hasitem={item=syakai:remove}] unless entity @s[hasitem={item=syakai:remove,location=slot.inventory,slot=0}] if entity @s[scores={menu=..1}] run scoreboard players operation @s menu = menu_max menu
execute as @a at @s if entity @s[hasitem={item=syakai:remove}] unless entity @s[hasitem={item=syakai:remove,location=slot.inventory,slot=0}] if score @s menu < menu_max menu run scoreboard players remove @s money 1
execute as @a at @s if entity @s[hasitem={item=syakai:remove}] unless entity @s[hasitem={item=syakai:remove,location=slot.inventory,slot=0}] run clear @s syakai:remove
# ping
execute as @a[scores={menu=1}] at @s unless entity @s[hasitem={item=syakai:ping}] run replaceitem entity @s slot.inventory 1 syakai:ping 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}
effect @e[type=armor_stand,name=ping_kkt] invisibility 1 1 true
effect @e[type=armor_stand,name=ping_kist] invisibility 1 1 true
execute as @e[type=armor_stand,name=ping_kkt] at @s if entity @a[tag=kkt,tag=!d,r=1] run kill
execute as @e[type=armor_stand,name=ping_kist] at @s if entity @a[tag=kist,tag=!d,r=1] run kill
execute as @e[type=armor_stand,name=ping_kist] at @s unless entity @a[tag=kist] run kill
execute as @e[type=armor_stand,name=ping_kkt] at @s unless entity @a[tag=kkt] run kill
execute as @a[scores={menu=1}] at @s unless entity @s[hasitem={item=syakai:ping}] run replaceitem entity @s slot.inventory 1 syakai:ping 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] if entity @s[tag=d] run tellraw @a[tag=!d,tag=kkt] {"rawtext":[{"selector":"@s"},{"text":"§eから119番通報がありました§r"}]}
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] if entity @s[tag=!d] run tellraw @a[tag=!d,tag=kist] {"rawtext":[{"selector":"@s"},{"text":"§eから110番通報がありました§r"}]}
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] if entity @s[tag=d] run summon armor_stand ping_kkt
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] if entity @s[tag=!d] run summon armor_stand ping_kist
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] if entity @s[tag=d] run tellraw @s {"rawtext":[{"selector":"@a[tag=kkt,tag=!d]"},{"text":"§eに119番通報をしました§r"}]}
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] if entity @s[tag=!d] run tellraw @s {"rawtext":[{"selector":"@a[tag=kist,tag=!d]"},{"text":"§eに110番通報をしました§r"}]}
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory,slot=1}] run clear @s syakai:ping
# wp送金
execute as @a[scores={menu=2}] at @s if score @s money matches 20.. unless entity @s[hasitem={item=syakai:wp_menu}] run replaceitem entity @s slot.inventory 1 syakai:wp_menu 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}
execute as @a[scores={menu=2}] at @s if score @s money matches ..19 unless entity @s[hasitem={item=syakai:hk_wp}] run replaceitem entity @s slot.inventory 1 syakai:hk_wp 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}
execute as @a[scores={menu=2}] at @s if entity @s[hasitem={item=syakai:wp_menu}] unless entity @s[hasitem={item=syakai:wp_menu,location=slot.inventory,slot=1}] run scoreboard players add @a[rm=0.01,c=1] money 20
execute as @a[scores={menu=2}] at @s if entity @s[hasitem={item=syakai:wp_menu}] unless entity @s[hasitem={item=syakai:wp_menu,location=slot.inventory,slot=1}] run scoreboard players remove @s money 20
execute as @a[scores={menu=2}] at @s if entity @s[hasitem={item=syakai:wp_menu}] unless entity @s[hasitem={item=syakai:wp_menu,location=slot.inventory,slot=1}] as @a[rm=0.01,c=1] run tellraw @s {"rawtext":[{"selector":"@p"},{"text":"§eから20WPが送金されました§r"}]}
execute as @a[scores={menu=2}] at @s if entity @s[hasitem={item=syakai:wp_menu}] unless entity @s[hasitem={item=syakai:wp_menu,location=slot.inventory,slot=1}] run tellraw @s {"rawtext":[{"selector":"@a[rm=0.01,c=1]"},{"text":"§eに20WPを送金しました§r"}]}
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:wp_menu}] unless entity @s[hasitem={item=syakai:wp_menu,location=slot.inventory,slot=1}] run clear @s syakai:wp_menu
execute as @a[scores={menu=1}] at @s if entity @s[hasitem={item=syakai:hk_wp}] unless entity @s[hasitem={item=syakai:hk_wp,location=slot.inventory,slot=1}] run clear @s syakai:hk_wp