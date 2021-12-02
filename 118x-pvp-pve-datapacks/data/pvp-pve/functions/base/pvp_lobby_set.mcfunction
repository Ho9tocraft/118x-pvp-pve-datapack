#PVP鯖ロビーセットコマンド
execute as @e[type=armor_stand,tag=User_Setted_Lobby] at @s run forceload remove ~ ~
execute as @e[type=armor_stand,tag=User_Setted_Lobby] at @s run kill @s
execute positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["User_Setted_Lobby"],DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=User_Setted_Lobby] at @s run forceload add ~ ~

