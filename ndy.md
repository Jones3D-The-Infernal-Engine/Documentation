# NDY Level file format
This file describes documentation & specifications for **NDY** file (*.ndy) used in **Indiana Jones and the Infernal Machine** game to define game's level. 

## Abstract
The **NDY** file format is text based as opposite to the **CND** file which is in binary format.  
It is an upgraded version of **JKL** file format used in games based on the *Sith* engine, such as *Star Wars Jedi Knight: Dark Forces II*. The specifications for **JKL** file can be found here: [https://www.massassi.net/jkspecs/](https://www.massassi.net/jkspecs/).

## Structure
The level world is a convex mesh divided into sectors. Each sector is connected with another sector through adjoin surface. 
All game objects are defined as *Things* and must be positioned within a sector.
As in **JKL** file, the **NDY** file is structured into 17 sections.
The start of each section is tagged with keyword '`SECTION:`' followed by the section name. Section that defines a *list* ends with keyword `end` otherwise the start of new section ends previous.  
The character '`#`' defines the comment line. All text fallowing after comment char to the end of the line is ignored by the game engine. i.e.: `# This is comment`

NDY Sections:
 - [`COPYRIGHT`](#section-copyright)
 - [`HEADER`](#section-header)
 - [`SOUNDS`](#section-sounds)
 - [`MATERIALS`](#section-materials)
 - [`GEORESOURCES`](#section-georesources)
 - [`SECTORS`](#section-sectors)
 - [`AICLASS`](#section-aiclass)
 - [`MODELS`](#section-models)
 - [`SPRITES`](#section-sprites)
 - [`KEYFRAMES`](#section-keyframes)
 - [`ANIMCLASS`](#section-animclass)
 - [`Soundclass`](#section-soundclass)
 - [`cogscripts`](#section-cogscripts)
 - [`cogs`](#section-cogs)
 - [`TEMPLATES`](#section-templates)
 - [`THINGS`](#section-things)
 - [`PVS`](#section-pvs)
 
 Types:
  * `int` = integer number e.g.: 0, 1, 100
  * `hex_int` = number in hexadecimal integer format. Usually used for flags.
  * `float` = decimal number e.g.: 1.000000, 0.5, 0.000856
  * `string` = text
  * `vector` = (\<float>/\<float>/\<float>)
  * `vector4` = (\<float>/\<float>/\<float>/\<float>)
  * `pyr`= vector. Euler orientation i.e. pitch/yaw/roll in degrees
  * `rgb` = vector i.e. (red/green/blue)
  * `rgb_int` = (\<int>/\<int>/\<int>) i.e. (red/green/blue)
  * `rgba` = vector4 i.e. (red/green/blue/alpha)
  * `path_frame` = (\<float>/\<float>/\<float>:\<float>/\<float>/\<float>) i.e.(position:pyr_orientation) - (x,y,z:pitch/yaw/roll) 
  * `gradient_color` = (\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>/\<float>) <br/> i.e.: (rgba-top/rgba-middle/rgba-bottom-left/rgba-bottom-right)
  <br>
  
  ## Section Copyright
This section contains fixed Lucas Arts copyright ASCII art as seen below. It must be included in the NDY file.

```
SECTION: COPYRIGHT
................................
................@...@...@...@...
.............@...@..@..@...@....
................@.@.@.@.@.@.....
@@@@@@@@......@...........@.....
@@@@@@@@....@@......@@@....@....
@@.....@.....@......@@@.....@@..
@@.@@@@@......@.....@@@......@@.
@@@@@@@@.......@....@@.....@@...
@@@@@@@@.........@@@@@@@@@@.....
@@@@@@@@..........@@@@@@........
@@.....@..........@@@@@.........
@@.@@@@@.........@@@@@@.........
@@.....@.........@@@@@@.........
@@@@@@@@.........@@@@@@.........
@@@@@@@@.........@@@@@@@........
@@@...@@.........@@@@@@@........
@@.@@@.@.........@.....@........
@@..@..@........@.......@.......
@@@@@@@@........@.......@.......
@@@@@@@@.......@........@.......
@@..@@@@.......@........@.......
@@@@..@@......@.........@.......
@@@@.@.@......@.........@.......
@@....@@........................
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@.@@@@@@@@@@@@@@@@@@
@@.@@..@@@@@..@@@@@@@@@@.@@@@@@@
@@.@.@.@@@@.@.@@@.@..@@...@@@..@
@@..@@@@@@....@@@..@@@@@.@@@@.@@
@@@@@@@@...@@.@@@.@@@@@..@@...@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@.(c).lucasarts.entertainment..@
@.........company.llc..........@
@....(c).lucasfilm.ltd.&.tm....@
@.....all.rights.reserved......@
@...used.under.authorization...@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
```

## Section Header
This section contains global world constants and properties e.g. world gravity, fog information etc...
All below fields must be present in the header section. 

```
SECTION: HEADER

Version                  3         # file version. Must be 3
World Gravity            <float>   # World gravity constant. Default is 2.0
Ceiling Sky Z            <float>   # Ceiling sky height. Applies only to surface with set surface flag `0x400 - Ceiling sky`.
Horizon Distance         <float>   # How far the horizon sky appear.  Applies only to surface with set surface flag `0x200 - Horizon sky`.
Horizon Pixels per Rev   <float>   # Pixels of horizon texture seen per revolution. Apparently not used.
Horizon Sky Offset       <float> <float> # x,y offsets of horizon sky texture
Ceiling Sky Offset       <float> <float> # x,y offsets of ceiling sky texture
LOD Distances            <float> <float> <float> <float> # Distances to change 3DO detail levels and MipMaps levels.
                                                         # Distances follow near-to-far.
Fog                      <int>   <float> <float> <float> <float> <float> <float>  # Fog data:
                                                                                  #    1/0 - Fog On/Off
                                                                                  #    RGBA - Fog linear color
                                                                                  #    start,end position i.e. fog depth
```

## Section Sounds
This section defines the list of all sound file names (.wav) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: sounds referenced in sectors, templates, SNDs, COGs and COG scripts.

### Structure
```
SECTION: SOUNDS
World sounds <int> # The number of sound files in the list

<file1.wav>  # string sound file name.
             # The engine search for the wav file in folder Resource/sound
<file2.wav>
.
.
.
end
```

## Section Materials
This section defines the list of all material file names (.mat) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: materials referenced by world surfaces, templates, SPRs, COGs, COG scripts and 3DO models.

### Structure
```
SECTION: MATERIALS

World materials <int> # The max number of material files to be used by the level.
                      # This number can be exact number of files in the list,
                      # or greater for 64 elements i.e. num files in the list + 64.

0: <file1.mat> # string material file name.
               # The engine search for the MAT file in folder Resource/mat
1: <file2.mat>
.
.
.
end
```

## Section GeoResources
This section contains the information about level world geometry i.e.: level surfaces, surface vertices, surface texture vertices, surface normals and adjoins. 

The surface adjoin represents a "portal" between level sectors.
The adjoin entry consists of [adjoin flags](https://github.com/smlu/ProjectMarduk/blob/36324dacb935e85a198c5fd82eea4ccf73ef30ff/libraries/libim/content/asset/world/surface_adjoin.h#L17-L22), a opposite mirror adjoin number and the distance of the surface from the adjoin surface to the center of surface's sector.

The world surface is n-gon polygon with an optional texture and vertices colors. The surface also has different properties i.e. [surface flags](https://github.com/smlu/ProjectMarduk/blob/36324dacb935e85a198c5fd82eea4ccf73ef30ff/libraries/libim/content/asset/world/surface.h#L15-L46) (surfflags) and polygon [face flags](https://github.com/smlu/ProjectMarduk/blob/36324dacb935e85a198c5fd82eea4ccf73ef30ff/libraries/libim/content/asset/primitives/face.h#L22-L28), [geometry mode](https://github.com/smlu/ProjectMarduk/blob/36324dacb935e85a198c5fd82eea4ccf73ef30ff/libraries/libim/content/asset/primitives/geomode.h#L8-L13), [light_mode](https://github.com/smlu/ProjectMarduk/blob/36324dacb935e85a198c5fd82eea4ccf73ef30ff/libraries/libim/content/asset/primitives/light_mode.h#L8-L13), texture mode (not used), adjoin number and extra surface light color.
All surfaces must all be convex. 



### Structure
```
SECTION: GEORESOURCE

# ----- Vertices Subsection -----
World vertices <int> # The number of vertices in the list that follows

# num:	vertex:
0: 0.69935000 1.92794096 3.26141000 # x,y,z position ov vertex
1: 0.42614400 1.82548904 3.26141000
.
.
.

# -- Texture Verts Subsection ---
World texture vertices <int> # The number of texture vertices (UV) in the list that follows

# num:	u:	v:
0: -0.0000000 0.00000005 # texture UV coordinate
1: 0.29178399 0.00000004
.
.
.

# ------ Adjoins Subsection -----
World adjoins <int> # The number of adjoints in the list that follows

# num: flags: mirror: dist:
0: 0x3 22 0.59788090  # adjoint flags,
                      # the number of mirror adjoin i.e. the opposite sector portal 
                      # and distance from the adjoin surface to it's sector center
                       
1: 0x3 4 0.59788090   # mirror is the adjoin num 4
2: 0x3 495 0.59788090
3: 0x3 16 0.73713350
4: 0x3 1 0.72371501   # mirror is the adjoin num 1
.
.
.

# ----- Surfaces Subsection -----
World surfaces <int> # The number of world surfaces in the list that follows

# num: mat: surfflags: faceflags: geo: light: tex: adjoin: extralight: nverts: vertices: intensities:
<int>: <int> <hex_int> <hex_int> <int> <int> <int> <int>     <rgba>     <int>  <int>,<int>[nverts]  <rgb>[nverts] 

# mat         = Material number in the materials section to be used for surface texture. 
                If -1, no material is set.
# adjoin      = Adjoin number in the adjoin list. If -1, surface doesn't have adjoin.
# nverts      = The size of vertices list that follows
# vertices    = The list of vertex,uv pairs
# intensities = The list of vertex colors. The size of list is the same as vertices list

# Example list:
0: -1 0x0 0x0 0 3 3 0  0.00000000 0.00000000 0.00000000 1.00000000  3 0,0 1,1 2,2  0.00000000 0.00000000 0.00000000  0.00000000 0.00000000 0.00000000  0.24224025 0.24224025 0.35932302
1: 110 0x80007 0x0 4 3 3 -1  0.60000002 0.60000002 0.69999999 1.00000000 6 5,3 4,4 3,5 6,6 7,7 8,8  0.33166137 0.33166137 0.49196434  0.00000000 0.00000000 0.00000000  0.00000000 0.00000000 0.00000000  0.30755568 0.30755568 0.45620757  0.33805838 0.33805838 0.50145322  0.33989805 0.33989805 0.50418210
.
.
.

# --- Surface normals ---
# The list of normals is the same size as surface list
0: 0.00000000 0.00000000 -1.00000000 # x,y,z
1: 0.00000000 0.00000000 1.00000000
2: -0.61583585 -0.78690195 -0.03913435
.
.
.
.
```

## Section Sectors
This section contains the level sectors. A sector is a closed polyhedron defined by vertices and surfaces from GeoResource section. All sectors must be convex. The info about sector flags can be found [here](https://github.com/smlu/ProjectMarduk/blob/36324dacb935e85a198c5fd82eea4ccf73ef30ff/libraries/libim/content/asset/world/sector.h#L20-L31).
### Structure
```
SECTION: SECTORS

World sectors <int> # The number of sectors

# Each sector is defined as following:
SECTOR 0                                                 # Sector number
FLAGS 0x0                                                # Sector flags
AMBIENT LIGHT 0.22000000 0.20999999 0.22999999           # Sector RGB ambient light. It affects only Things in sector
EXTRA LIGHT 0.30000001 0.20000000 0.20000000             # Additional sector RGB light. Affects sector surfaces with light mode 2 - Diffuse and Things in sector.
TINT 0.40000001 0.80000001 1.00000000                    # Optional RGB tint color. Apparently not used.
AVERAGE LIGHT INTENSITY 0.25000000 0.20000000 0.17000000 # Optional point light RGB color. Affects only things in sector.
AVERAGE LIGHT POSITION 0.20432100 1.74881899 3.27736902  # Optional point light position. Affects only things in sector.
AVERAGE LIGHT FALLOFF 1.19576180 0.29894045              # Optional point light range. Affects only things in sector.
BOUNDBOX -0.08611600 1.82548904 2.71499896 0.69935000 2.54265308 3.26141000  # The sector's bounding box
COLLIDEBOX 0.81060708 0.50332105 5.31484699 1.00642097 0.65113282 5.60700130 # Optional sector's collision box.
                                                                             # If set it will be used for detecting sector
                                                                             # surface collision instead of surface collision.
                                                                             # Sector flag 0x1000 - HasCollideBox must be set when this param is used.
SOUND gen_canyon_a1.wav 1.000000             # Optional sector sound and sound volume
THRUST 0.00000000 -0.10000000 0.00000000     # Optional sector force that pushes Things in sector with move=physics in one direction.
CENTER 0.30661702 2.18407106 2.98820448      # The bounding box center
RADIUS 0.59788090                            # The bounding box radius
VERTICES 5                                   # The number of vertices in list that follows
0: 2                                         # Index of the vertex in the list of vertices
1: 1
2: 0
3: 3
4: 4
SURFACES 0 5                                 # The index of the first surface and the number of surfaces
                                             # that follow first surface and are used by sector.
```

## Section AiClass
This section defines the list of all aiclass file names (.ai) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: aiclasses referenced in templates, COGs and COG scripts.

### Structure
```
SECTION: AICLASS

World AIClasses <int> # The max number of ai files to be used by the level.
                      # The number is usually greater than the number of files in the list.

0: <file1.ai> # string ai file name.
              # The engine search for the AI file in folder Resource/misc/ai or CD1/CD2.gob
1: <file2.ai>
.
.
.
end
```

## Section Models
This section defines the list of all model file names (.3do) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: models referenced in templates, COGs and COG scripts.

### Structure
```
SECTION: MODELS

World models <int> # The max number of models to be used by the level.
                   # The number is usually greater than the number of files in the list.

0: <file1.3do> # string model file name.
               # The engine search for the 3DO file in folder Resource/3do or CD1/CD2.gob
1: <file2.3do>
.
.
.
end
```

## Section Sprites
This section defines the list of all sprite file names (.spr) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: sprites referenced in templates, COGs and COG scripts.

### Structure
```
SECTION: SPRITES

World sprites <int> # The max number of sprites to be used by the level.
                    # The number is usually greater than the number of files in the list.

0: <file1.spr> # string sprite file name.
               # The engine search for the SPR file in folder Resource/misc/spr or CD1/CD2.gob
1: <file2.spr>
.
.
.
end
```

## Section Keyframes
This section defines the list of all animation file names (.key) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: animations referenced in templates, COGs, COG scripts and puppet files.

### Structure
```
SECTION: KEYFRAMES

World keyframes <int> # The max number of keyframes to be used by the level.
                      # The number is usually greater than the number of files in the list.

0: <file1.key> # string animation file name.
               # The engine search for the KEY file in folder Resource/3do/key
1: <file2.key>
.
.
.
end
```

## Section AnimClass
This section defines the list of all puppet file names (.pup) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: puppets referenced in templates, COGs and COG scripts.

### Structure
```
SECTION: ANIMCLASS

World puppets <int> # The max number of puppets to be used by the level.
                    # The number is usually greater than the number of files in the list.

0: <file1.pup> # string puppet file name.
               # The engine search for the PUP file in folder Resource/misc/pup or CD1/CD2.gob
1: <file2.pup>
.
.
.
end
```

## Section SoundClass
This section defines the list of all sound classes file names (.snd) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: snd referenced in templates, COGs and COG scripts.

### Structure
```
SECTION: Soundclass

World soundclasses <int> # The max number of sound classes to be used by the level.
                         # The number is usually greater than the number of files in the list.

0: <file1.snd> # string sound class file name.
               # The engine search for the SND file in folder Resource/misc/snd or CD1/CD2.gob
1: <file2.snd>
.
.
.
end
```

## Section CogScripts
This section defines the list of all cog script file names (.cog) which are used in the level. They are used directly or indirectly by other level sections or game resources. i.e.: cog scripts referenced in templates, things and COGs.

### Structure
```
SECTION: cogscripts

World scripts <int> # The max number of cog scripts to be used by the level.
                    # The number is usually greater than the number of files in the list.

0: <file1.cog> # string cog script file name.
               # The engine search for the COG file in folder Resource/cog or CD1/CD2.gob
1: <file2.cog>
.
.
.
end
```

## Section Cogs
This section defines the list of all COGs which are used in the level. COGs are the level logics "brains". Each entry in the list takes COG script file name followed by the COG script parameters.
The parameters initialize the variables in the exact order as defined in the symbols section of COG script. The variables in COG script defined as `local` can't be overwritten in NDY. Note that all non-local variables must be initialized or the game won't run.

Parameter types:
* games asset file name i.e.: sounds, materials, models etc...
* index number in the level's georesource list, template list, thing list or sector number. The `-1` == null i.e. not used
* vector

### Structure
```
SECTION: cogs

World cogs <int> # The max number of COGs to be used by the level.
                 # The number is usually greater than the number of entries in the list.

0: <script1.cog> <param_1> <param_2> .... <param_N>
1: <script2.cog>
.
.
.
end
```

### An example of COG entries from 00_cyn.ndy:  
```
0: gen_MatAnim.cog gen_a4waterfall.mat 5.000000 

Assigns 'gen_a4waterfall.mat' to variable 'animma' and set variable 'fps' to '5.000000'.  

What this cog does is animate 'gen_a4waterfall.mat' material at 5 frames per second, i.e.: waterfall water animation.
```

```
11: gen_SectorThrust.cog (-0.421100/-0.762960/-0.489889) 2.000000 133 118 117 -1 -1 -1 -1 -1

Assigns vector '(-0.421100/-0.762960/-0.489889)' to variable 'vec0', sets thrust 'speed' to '2.000000'and assigns 'sector0' to sector 133, 'sector1' to sector 118, 'sector2' to sector 118, 'sector3' to sector 117, sector4-7 to -1 (not used).

This COG sets the sector thrust for up to 8 sectors.
```

```
23: cyn_snakedelay.cog 173 2107

Assigns thing 173 (snake_rattle) to variable 'snake' and surface 2107 to variable 'triggersurf'.
You can notice there are more variables in the script but all are defined as 'local', so can't be initialized in NDY file.

This COG makes the snake thing (173) to not attack player until sound 'fol_sn_hiss.wav' plays out, i.e. "warning" snake hiss sound. The COG script is triggered and plays the 'fol_sn_hiss.wav' sound when player enters/steps on the surface 2107.
```

## Section Templates
This section defines a list of templates from which the Thing level objects can be created.

### Structure
```
SECTION: TEMPLATES

World templates <int> # The max number of templates to be used by the level.
                      # The number is usually the same as the number of entries in the list.

# Name:           Based On:        Params:
<template_name> <base_template_name> <param_0> <param_2> .... <param_N>

end
```

Each template has to have a unique name. If the template doesn't inherit from base template, the base parameter is `none`.
The child template inherits all parameters from the base template and can overrides only specific parameters or none. Child templates can also inherit from other child templates. The order of declared templates is important i.e. the base template must be defined before child template.<br/><br/>There are 15 different Template types:
* Free - empty Template, used for the engine purpose
* Camera
* Actor - enemy, civilian, cutscene actors (indy)
* Weapon - weapon properties e.g.: weapon projectile
* Debris
* Item - pickup items e.g.: weapons, ammo, health kit, keys ect...
* Explosion
* Cog - level decorative objects e.g.: whip climb branch, wall ruins, wheelbarrow etc ... 
* Ghost - usually the invisible objects e.g.: camera position object, camera focus object etc...
* Corpse - dead Thing
* Player
* Particle - effects e.g.: waterfall droplets, sparks etc ...
* Hint - map hint
* Sprite - sprite object
* Polyline

Each Template defined in the list must have type other than Free or the Template is ignored.

### Name convention
Depending on the use of a template there are a few conventions used in their naming.
Template name can contain max 63 characters.
* `_<name>` - names prefixed with underscore i.e. '`_`' are used for base templates that other templates are to be inherited from and not to be used by Thing or COG script.  
*Note: If Thing is created from the base template the engine logs warning: "Warning -- create object from base-class template <template_name>"*
* `+<name>` - names prefixed with plus sign i.e. '`+`' are used for templates that are used for special effect e.g. bullet projectile, explosion etc... Other templates can inherit from this template as well. This template can be also used in cog script e.g. mine car sparks particles.
* `<name>` - non-prefixed names are used for the "end" templates which are used by Things or scripts.

### The list of parameters
Below is the table of parameters that can be used by the template and parameter types.

| Parameter | Type  | Applies To | Required additional params | Description |
|:-|:-:|:-:|:-:|:---------------------------------------|
| aiclass | string | * | / | Assigns AI file to the Thing/Template. |
| airdrag | float | * | move=`physics` | Sets Thing/Template air drag (air resistance).|
| angvel | vector | * | move=`physics` | Sets Thing/Template angular velocity.|
| attach | N/A | N/A | / | Not used |
| babytime | float | Explosion | / |The explosion time in sec before the "child" explosion blasts off.<br/>*Note: the engine also sets explosion flag 0x8 - HasChildExplosion.* |
| blasttime | float | Explosion | / | The explosion Thing blast off time in sec.<br/>*Note: the engine also sets explosion flag 0x2 - `HasBlastPhase`.* |
| buoyancy | float | * | move=`physics` | The Thing buoyancy (uplift) in the water. |
| cog | string | * | / | Assigns COG script file to the Thing/Template.<br/>*Note: the engine sets cog flags 0x40 - `Local` | 0x20 to the assigned cog and ThingFlag 0x400 - `CogLinked` to Thing flags.*|
| collheight | float | * | / | Collision height.|
| collide | int | * | / | Collision type to be used for Thing/Template object.<br /><br />0 - None<br />1 - Sphere collision<br />3 - Mesh face collision |
| collwidth | float | * | / | Collision width. |
| count | int | Particle | / | Number of particle elements to create.<br/>Max number is 256. |
| creatething | string | * | / | The template name from which a Thing is created when this Thing is created.<br/>The template name should be prefixed with '+' i.e. +<thing_name> |
| damage | float | Explosion, Weapon | / | The amount of damage the weapon/explosion inflicts.<br /><br />*Note:<br /> In case Thing is explosion the engine sets the explosion flags 0x2 - `HasBlastPhase` \| 0x4 - `DamageInBlastRadius`.<br />The weapon damage decays when weapon flag 0x4000 - `DamageDecay` is set and parameter `rate` is > 0.0.* |
| damageclass | hex_int | Explosion, Weapon | / | The weapon and explosion damage type.<br/>The damage types can be found [here](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/damage_type.h#L6-L34).<br/>*Note: in case of weapon Thing only 1 damage type can be set.* |
| debris | string | Explosion | / | Assigns the explosion debris template.<br/>Max debris per explosion is 16.<br/><br/>Example:<br/>debris=tmplt_debris_1 debris=tmplt_debris_2 debris=tmplt_debris_3 |
| elementsize | float | Particle | count | The size of each particle element. |
| explode | string | Actor, Player, Weapon | / | Assigns actor/player's or weapon's explode Template. i.e `explode=explosion_template`.<br/>The explosion thing is created from explode Template after the Thing dies/is destroyed.<br/>*Note: For Actor Thing the `0x20 - ExplodeWhenKilled` actor flag must be also set to enable explosion.* |
| expandtime | float | Explosion | / | The explosion expansion time in seconds.<br/>Applies to explosion Thing.<br/>*Note: the engine also sets the explosion flag 0x800 - `ExpandTimeSet`* |
| eyeoffset | vector | Actor | / | (Assumption) The actor model eye offset on the head. Used when other actors models are looking the actor in the eyes (e.g.: cutscene). |
| fadetime | float | Explosion | / | The explosion fade time in seconds after the explosion expansion ends.<br/>Applies to explosion Thing.<br/>*Note: the engine also sets the explosion flag 0x1000 - `FadeTimeSet`* |
| fireoffset | vector | Actor, Player | / | The weapon projectile fire start offset. |
| flashrgb | rgb_int | Explosion | / | The explosion RGB tint color.<br/>Applies to explosion Thing. |
| force | float | Explosion, Weapon | rang > 0.0 | The amount of force the explosion blast has or weapon Thing impact force.<br/><br/>The weapon Thing must have set weapon flag 0x2000 - `InstantImpact`. |
| frame | path_frame <br/>or<br/>vector | *move*=`path`<br/>or<br/>AI | numframes | The part of path movement frame.<br/><br/>In case the Thing/Template has parameter *move*=`path` the value type is `path_frame`.<br/><br/>When actor has assigned param `aiclass` the value type is `vector` i.e AI path position. In this case the param can only be used in THINGS section.<br/><br/>*Note: there can be 1 or more path frame parameters which must follow sequentially. The first **frame** parameter must be preceded by the **numframes** parameter.*<br/><br/> Usage:<br/>Path: `numframes=2 frame=(1.0/2.0/3.0:4.0/5.0/6.0) frame=(6.0/5.0/4.0:3.0/2.0/1.0)`<br/>AI path: `numframes=2 frame=(1.0/2.0/3.0) frame=(6.0/5.0/4.0)` |
| health | float | Actor, Player | / | Sets actor/player health value.<br/>*Note: If health is greater than **maxhealth**, then **maxhealth** = health* |
| height | float | * | move=`physics` | Sets Thing/Template height. |
| jumpspeed | float | Actor, Player | / | Sets actor/player's jumping speed. |
| light | rgba rgb | * | / | Defines Thing emitting light.<br />The parameter is RGBA light color followed by RGB light emit color vector with no space in-between i.e.: (R/G/B/A)(R/G/B). The RGB component is not used and can be skipped since light emit color is the same as light color. The 4th component in RGBA light color (i.e. alpha) represents alpha and min & max light radius.<br/>To use this param at least 1 RGB color component > 0.0 and alpha color component > 0.01.<br/><br/>There can be max 64 lights and lightintensity defined per camera view.<br />i.e. 64 Things in camera view can have either light or lightintensity parameter set.|
| lightintensity | rgb | Actor, Player | / | The actor/player's extra light (spot light).<br/>To use this param the `light` param must be set and actor flag `0x4 - UseLightIntensity` must be also set.<br/>The limitation for this parm is the same as param *light*.<br/>*Note: 1. Apparently this param doesn't work in NDY level format. 2. the engine also sets thing flag 0x1 - `EmitsLight`.*|
| lightoffset | vector | Actor, Player | lightintensity | Light intensity offset.<br/>*Note: the engine also sets thing flag 0x1 - `EmitsLight`.*|
| mass | float | * | move=`physics` | Sets Thing/Template mass.<br/>*Note: affects only Thing that has *** |
| material | string | Particle | / | Assigns MAT file to the particle Thing/Template.
| maxheadpitch | float | Actor, Player | / | Maximum degrees that the actor/player's head will pitch up and down. |
| maxheadvel | float | Actor, Player | / | Sets actor/player's maximum head movement velocity. |
| maxheadyaw | float | Actor, Player | / |Sets the maximum degree the actor/player's head can rotate. |
| maxhealth | float | Actor, Player| / | Sets actor/player's maximum health. |
| maxlight | float | Explosion | / | Amount of maximum explosion light.<br/>*Note: the engine also sets explosion flag 0x10 - `VariableLight`. |
| maxrotthrust | float | Actor, Player| / | Sets actor/player's maximum rotational thrust. |
| maxrotvel | float | * | move=`physics` | Maximum rotation velocity.|
| maxthrust | float | Actor, Particle, Player | Particle: range |Sets actor/player Thing maximum thrust<br/>or<br/>particle Thing rate of expansion (growth speed). |
| maxvel | float | * | move=`physics` | Maximum velocity. |
| mindamage | float | Weapon | / | Sets the minium damage the weapon will inflict. |
| minheadpitch | float | Actor, Player | / | Minimum degrees that the actor/player's head will pitch up and down. |
| minsize | float | Particle | maxthrust | Sets the minimum particle size (min radius) that the particle will start to grow from. |
| model3d | string | * | / | Assigns 3DO model file to the Thing/Template.<br/>*Note: If collide **size** or **movesize** or **collwidth** or **collheight** is not set, the engine sets **size** & **movesize** to model radius and collide w&h to **movesize***|
| move | string | * | / | Specifies the move type:<br />`none` - thing can't be moved<br />`physics`<br />`path` - thing moves on specified path. See *frame*<br /><br />*Default: `none`*
| movesize | float | *; not Actor/Player | move=`physics` | The collision area.<br/>*Note: the param is not applied to Actor/Player Thing/Template. *|
| numframes | int | move*=`path`<br/>or<br/>AI | / | The number of path **frame** parameters to follow this parameter. |
| orient | pyr | * | / | Orientation of Thing created from template. *Note: this param doesn't affect Thing created in Things section*|
| orientspeed | float | * | move=`physics` | Speed to orient thing. |
| particle | string | * | / | Assigns PAR particle file to the Thing/Template. <br/>*Note: not limited to but should be used with particle Thing/Template.*
| perflevel | int | * | / | Thing performance level.<br/>*Note: if Thing performance level is greater than global performance level, the Thing won't be created.* |
| physflags | hex_int | * | move=`physics` | Sets Thing/Template physics flags.<br/>Available flags can be found [here](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/movement/physicsinfo.h#L10-L37)|
| pitchrange | float | Particle | / | Pitch range. |
| puppet | string | * | / | Assigns PUP puppet file to the Thing/Template. |
| range | float | Explosion, Particle, Weapon | Particle: maxthrust | Weapon range<br/><br/>or<br/><br/>Explosion range<br/>*Note: the engine sets explosion flag 0x2 - `HasBlastPhase` in this case.*<br/><br/>or<br/><br/>Particle max growth radius.<br>In this case the param **maxthrust** must be set (growth speed) |
| rate | float | Particle, Weapon | Weapon: damage<bt/>Particle: count | Weapon: damage decay rate (distance).<br>Particle: num of seconds to destroy particle's elements (**count**) after particle is destroyed (**timer**). |
| respawn | float | Item | typeflags |= `RespawnSP` | Item respawn time in sec after item is picked-up.<br>The item flag 0x02 - `RespawnSP` must be set to enable respawn for the item Thing. |
| size | float | * | / | Specifies the Thing collide size area.<br />*Note: the engine also sets **movesize** to the size.* |
| soundclass | string | * | / |Assigns SND sound class file to the Thing/Template.<br />Can be `none` i.e. to override the base Template value for the Thing. |
| sprite | string | * | / | Assigns SPR sprite file to the Thing/Template.<br />Can be `none` i.e. to override the base Template value for the Thing.|
| spriteend | vector | Explosion | spritething | The explosion sprite end offset. |
| spritestart | vector | Explosion | spritething | The explosion sprite start offset. |
| spritething | string | Explosion | / | The name of the sprite Template from which the explosion sprite is created.|
| staticdrag | float | * | move=`physics` | Sets additional Thing/Template surface drag. |
| surfdrag | float | * | move=`physics` |Sets Thing/Template surface drag (traction). |
| thingflags | hex_int | * | / | Thing flags.<br/>Available flags can be found [here](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/thing.h#L30-L64) |
| timer | float | * | / |  When timer is set the Thing life span is finished when timer elapses and the thing is destroyed. |
| type |  string | * | / | Defines Thing/Template type.<br />Possible value: `free`, `camera`, `actor`, `weapon`, `debris`, `item`, `explosion`, `cog`, `ghost`, `corpse`, `player`, `particle`, `hint`, `sprite`, `polyline` |
| typeflags | hex_int | * | / | Sets type specific flags.<br/>[Actor/Player type flags](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/actor.h#L9-L34)<br/>[Explosion type flags](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/explosion.h#L13-L29)<br/>[Item type flags](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/item.h#L10-L14)<br/>[Particle type flags](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/particle.h#L10-L20)<br/>[Weapon type flags](https://github.com/smlu/ProjectMarduk/blob/fa48a05ac88429b5c6d9eb3acc1414f0a78c1827/libraries/libim/content/asset/thing/weapon.h#L9-L28) |
| userval | float | * | / | User defined value.<br/>In case of hint Thing it's the hint order sequence number to show on the map.|
| vel | vector | * | move=`physics` | Sets Thing/Template velocity. |
| voicecolor | gradient_color | Actor/Player | / | The subtittle color. |
| weapon | string | Actor, Player | / | Assigns actor/player's primary weapon Template. i.e `weapon=weapon_template` |
| yawrange | float | Particle | / | Yaw range. |

## Section Things
This section defines list of game objects in level known as Things. Each Thing is created from a Template in the list of Templates and must be positioned within the level sector.

### Structure
```
SECTION: THINGS

World things <int> # The max number of things to be used by the level.
                   # The number is usually the greater as the number of entries in the list 
                   # as it must also take into the account the Things that are created indirectly
                   # e.g. Thing created via `creatething` param.

# num    template:   name:              X: Y: Z:   Pitch: Yaw: Roll:  Sector:
<seq_no>: <template_name> <thing_name>  <position>   <orientation>   <sector_no>  <optional_params>

0: shirtplayer  shirtplayer  7.56596994 1.70158172 0.09226999 0.00000000 130.01022339 0.00000000 452
1: spider       spider       4.68325996 -2.17725992 0.96398002 0.00000000 0.00000000 0.00000000 488 thingflags=0x4C0  health=50.000000 maxhealth=50.000000

end

seq_no - Thing sequence number in list
template_name - the name of Template from which the Thing is created.
thing_name - Thing name. Max 63 characters.
position - x,y,z position
orientation - pitch,yaw,roll orientation in degrees
sector_no - the sector number the Thing is positioned in.
optional_params - optional parameters which override Template values.
```

## Section PVS
Section defines potentially visible sets data structure for level's sectors.
This section is not necessary and can be omitted.

### Structure
```
SECTION: PVS

PVS size: <int> # The size of PVS list

0x010101B3 0x02020002 0x00050002 0x03050505 0x03050003 0x00040402 0x09070704 0x08080000 0x09000009 0x00060604 0x0C0D0C00 0x0E000E00 0x0D0F000E 0x0F92000F 0x00000C0F 0x0010000D
0x10100010 0x10111100 0x90001100 0x97180013 0x04970010 0x03000404 0x00030300 0x0A97011A 0x0B060007 0x07050006 0x0C050000 0x0A0A0005 0x000A0B00 0x010C000D 0x00101085 0x000F110F

.
.
.

# --- Sectors PVS idx ---
0x0
0x257
0x4BC
0x73F
0x9F8
0xCAC
0xF17
0x1175
0x1365
0x1598
0x177F
0x1952
0x1ADE
0x1CAE
0x1E46
.
.
.
```
