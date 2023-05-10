# Indiana Jones and The Infernal Machine documentation
> :warning: **Work in progress!**

This is an unofficial and incomplete documentation about the game file structure and modding. For any information not found here please look into [Discussions](https://github.com/Jones3D-The-Infernal-Engine/Documentation/discussions) and post any question there.

Before you start with modding it's a good idea to extract all the game's resource files.  
Please follow the instructions in [pre-mod.md](pre-mod.md) for this.

## Game Assets
The game assets are usually stored in `.gob` container files.
GOB files can be extracted using [gobext](https://github.com/smlu/ProjectMarduk/releases) tool.

The resource folder structure:
```
Root
│ 
├── 3do #3D models (.3do)
│   └── key #animations (.key)
├── cog #COG scripts (.cog)
├── mat #Material texture files
├── misc
│   ├── ai #AI behavior definition files (.ai)
│   ├── pup #Character movement puppet files (.pup)
│   ├── snd #Sound definition files (.pup)
│   ├── spr #Sprite definition files (.spr)
│   └── ui #contains only unused default font.gcf font atlas file
├── ndy #Level files (.cnd/.ndy)
└── sound #Sound files (.wav)
``` 

### [COG script](cog.md)
 COG scripts are the heart of game logic. They define the mechanics behind the game, like cutscenes, level goals, unlocking/locking doors, weapon definitions, etc...  
 Documentation on COG scripting can be found in [cog.md](cog.md).

### [KEY](key.md)
Documentation for KEY animation file (.key) can be found in [key.md](key.md).

### [PUP](pup.md)
Documentation for puppet file (.pup) specification can be found in [pup.md](pup.md).

### Game level files
There are 2 types of level files:
* [NDY](ndy.md) - text based level format which can be edited in any text editor.  
The documentation for this file format can be found in [ndy.md](ndy.md)
* CND - is compact binary level format. The structure of such file is similar to NDY file format. Such a file, besides defining level structure, also stores `mat`, `key` and `sound` game assets for the level.  
The C++ code for CND file structure can be found in: [https://github.com/smlu/ProjectMarduk/tree/develop/libraries/libim/content/asset/world/impl/serialization/cnd](https://github.com/smlu/ProjectMarduk/tree/develop/libraries/libim/content/asset/world/impl/serialization/cnd)

## File naming convention
The maximum file name length, including the file extension in Jones3D engine is limited to 64 characters.  
Therefore all longer file names have to be abbreviated.  
Some of general abbreviations:  
   &nbsp;&nbsp;&nbsp;&nbsp; **dflt** - default  
   &nbsp;&nbsp;&nbsp;&nbsp; **bk**   - back  
   &nbsp;&nbsp;&nbsp;&nbsp; **by**   - boy  
   &nbsp;&nbsp;&nbsp;&nbsp; **com**  - commie    
   &nbsp;&nbsp;&nbsp;&nbsp; **fr**   - front    
   &nbsp;&nbsp;&nbsp;&nbsp; **ib**   - ice boss   
   &nbsp;&nbsp;&nbsp;&nbsp; **ij**   - indy jeep  
   &nbsp;&nbsp;&nbsp;&nbsp; **in**   - indy  
   &nbsp;&nbsp;&nbsp;&nbsp; **inv**  - inventory  
   &nbsp;&nbsp;&nbsp;&nbsp; **ir**   - indy raft  
   &nbsp;&nbsp;&nbsp;&nbsp; **lb**   - lava boss  
   &nbsp;&nbsp;&nbsp;&nbsp; **mc**   - mine car  
   &nbsp;&nbsp;&nbsp;&nbsp; **mo**   - monkey  
   &nbsp;&nbsp;&nbsp;&nbsp; **by**   - boy  
   &nbsp;&nbsp;&nbsp;&nbsp; **ol**   - old lady  
   &nbsp;&nbsp;&nbsp;&nbsp; **rft**  - raft  
   &nbsp;&nbsp;&nbsp;&nbsp; **sn**   - snake  
   &nbsp;&nbsp;&nbsp;&nbsp; **sp**   - spider  
   &nbsp;&nbsp;&nbsp;&nbsp; **so**   - sophia  
   &nbsp;&nbsp;&nbsp;&nbsp; **tu**   - turner  
   &nbsp;&nbsp;&nbsp;&nbsp; **uw**   - under water  
   &nbsp;&nbsp;&nbsp;&nbsp; **vo**   - volodnikov  
   &nbsp;&nbsp;&nbsp;&nbsp; **yl**   - young lady  
   
   &nbsp;&nbsp;&nbsp;&nbsp; Also, every file which refers to specific game level is prefixed with 3 letters of abbreviated level name eg.: pyr_, pru_...  
