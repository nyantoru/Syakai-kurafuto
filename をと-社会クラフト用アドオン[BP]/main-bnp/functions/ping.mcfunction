execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] if entity @s[tag=d] run tellraw @a[tag=!d,tag=kkt] {"rawtext":[{"selector":"@s"},{"text":"§eから119番通報がありました§r"}]}
execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] if entity @s[tag=!d] run tellraw @a[tag=!d,tag=kist] {"rawtext":[{"selector":"@s"},{"text":"§eから110番通報がありました§r"}]}
execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] if entity @s[tag=d] run summon armor_stand ping_kkt
execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] if entity @s[tag=!d] run summon armor_stand ping_kist
effect @e[type=armor_stand,name=ping_kkt] invisibility 1 1 true
effect @e[type=armor_stand,name=ping_kist] invisibility 1 1 true
execute as @e[type=armor_stand,name=ping_kkt] at @s if entity @a[tag=kkt,tag=!d,r=1] run kill
execute as @e[type=armor_stand,name=ping_kist] at @s if entity @a[tag=kist,tag=!d,r=1] run kill
execute as @e[type=armor_stand,name=ping_kist] at @s unless entity @a[tag=kist] run kill
execute as @e[type=armor_stand,name=ping_kkt] at @s unless entity @a[tag=kkt] run kill
execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] if entity @s[tag=d] run tellraw @s {"rawtext":[{"selector":"@a[tag=kkt,tag=!d]"},{"text":"§eに119番通報をしました§r"}]}
execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] if entity @s[tag=!d] run tellraw @s {"rawtext":[{"selector":"@a[tag=kist,tag=!d]"},{"text":"§eに110番通報をしました§r"}]}
execute as @a at @s if entity @s[hasitem={item=syakai:ping}] unless entity @s[hasitem={item=syakai:ping,location=slot.inventory}] run clear @s syakai:ping 0
execute as @a at @s unless entity @s[hasitem={item=syakai:ping}] run replaceitem entity @s slot.inventory 0 syakai:ping 1 0 {"keep_on_death":{},"item_lock":{"mode":"lock_in_inventory"}}