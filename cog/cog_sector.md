# Sector COG Functions

## Function List

- [GetSectorTint](#getsectortint)
- [SetSectorTint](#setsectortint)
- [SetSectorAdjoins](#setsectoradjoins)
- [SectorAdjoins](#sectoradjoins)
- [GetSectorLight](#getsectorlight)
- [SetSectorLight](#setsectorlight)
- [SectorLight](#sectorlight)
- [GetColormap](#getcolormap)
- [GetSectorColormap](#getsectorcolormap)
- [SetColormap](#setcolormap)
- [SetSectorColormap](#setsectorcolormap)
- [GetSectorThrust](#getsectorthrust)
- [SetSectorThrust](#setsectorthrust)
- [SectorThrust](#sectorthrust)
- [GetSectorFlags](#getsectorflags)
- [SetSectorFlags](#setsectorflags)
- [ClearSectorFlags](#clearsectorflags)
- [GetSectorThingCount](#getsectorthingcount)
- [SectorThingCount](#sectorthingcount)
- [GetSectorPlayerCount](#getsectorplayercount)
- [SectorPlayerCount](#sectorplayercount)
- [GetSectorCount](#getsectorcount)
- [GetSectorCenter](#getsectorcenter)
- [GetNumSectorVertices](#getnumsectorvertices)
- [GetSectorVertexPos](#getsectorvertexpos)
- [GetNumSectorSurfaces](#getnumsectorsurfaces)
- [GetSectorSurfaceRef](#getsectorsurfaceref)
- [SyncSector](#syncsector)
- [FindSectorAtPos](#findsectoratpos)
- [SetSectorSurfflags](#setsectorsurfflags)
- [ClearSectorSurfflags](#clearsectorsurfflags)

## GetSectorTint

```cog
GetSectorTint(Sector sector) -> Vector
```

## SetSectorTint

```cog
SetSectorTint(Sector sector, Vector color)
```

## SetSectorAdjoins

```cog
SetSectorAdjoins(Sector sector, int bOn)
```

## SectorAdjoins

```cog
SectorAdjoins(Sector sector, int bOn)
```

## GetSectorLight

```cog
GetSectorLight(Sector sector) -> float
```

## SetSectorLight

```cog
SetSectorLight(Sector sector, Vector color, float timeDelta)
```

## SectorLight

```cog
SectorLight(Sector sector, Vector color, float timeDelta)
```

## GetColormap

```cog
GetColormap(Sector value) -> int
```

## GetSectorColormap

```cog
GetSectorColormap(Sector value) -> int
```

## SetColormap

```cog
SetColormap(int value)
```

## SetSectorColormap

```cog
SetSectorColormap(int value)
```

## GetSectorThrust

```cog
GetSectorThrust(Sector sector) -> Vector
```

## SetSectorThrust

```cog
SetSectorThrust(Sector sector, Vector vecDirect, float thrust)
```

## SectorThrust

```cog
SectorThrust(Sector sector, Vector vecDirect, float thrust)
```

## GetSectorFlags

```cog
GetSectorFlags(Sector sector) -> int
```

## SetSectorFlags

```cog
SetSectorFlags(Sector sector, int flags)
```

## ClearSectorFlags

```cog
ClearSectorFlags(Sector sector, int flags)
```

## GetSectorThingCount

```cog
GetSectorThingCount(Sector sector) -> int
```

## SectorThingCount

```cog
SectorThingCount(Sector sector) -> int
```

## GetSectorPlayerCount

```cog
GetSectorPlayerCount(Sector sector) -> int
```

## SectorPlayerCount

```cog
SectorPlayerCount(Sector sector) -> int
```

## GetSectorCount

```cog
GetSectorCount() -> int
```

## GetSectorCenter

```cog
GetSectorCenter(Sector sector) -> Vector
```

## GetNumSectorVertices

```cog
GetNumSectorVertices(Sector sector) -> int
```

## GetSectorVertexPos

```cog
GetSectorVertexPos(Sector sector, int vertNum) -> Vector
```

## GetNumSectorSurfaces

```cog
GetNumSectorSurfaces(Sector sector) -> int
```

## GetSectorSurfaceRef

```cog
GetSectorSurfaceRef(Sector sector, int surfIdx) -> int
```

## SyncSector

```cog
SyncSector(Sector sector)
```

## FindSectorAtPos

```cog
FindSectorAtPos(Vector pos) -> int
```

## SetSectorSurfflags

```cog
SetSectorSurfflags(Sector sector, int surfflags)
```

## ClearSectorSurfflags

```cog
ClearSectorSurfflags(Sector sector, int surfflags)
```

