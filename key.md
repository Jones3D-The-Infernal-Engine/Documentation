# KEY file
 KEY file (short for Keyframe file) defines various animations of the mesh joint nodes of associated 3DO model. To edit KEY animations use [Sith](https://github.com/smlu/blender-sith) addon for Blender.

## KEY file sections
 - [HEADER](#header)
 - [MARKERS](#markers)
 - [KEYFRAME NODES](#keyframe-nodes)

## HEADER
Required section. It defines basic animation properties:
 - FLAGS  
  Defines [puppet track flags](pup.md#pup-flags). Probably not used in the game.

 - <a id="key-type"></a> TYPE  
  Defines [puppet high priority](pup.md#pup-high-pri) 3DO node types. By default all 3DO joint nodes have low priority assigned in the puppet file (.pup), if the node type is defined here then it will have high priority value assigned. Set this field to `0xFFFF` if all nodes should have high priority assigned.

 - FRAMES  
  The number of animation frames there are defined in this file aka length of this animation.

 - FPS  
  Frames per second. How many frames  should be played per second.

 - JOINTS  
  The number of mesh joint nodes associated 3DO model has. Max 64.

## MARKERS
This section defines frame markers aka frame types. The frame markers are used to produce special fx when the frame is played. For example, if the player walk animation contains frame marker `1 - LeftFoot` it will produce surface walk sound fx (depending on the type of surface player walk on) when that frame is played. The played marker is also send to the game object's COG script via [callback](cog.md#message-callback) message.  
There can be ad max 16 markers. There are 35 known marker types you can see them below.   
This section is not mandatory and can be omitted.

Example:
```
    SECTION: MARKERS 2

    7.000000 8 // 7 is frame number; 8 is marker type
    18.000000 9
```

### Marker Types
| Marker Type | Name | Additional Info |
|-------------|-------|-------------|
| 0 | Default               | |
| 1 | LeftFoot              | |
| 2 | RightFoot             | |
| 3 | Attack                | |
| 4 | Swing                 | |
| 5 | SwingFinish           | |
| 6 | SwimLeft              | |
| 7 | Tread                 | water treading |
| 8 | RunLeftFoot           | |
| 9 | RunRightFoot          | |
| 10 | Died                 | |
| 11 | Jump                 | |
| 12 | JumpUp               | |
| 13 | SwimRight            | |
| 14 | Duck                 | |
| 15 | Climb                | |
| 16 | Activate             | |
| 17 | Crawl                | maybe crouch |
| 18 | RunJumpLand          | |
| 19 | ActivateRightArm     | |
| 20 | ActivateRightArmRest | |
| 21 | PlaceRightArm        | |
| 22 | PlaceRightArmRest    | |
| 23 | ReachRightArm        | |
| 24 | ReachRightArmRest    | |
| 25 | Pickup               | |
| 26 | Drop                 | |
| 27 | Move                 | |
| 28 | InventoryPull        | |
| 29 | InventoryPut         | |
| 30 | AttackFinish         | |
| 31 | TurnOff              | |
| 32 | Unknown_32           | raft |
| 33 | Unknown_33           | raft |
| 34 | LeftHand             | indy snd fx climbhandleft |
| 35 | RightHand            | indy snd fx climbhandright |

## KEYFRAME NODES
This section defines animation frames for 3DO joint nodes.
The section defined as list of 3DO node joints which have assigned list of animation frames, i.e.: list of position & orientation for the joint node at specific animation frame.

Structure:
```
NODES <N> // Number of joint nodes to be animated

// Followed by the joint node entries.
// Each node entry has defined:
NODE <3DO_HNODE_IDX> // The index number of joint node in the 3DO hierarchy list
MESH NAME <name>     // 3DO mesh name
ENTRIES <N>          // Number of animation frames in the list

// List of animation frames
# num:   frame:   flags:           x:           y:           z:           p:           y:           r:
#                                 dx:          dy:          dz:          dp:          dy:          dr:
   0:        0   0x0003   0.00000000   0.00000000   0.00037000   0.00000000   0.00000000  -0.20175013
                          0.00000000   0.00000000   0.00061000   0.00000000   0.00000000  -0.30003664
   1:        3   0x0003   0.00000000   0.00000000   0.00220000   0.00000000   0.00000000  -1.10186010
                          0.00000000   0.00000000  -0.00257333   0.00000000   0.00000000  -0.30001831

*Note: The `flags` represents what has changed since previous frame. i.e. 0x00 - Nothing changed, 0x01 - position changed, 0x02 - orientation changed.
```