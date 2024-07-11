# Sound COG Functions

## Function List

- [PlaySoundThing](#playsoundthing)
- [StopSoundThing](#stopsoundthing)
- [PlaySoundPos](#playsoundpos)
- [PlaySoundLocal](#playsoundlocal)
- [PlaySoundGlobal](#playsoundglobal)
- [StopSound](#stopsound)
- [LoadSound](#loadsound)
- [PlaySoundClass](#playsoundclass)
- [StopSoundClass](#stopsoundclass)
- [PlayVoiceMode](#playvoicemode)
- [ChangeSoundVol](#changesoundvol)
- [ChangeSoundPitch](#changesoundpitch)
- [SectorSound](#sectorsound)
- [GetSoundLen](#getsoundlen)
- [WaitForSound](#waitforsound)
- [StopAllSoundsThing](#stopallsoundsthing)

## PlaySoundThing

```cog
PlaySoundThing(Sound snd, Thing thing, float volume, float playMinRadius, float playMaxRadius, int playflags) -> int
```

## StopSoundThing

```cog
StopSoundThing(Sound snd, Thing thing)
```

## PlaySoundPos

```cog
PlaySoundPos(Sound snd, Vector vec, float volume, float minRadius, float maxRadius, int playflags) -> int
```

## PlaySoundLocal

```cog
PlaySoundLocal(Sound snd, float volume, float pan, int playflags, int bWait) -> int
```

## PlaySoundGlobal

```cog
PlaySoundGlobal(Sound snd, float volume, float pan, int flags, int bWait) -> int
```

## StopSound

```cog
StopSound(int channelGUID, float secFadeTime)
```

## LoadSound

```cog
LoadSound(string filename) -> int
```

## PlaySoundClass

```cog
PlaySoundClass(Thing thing, int mode) -> int
```

## StopSoundClass

```cog
StopSoundClass(Thing thing, int mode)
```

## PlayVoiceMode

```cog
PlayVoiceMode(Thing thing, int mode)
```

## ChangeSoundVol

```cog
ChangeSoundVol(int guid, float volume, float secFadeTime)
```

## ChangeSoundPitch

```cog
ChangeSoundPitch(int guid, float pitch, float secFadeTime)
```

## SectorSound

```cog
SectorSound(Sector sector, Sound snd, float volume)
```

## GetSoundLen

```cog
GetSoundLen(Sound snd) -> float
```

## WaitForSound

```cog
WaitForSound(int channel) -> int
```

## StopAllSoundsThing

```cog
StopAllSoundsThing(Thing thing)
```

