# COG Script
> :warning: **Work in progress!**
## Content
- [COG SymbolReferenceType](#cog-symbolreferencetype)
- [COG Messages](#cog-messages)
- [COG Functions](#cog-functions)

## COG SymbolReferenceType
| Type   | Value |
|----------|-------------:|
| COG_SYM_REF_NONE | 0x0 |
|  COG_SYM_REF_INT | 0x1 |
|  COG_SYM_REF_FLEX | 0x2 |
|  COG_SYM_REF_THING |0x3 |
|  COG_SYM_REF_TEMPLATE | 0x4 |
|  COG_SYM_REF_SECTOR  | 0x5 |
|  COG_SYM_REF_SURFACE | 0x6
|  COG_SYM_REF_KEYFRAME| 0x7 |
|  COG_SYM_REF_SOUND  | 0x8 |
|  COG_SYM_REF_COG | 0x9 |
|  COG_SYM_REF_MATERIAL | 0xA |
|  COG_SYM_REF_VECTOR | 0xB |
|  COG_SYM_REF_MODEL | 0xC |
|  COG_SYM_REF_AICLASS | 0xD |

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
| SenderType | [SymbolReferenceType](#cog-symbolreferencetype) | GetSenderType | The type of the sender which sent the message |
| Sender | SymbolType | GetSenderRef | The sender which sent the message<br/>e.g.: Sector, Surface, Actor, Player |
| SenderLinkId | `int` | GetSenderID | The link ID of the sender. (e.g.: set with `linkid` param at sender variable declaration) |
| SourceType | [SymbolReferenceType](#cog-symbolreferencetype) | GetSourceType | The type of the source which initiate the sent message |
 Source | SymbolType | GetSourceRef | The source which initiate the sent message<br/>e.g.: Player is source which step on the surface = sender which sent COG message |
| Param0 | Any Type | GetParam(0) | Message extra parameter 0 |
| Param1 | Any Type | GetParam(1) | Message extra parameter 1 |
| Param2 | Any Type | GetParam(2) | Message extra parameter 2 |
| Param3 | Any Type | GetParam(3) | Message extra parameter 3 |


### There are 48 predefined COG messages:
 * activate
 * activated
 * aievent params: p0 = aiEventType, p1 = currentState, p2 =   oldState. eg.: aiEventType = 0x100 (aiModeChanged), p1= newMode, p2 = oldMode
 * aim
 * arrived
 * arrivedwpnt
 * blocked
 * boarded
 * callback
 * changed
 * [created](#message-initialized)
 * crossed
 * damaged     sender: victim src: perpetrator params: p0 = damageValue p1= damageType
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
 * missed   sender: victim src: perpetrator params: p0 = damageValue p1= damageType
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

### Message: created
| Param   | Value |
|----------|:-------------:|
| senderType | COG_SYM_REF_THING |
| sender | Thing that was created |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 ... Param3 | 0 |

Sent by the engine to the Thing COG script after Thing was created from the Template.  
Note, message is sent only when the engine is not in developer mode (debugMode & 0x100 [dev] == 0).

### Message: initialized
| Param   | Value |
|----------|:-------------:|
| senderType | COG_SYM_REF_THING |
| sender | Thing that was initialized |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 ... Param3 | 0 |

Sent by the engine to the Thing COG script after Thing was initialized.  
Note, message is sent only when the engine is not in developer mode (debugMode & 0x100 [dev] == 0).

### Message: removed
| Param   | Value |
|----------|:-------------:|
| senderType | COG_SYM_REF_THING |
| sender | Thing which is removed |
| sourceType | COG_SYM_REF_NONE |
| source | 0 |
| Param0 ... Param3 | 0 |

Sent to COG script of the Thing being removed from the game and to the COG script that captured the Thing by the game engine when the Thing is destroyed/killed.

### Message: user0
User defined message no. 0.

**Sent by the game engine**:
  * Sent to `weap_whip.cog` script by whip Thing object indicating that the whip swing mode has started..
    | Param   | Value |
    |----------|:-------------:|
    | senderType | COG_SYM_REF_THING |
    | sender | "hip Thing |
    | sourceType | COG_SYM_REF_THING |
    | source | Player Thing |
    | Param0 ... Param3 | 0 |

### Message: user2
User defined message no. 2.

**Sent by the game engine**:
  * When COG function [StartCutscene](#startcutscene-int-type-) is called `user2` message is sent to the player Thing. The player is invulnerable during the cutscene.
    | Param   | Value |
    |----------|:-------------:|
    | senderType | COG_SYM_REF_THING |
    | sender | Player Thing |
    | sourceType | COG_SYM_REF_NONE |
    | source | 0 |
    | Param0 ... Param3 | 0 |



## COG Functions
## System Cog functions
### StartCutscene( int type )
[Thing Cog functions](cog/thing.md)  
[Weapon Cog functions](cog/weapon.md)
