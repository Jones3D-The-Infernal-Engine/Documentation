# Prepare the game to accept mods.

Before starting, I suggest that you make a copy of the installed game directory in case you make a mistake in the procedure.


# I. Extract main archives. (.GOB)

1. Download tools at: https://github.com/smlu/ProjectMarduk

2. Extract CD1.gob CD2.gob and JONES3D.gob using gobext.exe

3. You must have different new folders (3do, cog...) in the "Resource" folder.

4. Delete the .GOB files. Then launch your game, if it works you are on the good way. Else retry.

# II. Set the game starting in DEVMODE.

1. On windows search bar, look for "RegEdit.exe" and open it.

2. Search for: `HKEY_LOCAL_MACHINE\Software\LucasArts Entertainment Company LLC\Indiana Jones and the Infernal Machine\v1.0`

3. For "Start Mode" data, change 0x00000000 to 0x00000002 like this:
![regedit](resources/images/J3D_docu_regedit.jpg)
<br/>If it doesn't exist create new DWORD with name "Start Mode".

4. Launch Indy3D.exe located in "Resource" folder. you must have a menu like this: ![regedit](resources/images/J3D_docu_devmenu.jpg)
<br/>Try to start a random .CND level, if it works you are on the good way. Else retry.

# III. Extract compact level files. (.CND)

5. Extract all game resources from CND files in NDY folder using cndtool.exe

6. In NDY folder, you should have now several folders with the name of levels.

7. For each of them:
    * move the extracted "key" folder to "...\LucasArts\Infernal Machine\Resource\3do\"
    * move the extracted "mat" and "sound" folders to "...\LucasArts\Infernal Machine\Resource\"

9. You can delete the extracted folders in NDY folder, they are now useless.

10. Download "Jones3D_test_level_ORIG.ndy" and "MOD_00_cyn_mod.ndy" found in [resources/ndy](resources/ndy) folder and put them in "...\LucasArts\Infernal Machine\Resource\ndy\"

11. Launch Indy3D.exe and start the two levels: `Jones3D_test_level_ORIG.ndy` and `MOD_00_cyn_mod.ndy`, if it works; congratulations. Else retry.

You should be able to load any original or custom level now.
