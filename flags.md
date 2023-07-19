Table of contents:
- [Actor Flags](#actor-flags)
- [Adjoin Flags](#adjoin-flags)
- [AI Mode](#ai-mode)
- [AI SubMode](#ai-submode)
- [Cog Flags](#cog-flags)
- [Collide type](#collide-type)
- [Damage Class Flags](#damage-class-flags)
- [Debug Flags](#debug-flags)
- [Explosion Flags](#explosion-flags)
- [Face Type Flags](#face-type-flags)
- [Geometry Mode](#geometry-mode)
- [Item Flags](#item-flags)
- [Lighting Mode](#lighting-mode)
- [Particle Flags](#particle-flags)
- [Physics Flags](#physics-flags)
- [Sector Flags](#sector-flags)
- [Sound Play Flags](#sound-play-flags)
- [Surface Flags](#surface-flags)
- [Thing Flags](#thing-flags)
- [Weapon Flags](#weapon-flags)

## Actor Flags
Thing type flags for Thing object of type Actor or Player.

| Value                   | Applicable To  | Description                                                                                      |
|-------------------------|----------------|--------------------------------------------------------------------------------------------------|
| 0x1                     | Actor & Player | Actor can rotate its head                                                                        |
| 0x2                     | Actor & Player | Actor's view is centered (engine)                                                                |
| 0x4                     | Actor & Player | Actor has a headlight                                                                            |
| 0x8                     | Actor & Player | Actor is invulnerable                                                                            |
| 0x10                    | Actor & Player | Actor's view is centered (engine)                                                                |
| 0x20                    | Actor          | Actor explodes when killed                                                                       |
| 0x40                    | Actor & Player | Actor can breathe underwater                                                                     |
| 0x80                    | Actor & Player | Actor is invisible to other actors                                                               |
| 0x100                   | Actor & Player | Actor is a droid                                                                                 |
| 0x200                   | Actor          | Actor is a boss                                                                                  |
| 0x400                   | Actor          | Actor is deaf                                                                                    |
| 0x800                   | Actor          | Actor is blind                                                                                   |
| 0x1000                  | Actor          | Actor can see through wall and see invisible objects                                             |
| 0x2000                  | Player         | Actor is poisoned (poisoned HUD is rendered)                                                     |
| 0x4000                  | Actor & Player | Actor moves 15% fast                                                                             |
| 0x8000                  | Actor & Player | Actor moves 10% fast                                                                             |
| 0x10000                 | Actor          | Actor can't move onto slopes (e.g.: if jumps on slope it will slide down the slope)              |
| 0x20000                 | Actor          | Actor has delayed fire                                                                           |
| 0x40000                 | Actor & Player | Actor is immobile                                                                                |
| 0x80000                 | Actor          | Actor can't fire underwater                                                                      |
| 0x100000                | Actor & Player | Actor can't be targeted                                                                          |
| 0x200000                | Player         | Actor's controls are disabled                                                                    |
| 0x400000                | Player         | Actor is killed by falling into fall death sector (engine)                                       |
| 0x800000                | Actor & Player | Idle camera is disabled for external camera (camera no. 1)                                       |
| 0x1000000               | Actor & Player | Actor receives full damage from weapon projectiles and explosions (default half the fire damage) |
| 0x2000000               | Actor          | Actor can see in the dark                                                                        |
| 0x4000000               | Unknown        | Unknown                                                                                          |
| 0x8000000               | Actor & Player | Actor is human                                                                                   |
| 0x10000000              | Actor          | Actor moves like aircraft                                                                        |
| 0x20000000              | Unknown        | Unknown                                                                                          |
| 0x40000000              | Player         | Actor has an electric whip                                                                       |
| 0x80000000              | Actor          | Actor is an arachnid e.g.: spider, scorpion etc...                                               |

## Adjoin Flags
| Value      | Description                                                    |
|------------|----------------------------------------------------------------|
| 0x1        | Adjoin is visible                                              |
| 0x2        | Adjoin is passable, i.e.: thing object can move through adjoin |
| 0x4        | Reserved (JKDF - Allows sound to pass)                         |
| 0x8        | Adjoin blocks AI actor movement                                |
| 0x10       | Adjoin blocks player movement                                  |
| 0x20       | Adjoin is disabled by sector (engine)                          |
| 0x80       | Unknown (engine)                                               |

## AI Mode
AI actor mode can be changed in COG script by calling `AISetMode` COG function.

| Value                   | Description                                     |
|-------------------------|-------------------------------------------------|
| 0x1                     | AI actor is moving towards it`s destination     |
| 0x2                     | AI actor is attacking it's target               |
| 0x4                     | AI actor is searching for target or danger      |
| 0x8                     | AI actor is turning to face it's look target    |
| 0x10                    | Unknown                                         |
| 0x20                    | AI actor has tough skin                         |
| 0x40                    | AI actor does not check for cliffs              |
| 0x80                    | Unknown                                         |
| 0x100                   | AI actor is in block mode (blocks any AI event) |
| 0x200                   | AI actor is active                              |
| 0x400                   | AI actor has line of sight to it's target       |
| 0x800                   | AI actor is fleeing                             |
| 0x1000                  | AI actor is sleeping                            |
| 0x2000                  | AI actor is disabled                            |
| 0x4000                  | AI actor is circle strafing                     |
| 0x8000                  | Unknown                                         |
| 0x10000                 | AI actor wants all events                       |
| 0x20000                 | AI actor lost sight of goal                     |
| 0x40000                 | AI actor's instincts use waypoints              |
| 0x80000                 | AI actor is chasing goal                        |
| 0x100000                | Unknown                                         |
| 0x200000                | AI actor is wall crawling                       |
| 0x400000                | Unknown                                         |
| 0x800000                | AI actor is hunting                             |
| 0x1000000               | Unknown                                         |
| 0x2000000               | AI actor does not chase it's target             |
| 0x4000000               | AI actor is traversing waypoints                |
| 0x8000000               | AI actor has armored skin                       |
| 0x10000000              | AI actor is fleeing to waypoint                 |

## AI SubMode
| Value                   | Description                                 |
|-------------------------|---------------------------------------------|
| 0x1                     | Unknown                                     |
| 0x2                     | Unknown                                     |
| 0x4                     | Unknown                                     |
| 0x8                     | Unknown                                     |
| 0x10                    | Unknown                                     |
| 0x20                    | Skip check for fire field of view           |
| 0x40                    | Add eye offset when firing                  |
| 0x80                    | AI actor cannot move backwards              |
| 0x100                   | Unknown                                     |
| 0x200                   | Active continuous motion                    |
| 0x400                   | Unknown                                     |
| 0x800                   | Unknown                                     |
| 0x1000                  | Active head tracking motion                 |
| 0x2000                  | Active body tracking motion                 |
| 0x4000                  | Unknown                                     |
| 0x8000                  | Active continuous weapon motion             |
| 0x10000                 | Semi-continuous weapon motion               |
| 0x20000                 | Semi-continuous motion                      |
| 0x40000                 | Quick mode fade                             |
| 0x80000                 | Slow mode fade                              |
| 0x100000                | Use matching velocity                       |
| 0x200000                | Swim near the surface                       |
| 0x400000                | Unknown                                     |
| 0x800000                | Allow step thing                            |
| 0x1000000               | Special turns                               |
| 0x2000000               | Unknown                                     |
| 0x8000000               | Wall crawl locked                           |

## COG Flags
COG script flags

| Value      | Description                                       |
|------------|---------------------------------------------------|
| 0x1        | COG is in debug mode                              |
| 0x2        | Execution disabled                                |
| 0x4        | COG has pulse set (engine)                        |
| 0x8        | COG has timer set (engine)                        |
| 0x10       | Message sending is paused                         |
| 0x20       | COG is linked to thing object                     |
| 0x40       | Local COG                                         |
| 0x80       | Server COG (multiplayer)                          |
| 0x100      | Global COG (multiplayer)                          |
| 0x200      | No sync (multiplayer)                             |

## Collide Type
| Value    | Description          |
|:--------:|----------------------|
| 0        | None                 |
| 1        | Sphere collision     |
| 3        | Face collision       |

## Damage Class Flags
| Value      | Description                                                       |
|:-----------|-------------------------------------------------------------------|
| 0x1        | Impact damage (e.g. bullet projectile)                            |
| 0x2        | Energy damage                                                     |
| 0x4        | Fire damage                                                       |
| 0x8        | Fist damage                                                       |
| 0x10       | Whip damage                                                       |
| 0x20       | Machete damage                                                    |
| 0x40       | Drowning damage                                                   |
| 0x80       | Crushing damage                                                   |
| 0x100      | Poison damage                                                     |
| 0x200      | Lava damage                                                       |
| 0x400      | Unknown damage                                                    |
| 0x800      | Electrified whip damage                                           |
| 0x1000     | Infernal Machine part 1 damage                                    |
| 0x2000     | Unknown damage. Maybe reserved for Infernal Machine part 2.       |
| 0x4000     | Infernal Machine part 4 damage                                    |
| 0x5000     | Infernal Machine part 5 damage                                    |
| 0x100000   | Lightning damage                                                  |
| 0x200000   | Laser damage                                                      |
| 0x400000   | Razor rock damage                                                 |
| 0x800000   | Raft leak damage                                                  |
| 0x1000000  | Scraping damage                                                   |
| 0x2000000  | Vehicle impact damage                                             |
| 0x4000000  | Bonk damage (e.g. hitting head in a pipe while riding a mine car) |
| 0x8000000  | Debris damage                                                     |
| 0x10000000 | Infernal Machine part Blast damage                                |
| 0x20000000 | Hit damage                                                        |
| 0x40000000 | Cold water damage                                                 |
| 0x80000000 | Dart damage                                                       |

## Debug Flags
Debug flags are set in COG script by calling COG function `SetDebugModeFlags`

| Value   | Description                                      |
|---------|--------------------------------------------------|
| 0x1     | AI system is disabled                            |
| 0x2     | Puppet system is disabled                        |
| 0x40    | Print collision information                      |
| 0x80    | AI fire is disabled                              |
| 0x100   | Debug mode (i.e. in editor dev mode)             |
| 0x200   | AI is disabled from looking for targets          |
| 0x400   | Slow down animations                             |

## Explosion Flags
Thing type flags for Thing object of type Explosion

| Value                   | Description                                     |
|-------------------------|-------------------------------------------------|
| 0x1                     | Animated sprite effect                          |
| 0x2                     | Has blast phase                                 |
| 0x4                     | Blast radius causes damage                      |
| 0x8                     | Has child explosion effect                      |
| 0x10                    | Variable light effect                           |
| 0x20                    | Unknown                                         |
| 0x40                    | Explosion doesn't cause damage to it's shooter  |
| 0x80                    | Make random debris                              |
| 0x100                   | Flash blinds things                             |
| 0x200                   | Animate debris texture                          |
| 0x400                   | Set texture of debris to texture of hit surface |
| 0x800                   | Expand time effect                              |
| 0x1000                  | Use fade time effect                            |

## Face Type Flags
Polygon face flags

| Value           | Description                                                  |
| --------------- | ------------------------------------------------------------ |
| 0x1             | Double-sided geometry                                        |
| 0x2             | Translucent texture                                          |
| 0x4             | Clamp texture in X-axis (default repeat)                     |
| 0x8             | Clamp texture in Y-axis (default repeat)                     |
| 0x10            | Nearest-neighbor texture filter                              |
| 0x20            | Depth buffer disabled                                        |
| 0x40            | Face is ledge player can grab onto and hang from (3DO model) |
| 0x80            | Unknown                                                      |
| 0x100           | Fog render enabled (default on for all but sky polygons)     |
| 0x200           | Face triggers whip aim system (3DO model)                    |

## Geometry Mode
| Value         | Description        |
|:-------------:| ------------------ |
| 0             | None               |
| 1             | Draw vertex only   |
| 2             | Draw wireframe     |
| 3             | Draw solid         |
| 4             | Draw texture       |

## Item Flags
Thing type flags for Thing object of type Item

| Value    | Description                            |
| -------- | -------------------------------------- |
| 0x1      | Item respawns in multiplayer mode      |
| 0x2      | Item respawns in single-player mode    |
| 0x4      | Item is a backpack                     |

## Lighting Mode
| Value   | Description |
|:-------:| ----------- |
| 0       | Fully lit   |
| 1       | Lit         |
| 2       | Diffuse     |
| 3       | Gouraud     |

## Particle Flags
Thing type flags for Thing object of type Particle

| Value                   | Description                                |
|-------------------------|--------------------------------------------|
| 0x1                     | Outward expanding particle                 |
| 0x2                     | Unused                                     |
| 0x4                     | Animate texture cels                       |
| 0x8                     | Fade out over time                         |
| 0x10                    | Emits light                                |
| 0x20                    | Randomly change animated texture cels      |
| 0x40                    | Use timeout rate                           |

## Physics Flags
| Value       | Description                                                   |
|-------------|---------------------------------------------------------------|
| 0x1         | Use gravity                                                   |
| 0x2         | Use thrust                                                    |
| 0x4         | Unknown                                                       |
| 0x8         | Unknown                                                       |
| 0x10        | Object aligns to surface                                      |
| 0x20        | Object bounces off surfaces                                   |
| 0x40        | Object sticks to floors                                       |
| 0x80        | Object sticks to walls                                        |
| 0x100       | Object is aligned (engine)                                    |
| 0x200       | Use rotational velocity                                       |
| 0x400       | Object banks when turning                                     |
| 0x800       | Object aligns up, i.e.: pitch always 0                        |
| 0x1000      | Use angular thrust                                            |
| 0x2000      | Object can fly                                                |
| 0x4000      | Object is affected by explosion blast force                   |
| 0x8000      | Unknown flag                                                  |
| 0x10000     | Object is crouching                                           |
| 0x20000     | When object is created it starts moving in oriented direction |
| 0x40000     | Partial gravity                                               |
| 0x80000     | Unknown                                                       |
| 0x100000    | Object is on water surface, i.e.: afloat                      |
| 0x200000    | Unknown                                                       |
| 0x400000    | Object is not affected by thrust                              |
| 0x800000    | Physics is disabled                                           |
| 0x1000000   | Object is a minecar                                           |
| 0x2000000   | Object is a raft                                              |
| 0x4000000   | Object is a jeep                                              |
| 0x8000000   | Unknown                                                       |
| 0x10000000  | Unknown                                                       |
| 0x20000000  | Unknown                                                       |
| 0x40000000  | Unknown                                                       |
| 0x80000000  | Unknown                                                       |

## Sector Flags
| Value       | Description                                                                    |
|-------------|--------------------------------------------------------------------------------|
| 0x1         | Sector has no gravity                                                          |
| 0x2         | Sector is underwater                                                           |
| 0x4         | Sector is COG linked                                                           |
| 0x8         | Sector uses thrust                                                             |
| 0x10        | Sector is hidden on the overlay map                                            |
| 0x20        | AI actors can't enter the sector                                               |
| 0x40        | Objects falling into the sector result in death (fall death)                   |
| 0x80        | Sector adjoins are turned off. Set by COG function `SetSectorAdjoins` (engine) |
| 0x100       | Sector is part of aetherium                                                    |
| 0x1000      | Sector uses collision box for collision instead of surface collision           |
| 0x4000      | Sector has been seen by the player                                             |
| 0x8000      | Sector should be synchronized (engine, multiplayer)                            |

## Sound Play Flags
| Value   | Description                                 |
|:--------|---------------------------------------------|
| 0x1     | Loop until stopped                          |
| 0x2     | Remove when faded out                       |
| 0x4     | Ambient (no 3D specialization)              |
| 0x8     | Used Doppler effects                        |
| 0x10    | Sound is fading in                          |
| 0x20    | Sound is fading out                         |
| 0x40    | Sound position is absolute                  |
| 0x80    | Sound is linked to position of thing        |
| 0x100   | Sound has higher priority than default      |
| 0x200   | Sound has highest priority                  |
| 0x400   | Sound can't play twice in mixer             |
| 0x800   | Sound can't play twice when linked to thing |
| 0x1000  | Sound is pitch blended per velocity         |
| 0x2000  | Sound is underwater                         |
| 0x4000  | Sound should be pre-cached                  |
| 0x8000  | Sound is using duplicate play buffer        |
| 0x10000 | Sound is a voice                            |
| 0x20000 | Sound is currently audible                  |
| 0x40000 | Sound is playing but paused                 |
| 0x80000 | 3D sound is disabled                        |

*Note, the flags meaning of the flags were sourced form the COG script `ra.snd`  in the Star Wars Jedi Knight: Mysteries of the Sith game.*

## Surface Flags
| Value        | Description                                                                    |
|--------------|--------------------------------------------------------------------------------|
| 0x1          | Floor surface                                                                  |
| 0x2          | Surface is COG linked                                                          |
| 0x4          | Surface has face collision                                                     |
| 0x8          | AI can't movement onto the surface                                             |
| 0x10         | 2x scroll size (Affects the speed of `SlideWall` COG function)                 |
| 0x20         | 1/2 scroll size (Affects the speed of `SlideWall` COG function)                |
| 0x40         | 1/8 scroll size (Affects the speed of `SlideWall` COG function)                |
| 0x80         | Surface is part of aetherium sector                                            |
| 0x200        | Surface is part of horizon sky                                                 |
| 0x400        | Surface is part of ceiling sky                                                 |
| 0x800        | Surface is scrolling (engine, set `SlideWall` COG function)                    |
| 0x1000       | Kill floor, i.e.: thing object is killed if it touches the surface             |
| 0x2000       | Surface is climbable                                                           |
| 0x4000       | Track surface (e.g. minecar track)                                             |
| 0x8000       | Surface should be synchronized (engine, multiplayer)                           |
| 0x10000      | Metal surface and makes metal sound fx when hit or walked on                   |
| 0x20000      | Surface is part of underwater sector                                           |
| 0x40000      | Shallow water surface and makes water sound fx when hit or walked on           |
| 0x80000      | Dirt surface and makes dirt sound fx when hit or walked on                     |
| 0x100000     | Spider web surface                                                             |
| 0x200000     | Lava surface. Player or AI actor is instantly killed if it touches the surface |
| 0x400000     | Snow surface and makes snow sound fx when hit or walked on                     |
| 0x800000     | Wood surface and makes wood sound fx when hit or walked on                     |
| 0x1000000    | Ledge surface. Player can grab onto and hang from it                           |
| 0x2000000    | Water ledge for climbing out of water                                          |
| 0x4000000    | 1/4 scroll size (Affects the speed of `SlideWall` COG function)                |
| 0x8000000    | 4x scroll size (Affects the speed of `SlideWall` COG function)                 |
| 0x10000000   | Whip aim. Surface triggers whip aim system for the player when standing on it  |
| 0x20000000   | Makes indoor/echo sound fx when hit or walked on                               |
| 0x40000000   | Wood echo surface and makes wood indoor/echo sound fx when hit or walked on    |
| 0x80000000   | Dirt echo surface and makes dirt indoor/echo sound fx when hit or walked on    |

## Thing Flags
| Value       | Description                                                                   |
|-------------|-------------------------------------------------------------------------------|
| 0x1         | Object emits light                                                            |
| 0x2         | Object is destroyed (engine)                                                  |
| 0x4         | Weapon object (projectile) doesn't collide with the object                    |
| 0x8         | Object is whip climb structure                                                |
| 0x10        | Objet is invisible but interacts with other objects (e.g. sends COG messages) |
| 0x20        | Unknown/Reserved                                                              |
| 0x40        | Object can be stood on                                                        |
| 0x80        | Object is mountable                                                           |
| 0x100       | Object is remotely controlled (multiplayer)                                   |
| 0x200       | Object is dying and will be removed from the game (engine)                    |
| 0x400       | Object is COG linked (engine)                                                 |
| 0x800       | Object can't be crushed by other objects                                      |
| 0x1000      | Unknown, related to stand on collision and stand                              |
| 0x2000      | Object is made of wood and makes wood sound fx when hit                       |
| 0x4000      | Object casts shadow                                                           |
| 0x8000      | Object only blocks jeep player and doesn't collide with other type of objects |
| 0x10000     | Object is made of snow and makes snow sound fx when hit                       |
| 0x20000     | Object pulse timer is set by COG (engine)                                     |
| 0x40000     | Object timer is set by COG (engine)                                           |
| 0x80000     | Object is disabled, and is not rendered nor interacts with other objects      |
| 0x100000    | Object has been already seen by camera (engine)                               |
| 0x200000    | Unknown                                                                       |
| 0x400000    | Object is made of metal and makes metal sound fx when hit                     |
| 0x800000    | Object is made of dirt and makes dirt sound fx when hit                       |
| 0x1000000   | Object makes no sound                                                         |
| 0x2000000   | Object is submerged in water or aetherium (engine)                            |
| 0x4000000   | Object is a crate and can be climbed on                                       |
| 0x8000000   | Object is destroyed in water                                                  |
| 0x10000000  | Object is destroyed in the air                                                |
| 0x20000000  | Object creates splash effect (sends `splash` message to it's COG)             |
| 0x40000000  | Object can be moved, i.e. pushed or pulled                                    |
| 0x80000000  | Object is whip swing structure                                                |

## Weapon Flags
Thing type flags for Thing object of type weapon.

| Value                   | Description                                                      |
|-------------------------|------------------------------------------------------------------|
| 0x1                     | No damage to the shooter                                         |
| 0x4                     | Explode on surface hit                                           |
| 0x8                     | Explode on thing object hit                                      |
| 0x80                    | Stick to surface                                                 |
| 0x100                   | Explode timer set (engine)                                       |
| 0x200                   | Damage destroys the weapon object                                |
| 0x400                   | Produce impact sound fx                                          |
| 0x800                   | Stick to thing                                                   |
| 0x1000                  | Close proximity trigger                                          |
| 0x2000                  | Instant impact                                                   |
| 0x4000                  | Damage decays over time                                          |
| 0x8000                  | Object leaves a trail                                            |
| 0x20000                 | Targeted AI actor can't dodge the weapon object                  |
| 0x40000                 | Decay emits AI sound awareness event                             |
| 0x80000                 | Ricochets off of surface                                         |
| 0x200000                | Emit AI target event                                             |
| 0x400000                | Destroy when AI actor is killed by this object (default explode) |
| 0x800000                | Weapon is marduk mophia bomb                                     |