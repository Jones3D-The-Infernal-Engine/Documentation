# Indiana Jones and The Infernal Machine documentation
> :warning: **Work in progress!**

This is unofficial and incomplete documentation about the game file structure and modding. Any information not found here please look into [Discussions](https://github.com/Jones3D-The-Infernal-Engine/Documentation/discussions) and post any question there.

Before you begin with modding it's good to extract all game resource files.  
Please follow the instruction in [pre-mod.md](pre-mod.md) for this.

## Game Assets
### [KEY animations](key.md)
The documentation for KEY animation file can be found in [key.md](key.md).

### [COG script](cog.md)
 The COG scripts are the heart of game logics. They define the mechanics behind the game, like cute scenes, level goals, unlocking/locking the doors, weapon definition etc...  
 The documentation on COG scripting can be found in [cog.md](cog.md).

## Game level 
There are 2 types of level files:
* [NDY](ndy.md) - text based level format which can be edit in any text editor.  
The documentation for this file format can be found in [ndy.md](ndy.md)
* CND - is compact binary level format. The structure of file is similar to NDY file format.

## File naming convention
The maximum file name length, including the file extension in Jones3D engine is limited to 64 characters.  
Therefore all longer file names have to be abbreviated.  
Some of general abbreviations:  
   &nbsp;&nbsp;&nbsp;&nbsp; **dflt** - default  
   &nbsp;&nbsp;&nbsp;&nbsp; **bk**   - back  
   &nbsp;&nbsp;&nbsp;&nbsp; **by**   - boy  
   &nbsp;&nbsp;&nbsp;&nbsp; **com**  - commy    
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
