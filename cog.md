# COG Script
> :warning: **Work in progress!**

COG script is a script language used in the game to define game logic. Scripts are written in files with a`.cog` extension, which are loaded and compiled to bytecode by the game engine. The resulting bytecode is then executed by the engine. COG scripts can be attached to game objects (such as Things, Actors, etc.) in the [template section](ndy.md#section-templates) or set as part of the level [COG system](ndy.md#section-cogs).

## Content
- [File Structure](#file-structure)
- [COG Symbol Type](#cog-symbol-type)
- [COG Symbol Reference Type](#cog-symbol-reference-type)
- [COG Symbol Attributes](#cog-symbol-attributes)
- [COG Messages](#cog-messages)
- [COG Host Functions](#cog-host-functions)

## File Structure
The script file is divided into two sections: symbols and code, each of which is ended with the `end` keyword. The `symbols` section defines the script variables and the `code` section defines script code.

Example:
```
symbols
  message startup
  message entered
  
  int a = 1  
  material mat = material.mat local
  surface surf
  sector surfSector nolink local
  thing player local
end

code
  startup:
    player = GetLocalPlayerThing();
    sector = GetSurfaceSector(surf);
    return;

  entered:
    # If player stepped on the surface, damage him
    if (GetSenderRef() == surf)
    {
      DamageThing(player, 100, 0x01, -1); # 0x01 is impact damage type
    }
    return;
end
```

### Symbols Section
The `symbols` section defines the script variables. Each variable is defined on a separate line. The variable type is defined by the first keyword, followed by the variable name, optional initialization value, and symbol attributes. 

```
<type> <name> = <value> <attributes>
```

#### COG Symbol Type
The variable type can be one of the following:
| Type | Value | Description |
|----------|-------------|-------------|
| ai | `.ai` filename | AI class |
| cog | index in COG list | Level COG | 
| flex | integer  or float|  Decimal number or script function |
| float | float | Decimal number |
| int | int | Integer number |
| keyframe | KEY filename | Keyframe animation |
| material | MAT filename | Texture material |
| message | none | Special symbol type which defines event message. The name must be one of the 48 predefined messages. See [COG Messages section](#cog-messages). This type also can't have value and attributes set.  |
| model | 3DO filename | 3D model |
| sector | index in sector list | Level sector |
| sound | WAV filename | Sound file |
| sprite | SPR filename | Sprite file |
| surface | index in surface list | Level surface |
| vector | (x/y/z) | Vector type |
| template | template name | Game object template |
| thing | index in the thing list| Game object |

*Note, all index values (e.g. for COG, sector, surface, thing) are usually defined by the level where COG script is used.*

#### COG Symbol Reference Type
Internal value of each symbol type is defined as fixed number. This number is retrieved in the script code for example by calling `GetSenderType` or `GetSourceType`. The following table defines the type values:
| Type   | Value |
|----------|-------------:|
| COG_SYM_REF_NONE | 0 |
| COG_SYM_REF_INT | 1 |
| COG_SYM_REF_FLEX | 2 |
| COG_SYM_REF_THING | 3 |
| COG_SYM_REF_TEMPLATE | 4 |
| COG_SYM_REF_SECTOR  | 5 |
| COG_SYM_REF_SURFACE | 6
| COG_SYM_REF_KEYFRAME| 7 |
| COG_SYM_REF_SOUND  | 8 |
| COG_SYM_REF_COG | 9 |
| COG_SYM_REF_MATERIAL | 10 |
| COG_SYM_REF_VECTOR | 11 |
| COG_SYM_REF_MODEL | 12 |
| COG_SYM_REF_AICLASS | 13 |

#### COG Symbol Attributes
All attributes are optional and can be omitted when defining the variable. The attribute can't be set for the `message` type.

The following attributes are available:
| Attribute | Symbol Type | Description |
|----------|-------------|-------------|
| desc | all | The variable description. This attribute is used by level editor. |
| linkid | non-arithmetic | The variable link ID refers to an identifier that can be assigned to variables. This ID can then be retrieved in the script code by calling the host function `GetSenderId`. The link ID is useful for grouping variables that would trigger the same code logic.<br><br>For example, instead of checking if the sender is one of the surface: ```if( GetSenderRef() == surf1 or GetSenderRef() == surf2 ) ``` you could assign the same link ID, e.g.: 2 to those surfaces and refactor code to: `if ( GetSenderId() == 2 )` <br><br>If link ID is not set the default value is 0. Setting link ID to less than 0 i.e. -1 will not link the symbol to script. The same `nolink` attribute. |
| local | all | The variable is local to the script and it can't be initialized from the level file. |
| mask | non-arithmetic | The mask defines which game object types (see [Thing type](ndy.md#thing-type)) trigger the message event for the variable in the script. What that means is that when an object of the specified type interacts with the object that the variable references, a specific message will be sent to the script with the masked object as the source and the referenced object as the sender. For example, if a variable named `surf` has a mask set for the Player type, and a player activates the referenced object, the message `activated` will be sent to the script with the player as the source and the `surf` object as the sender. <br><br>The mask value is hexadecimal number where each bit represents one game object type. To achieve this, each game type needs to be converted to a power of 2. For example, the player type mask would be represented as 0x400 = 2^10.<br>By default, every variable is set with a mask of `0x401`, which corresponds to the Player & Free object mask. The mask for the free object type is used when there is no source trigger object.|
| nolink | non-arithmetic | The variable is not linked to the script, i.e. it won't trigger any event message in the script.  |

*Note, non-arithmetic symbols are: ai, cog, keyframe, material, model, sector, sound, sprite, surface, template, thing.*

## COG Messages
COG message is the core of COG script logic, here the COG script code is written. Each COG message section begins with message name followed by colon (':') and ends with return statement e.g.: `return;`.
e.g.:
```C
somemessage:
  ... message code ...
  return;
```
Each message is called with following parameters:
| Param | Type | Retrieve Function| Description |
|------------|:----:|:-------------:|:-------------:|
| SenderType | [Symbol Reference Type](#cog-symbol-reference-type) | GetSenderType | The type of the sender which sent the message |
| Sender | SymbolType | GetSenderRef | The sender which sent the message<br/>e.g.: Sector, Surface, Actor, Player |
| SenderLinkId | `int` | GetSenderID | The link ID of the sender. (e.g.: set with `linkid` param at sender variable declaration) |
| SourceType | [Symbol Reference Type](#cog-symbol-reference-type) | GetSourceType | The type of the source which initiate the sent message |
 Source | SymbolType | GetSourceRef | The source which initiate the sent message<br/>e.g.: Player is source which step on the surface = sender which sent COG message |
| Param0 | Any Type | GetParam(0) | Message extra parameter 0 |
| Param1 | Any Type | GetParam(1) | Message extra parameter 1 |
| Param2 | Any Type | GetParam(2) | Message extra parameter 2 |
| Param3 | Any Type | GetParam(3) | Message extra parameter 3 |


### There are 48 predefined COG messages:
 * activate
 * activated
 * aievent params: p0 = aiEventType, p1 = current AI mode, p2 = depends on aiEventType. eg.: aiEventType = 0x100 (aiModeChanged), p1= oldMode, p2 = newMode
 * aim
 * arrived
 * arrivedwpnt
 * blocked
 * boarded
 * [callback](#message-callback)
 * changed
 * [created](#message-created)
 * crossed
 * [damaged](#message-damaged)
 * deactivated
 * deselected
 * entered
 * exited
 * fire
 * [initialized](#message-initialized)
 * join
 * killed
 * leave
 * loading
 * missed   sender: projectile weapon src: shooter params: p0 = damageValue p1= damageType
 * newplayer
 * pulse
 * [removed](#message-removed)
 * respawn
 * selected
 * shutdown
 * sighted
 * splash     when entering/exiting water
 * startup
 * statechange
 * taken
 * timer
 * touched
 * trigger
 * unboarded
 * updatewpnts
 * [user0](#message-user0)
 * user1
 * [user2](#message-user2)
 * user3 // when cutscene ends
 * user4
 * user5
 * user6
 * user7

### Message: damaged
Message is received when sender is damaged.

| Param   | Value |
|----------|:-------------|
| senderType | COG_SYM_REF_SECTOR \| COG_SYM_REF_SURFACE \| COG_SYM_REF_THING |
| sender | Victim Thing object or damaged surface/sector |
| sourceType | COG_SYM_REF_THING |
| source | Source thing object that caused the damage |
| Param0 | The amount of damage to be inflicted |
| Param1 | The [damage class type](flags.md#damage-class-flags)|
| Param2-Param3 | 0 - not used |
|Return (Optional) | In case victim is thing object, the return value can be set to override the damage amount to be actually inflicted. In this case if return value is 0 or less, no damage is inflicted. |

Note, in some cases the sender and source thing objects can be the same object, e.g.: Object hitting floor surface or object from height, actor drowning, raft actor punctured leak damage, IM part damage, etc.

### Message: callback
Message is sent by game engine to Thing COG script when [puppet submode](pup.md#sub-mode-list) keyframe plays specific frame with [key marker](key.md#markers).

| Param   | Value |
|----------|:-------------|
| senderType | COG_SYM_REF_THING |
| sender | Thing object for which the played puppet submode keyframe produced this event message |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 | Played track slot num of puppet submode which produced this event message |
| Param1 | [Key marker type](key.md#marker-types) which produced this event message |
| Param2-Param3 | 0 - not used | 


This event message is sent for these key marker types when actor is not in push/pull move state:
  - 16 - Activate          - Note, also sent when activate to board/disembark raft.
  - 21 - PlaceRightArm     - Note, also sent at the end of disembarking raft animation.
  - 22 - PlaceRightArmRest - Note, also sent at the end of boarding raft animation.
  - 23 - ReachRightArm
  - 24 - ReachRightArmRest
  - 25 - Pickup
  - 26 - Drop
  - 28 - InventoryPull
  - 29 - InventoryPut
  - 30 - AttackFinish - Note, also sent at the end of boarding/disembarking raft animation.
  - 31 - TurnOff

### Message: created
Message is sent by game engine to Thing COG script after Thing object was created.

| Param   | Value |
|----------|:-------------|
| senderType | COG_SYM_REF_THING |
| sender | Thing for which the puppet submode is being played |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 ... Param3 | 0 |

Note, message is sent only when the engine is not in developer mode (debugMode & 0x100 [INEDITOR] == 0).

### Message: initialized
Message is sent by  game engine to Thing COG script after Thing object was initialized.

| Param   | Value |
|----------|:-------------|
| senderType | COG_SYM_REF_THING |
| sender | Thing that was initialized |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 ... Param3 | 0 |

Note, message is sent only when the engine is not in developer mode (debugMode & 0x100 [INEDITOR] == 0).

### Message: removed
Message is sent by game engine to Thing COG script and COG script which captured Thing when the Thing object is removed from the game.

| Param   | Value |
|----------|:-------------|
| senderType | COG_SYM_REF_THING |
| sender | Thing which is removed |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 ... Param3 | 0 |

### Message: user0
User defined message no. 0.

**Sent by the game engine**:
  * Sent to `weap_whip.cog` script by whip Thing object indicating that the whip swing mode has started..
| Param   | Value |
|----------|:-------------|
| senderType | COG_SYM_REF_THING |
| sender | Whip Thing |
| sourceType | COG_SYM_REF_THING |
| source | Player Thing |
| Param0 ... Param3 | 0 |

### Message: user2
User defined message no. 2.

**Sent by the game engine**:
  * When COG function [StartCutscene](#startcutscene-int-type-) is called `user2` message is sent to the player Thing. The player is invulnerable during the cutscene.
    | Param   | Value |
    |----------|:-------------|
    | senderType | COG_SYM_REF_THING |
    | sender | Player Thing |
    | sourceType | COG_SYM_REF_NONE |
    | source | 0 |
    | Param0 ... Param3 | 0 |

## COG Host Functions
## System Cog functions
### StartCutscene( int type )
[Thing Cog functions](cog/thing.md)  
[Weapon Cog functions](cog/weapon.md)
