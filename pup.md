# Puppet file

Puppet file (`.pup`) defines object movement animations. It denotes which [KEY](key.md) animation file is to be played depending on an objects current puppet state (i.e.: unarmed-standing, unarmed-walking, armed-firing, swimming-with weapon etc...). The file is divided into two parts: [modes](#mode) aka puppet base state and the [joints](#joint). With mode part containing list of sub-mode tracks aka puppet state animations.

# Mode
 ## Content
 - [Mode Types](#mode-types)
 - [Sub-mode List](#sub-mode-list)

The puppet mode aka major mode describes the base object state upon which the list of sub-mode or object sub-state animation tracks is defined.  
There are 24 base modes in the Infernal Machine. Each mode defines object basic state e.g.: unarmed, armed with specific weapon, underwater, underwater with specific weapon, unarmed crawling etc...  
Of the 24 base modes internally engine categorizes them into 2 groups:
 - <a name="pup-move-modes"></a>3 Move Modes: 0 - Normal, 1 - Swimming, 2 - Crawl
 - <a id="pup-armed-modes"></a>8 Armed Modes: 
   * 0 - Weapon 1
   * 1 - Weapon 2
   * 2 - Weapon 3
   * 3 - Weapon 4
   * 4 - Weapon 5
   * 5 - Weapon 6
   * 6 - Weapon 7
   * 7 - Weapon 8

Each Mode contains up to 83 sub-modes aka puppet animation tracks. A puppet track defines specific animation for the puppet base state and sub-state the object is in, e.g.: unarmed-walking, armed-running, armed-walking back, unarmed-died, armed-activate etc... Not all sub-modes has to be defined for specific puppet mode, and each mode can inherit from previous mode (i.e. can be based on previous puppet mode).

Structure:
```
Mode=<type_number>, basedOn=<parent_type_number>

Followed by list of puppet sub-mode tracks
```

## Mode Types
| Mode number | Group      | Description                                              |
|-------------|------------|----------------------------------------------------------|
| 0           | Move Mode  | Unarmed                                                  |
| 1           | Armed Mode | Weapon 1 <br> e.g.: Indy has whip drawn                  |
| 2           | Armed Mode | Weapon 2 <br> e.g.: Indy has pistol drawn                |
| 3           | Armed Mode | Weapon 3 <br> e.g.: Indy has rifle drawn                 |
| 4           | Armed Mode | Weapon 4 <br> e.g.: Indy has shotgun drawn               |
| 5           | Armed Mode | Weapon 5 <br> e.g.: Indy has bazooka drawn               |
| 6           | Armed Mode | Weapon 6 <br> e.g.: Indy has grenade drawn               |
| 7           | Armed Mode | Weapon 7 <br> e.g.: Indy has machete drawn               |
| 8           | Move Mode  | Unarmed swimming                                         |
| 9           | Armed Mode | Swim with weapon 1 <br> e.g.: Indy swimming with whip    |
| 10          | Armed Mode | Swim with weapon 2 <br> e.g.: Indy swimming with pistol  |
| 11          | Armed Mode | Swim with weapon 3 <br> e.g.: Indy swimming with rifle   |
| 12          | Armed Mode | Swim with weapon 4 <br> e.g.: Indy swimming with shotgun |
| 13          | Armed Mode | Swim with weapon 5 <br> e.g.: Indy swimming with bazooka |
| 14          | Armed Mode | Swim with weapon 6 <br> e.g.: Indy swimming with grenade |
| 15          | Armed Mode | Swim with weapon 7 <br> e.g.: Indy swimming with machete |
| 16          | Move Mode  | Unarmed crawling                                         |
| 17          | Armed Mode | Crawl with weapon 1                                      |
| 18          | Armed Mode | Crawl with weapon 2                                      |
| 19          | Armed Mode | Crawl with weapon 3                                      |
| 20          | Armed Mode | Crawl with weapon 4                                      |
| 21          | Armed Mode | Crawl with weapon 5                                      |
| 22          | Armed Mode | Crawl with weapon 6                                      |
| 23          | Armed Mode | Crawl with weapon 7                                      |
 
## Sub-mode List
The sub-mode list defines animation tracks that the engine will use when object is in specific state. There are 83 sub-modes of different puppet states that engine can use. Each sub-mode track contains the state name followed by the keyframe file, track play option flags and high/low animation priority values of the 3DO joint node.

The engine can simultaneously play up to 8 tracks. Which animation of 3DO model joint is played from which track is defined by low and high priority value of the puppet tracks. The higher priority the track has the more chances it is that the animations of it's priority nodes will be played. The high priority nodes are defined by the [type header property](key.md#key-type) in keyframe file. The value of high priority has to be greater than lower priority for at least 2 or the character animations will be half interpolated between the low and high priority nodes.  
By default any track will loop indefinitely if not specified otherwise by track [flags](#pup-flags).

Structure:
```
<sub_mode_name> <keyframe_file>.key  <flags>  <low_pri>  <high_pri>  # Some description
```

**sub_mode_name**: The text name of the sub-mode puppet state, e.g.: `stand`. See [sub-mode state table](#sub-mode-state-table) for all possible states.

**keyframe_file**: The animation Keyframe file (.key) which is played when object is in this state.

**<a id="pup-flags"></a>flags**: Track play options.

| Hex Value  | Name                                | Description                                                                                                                               |
|:-----------|:------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| 0x01       | Puppet controlled                   | Animation is controlled by movement of puppet game object, and played at speed of the puppet movement. Keyframe's FPS is not used.        |
| 0x02       | No loop                             | Don't loop track and finish playing track after the last animation frame.                                                                 |
| 0x04       | Pause on last frame                 | Pause track on the last animation frame.                                                                                                  |
| 0x08       | Restart active                      | Restart existing active track with the same keyframe. Probably useful for tracks with `0x04` flag set.                                    |
| 0x10       | Disable fade-in                     | Disable linear interpolation fade-in for the track animation.                                                                             |
| 0x20       | Fade-out & No loop                  | Linear interpolation fade-out for the track animation and finish playing track after the last frame.<br>Ignores flags: `0x10` and `0x04`. |
| 0x40       | Set position to last frame position | When an animation finishes playing the new position of the animated game object will be set to the location of the last animation frame. Required for all animations to be used for force move. |

**<a id="pup-low-pri"></a> low_pri**: Defines the low animation priority value.

**<a id="pup-high-pri"></a>high_pri**: Defines the high animation priority value. The high priority nodes are defined by the [type header property](key.md#key-type) in the keyframe file.

### Sub-Mode State Table
The table defines all possible sub-mode states aka puppet movements with their ID number.
| Name              | Sub-Mode Number   | Additional Info |
|:------------------|:-----------------:| --------------- |
| stand             | 1                 |                 |
| walk              | 2                 |                 |
| run               | 3                 |                 |
| walkback          | 4                 |                 |
| hopback           | 5                 |                 |
| hopleft           | 6                 |                 |
| hopright          | 7                 |                 |
| strafeleft        | 8                 |                 |
| straferight       | 9                 |                 |
| turnleft          | 10                |                 |
| turnright         | 11                |                 |
| slidedownfwd      | 12                |                 |
| slidedownback     | 13                |                 |
| leap              | 14                |                 |
| jumpready         | 15                |                 |
| jumpup            | 16                |                 |
| jumpfwd           | 17                |                 |
| rising            | 18                |                 |
| fall              | 19                |                 |
| death             | 20                |                 |
| death2            | 21                |                 |
| fidget            | 22                |                 |
| fidget2           | 23                |                 |
| pickup            | 24                |                 |
| pushpullready     | 25                |                 |
| pushitem          | 26                |                 |
| pullitem          | 27                |                 |
| mountledge        | 28                |                 |
| grabledge         | 29                |                 |
| hangledge         | 30                |                 |
| hangshimleft      | 31                |                 |
| hangshimright     | 32                |                 |
| mountwall         | 33                |                 |
| climbwallidle     | 34                |                 |
| climbwallup       | 35                |                 |
| climbwalldown     | 36                |                 |
| climbwallleft     | 37                |                 |
| climbwallright    | 38                |                 |
| climbpullingup    | 39                |                 |
| whipclimbmount    | 40                |                 |
| whipclimbidle     | 41                |                 |
| whipclimbup       | 42                |                 |
| whipclimbdown     | 43                |                 |
| whipclimbleft     | 44                |                 |
| whipclimbright    | 45                |                 |
| whipclimbdismount | 46                |                 |
| whipswingmount    | 47                |                 |
| whipswing         | 48                |                 |
| mountfromwater    | 49                |                 |
| divefromsurface   | 50                |                 |
| mount1mstep       | 51                |                 |
| mount2mledge      | 52                |                 |
| jumprollback      | 53                |                 |
| jumprollfwd       | 54                |                 |
| land              | 55                |                 |
| hitheadl          | 56                |                 |
| hitheadr          | 57                |                 |
| hitsidel          | 58                |                 |
| hitsider          | 59                |                 |
| activate          | 60                |                 |
| activatehigh      | 61                |                 |
| drawweapon        | 62                |                 |
| aimweapon         | 63                |                 |
| holsterweapon     | 64                |                 |
| fire              | 65                |                 |
| fire2             | 66                |                 |
| fire3             | 67                |                 |
| fire4             | 68                | un-aim weapon   |
| stand2walk        | 69                |                 |
| walk2stand        | 70                |                 |
| stand2crawl       | 71                |                 |
| crawl2stand       | 72                |                 |
| walk2attack       | 73                |                 |
| victory           | 74                |                 |
| hit               | 75                |                 |
| hit2              | 76                |                 |
| grabarms          | 77                |                 |
| reserved          | 78                |                 |
| climbtoclimb      | 79                |                 |
| climbtohang       | 80                |                 |
| leapleft          | 81                |                 |
| leapright         | 82                |                 |
| fallforward       | 83                |                 |

# Joints
This part defines joints for humanoid puppet. It can be omitted for non-humanoid puppets. What it does is assigning puppet joint type to the hierarchy mesh node number of the puppet 3DO model. The engine uses up to 10 joints.

Structure:
```
Joints
<joint_type>=<3DO_node_number>
...
```

| Joint type | Description                                    |
|------------|------------------------------------------------|
| 0          | Head joint                                     |
| 1          | Neck joint                                     |
| 2          | Hip joint                                      |
| 3          | Firing joint 1                                 |
| 4          | Firing joint 2                                 |
| 5          | Aiming joint 1                                 |
| 6          | Aiming joint 2                                 |
| 7          | Unknown joint 1. *JKDF2 aim pitch (tur1.pup).* |
| 8          | Unknown joint 2. *JKDF2 aim yaw (tur1.pup).*   |
| 9          | Unknown joint 3. *JKDF2 maybe aim roll.*       |
