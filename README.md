Before starting, I suggest that you make a copy of the installed game directory in case you make a mistake in the procedure.

# I. Extract main archives. (.GOB)

1. Download tools at: https://github.com/smlu/ProjectMarduk

2. Extract CD1.gob CD2.gob and JONES3D.gob using gobext.exe

3. You must have different new folders (3do, cog...) in the "Ressource" folder.

4. Delete the .GOB files. Then launch your game, if it works you are on the good way. Else retry.

# II. Set the game starting in DEVMODE.

1. On windows search bar, look for "RegEdit.exe" and open it.

2. Search for "HKEY_LOCAL_MACHINE\Software\LucasArts Entertainment Company LLC\Indiana Jones and the Infernal Machine\v1.0"

3. For "Start Mode" data, change 0x00000000 to 0x00000002

4. Launch Indy3D.exe located in "Ressource" folder. you must have a menu like this. Try to start a random .CND level, if it works you are on the good way. Else retry.

# III. Extract compact levels files. (.CND)

5. Extract all . CND files in NDY folder using cndext.exe

6. Always in NDY folder, you must have now several folders with the names of levels.

7. For each of them, move the extracted "key" folders to "...\LucasArts\Infernal Machine\Resource\3do\"

8. For each of them, move the extracted "mat" and "sound folders to "...\LucasArts\Infernal Machine\Resource\"

9. You can delete the extracted folders in NDY folder, they are now useless.

10. Download "Jones3D_test.ndy" provided here, put it in "...\LucasArts\Infernal Machine\Resource\ndy\"

11. Launch Indy3D.exe and start the level: "Jones3D_test.ndy", if it works you are on the if it works you are on the good way. Else retry.

# You should be able to load any original or custom level now.
