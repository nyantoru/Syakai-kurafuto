execute as @s at @s if entity @s[tag=d] run tellraw @a[tag=kkt] {"rawtext":[{"selector":"@s"},{"text":"§eから119番通報がありました。§r"}]}
execute as @s at @s if entity @s[tag=!d] run tellraw @a[tag=kist] {"rawtext":[{"selector":"@s"},{"text":"§eから110番通報がありました。§r"}]}
execute as @s at @s if entity @s[tag=d] run tellraw @s {"rawtext":[{"selector":"@a[tag=kkt]"},{"text":"§eに119番通報をしました§r"}]}
execute as @s at @s if entity @s[tag=!d] run tellraw @s {"rawtext":[{"selector":"@a[tag=kist]"},{"text":"§eに110番通報をしました§r"}]}