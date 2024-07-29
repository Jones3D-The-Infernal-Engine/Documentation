# Jones COG Functions

## Function List

- [HealthDisplayOff](#healthdisplayoff)
- [HealthDisplayOn](#healthdisplayon)
- [JonesInvItemChanged](#jonesinvitemchanged)
- [JonesEndLevel](#jonesendlevel)
- [ExitToShell](#exittoshell)
- [StartCutscene](#startcutscene)
- [EndCutscene](#endcutscene)
- [UpdateDifficulty](#updatedifficulty)
- [EnableInterface](#enableinterface)

## HealthDisplayOff

```cog
HealthDisplayOff()
```

## HealthDisplayOn

```cog
HealthDisplayOn()
```

## JonesInvItemChanged

```cog
JonesInvItemChanged(int bin)
```

## JonesEndLevel

```cog
JonesEndLevel()
```

## ExitToShell

```cog
ExitToShell()
```

## StartCutscene

```cog
StartCutscene(int type)
```
`type` argument controls the appearance of HUD elements during the cutscene.
- 0 - All HUD remains visible during the cutscene.
- 1 - Health indicator fades out smoothly. Stamina bar disappears instantly.
- 2 - All HUD elements instantly disappear.

## EndCutscene

```cog
EndCutscene()
```

## UpdateDifficulty

```cog
UpdateDifficulty(int difficulty)
```

## EnableInterface

```cog
EnableInterface(int bEnable)
```

