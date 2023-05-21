Table of contents:
- [Damage Class Flags](#damage-class-flags)
- [Sound Play Flags](#sound-play-flags)

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