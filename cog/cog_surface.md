# Surface COG Functions

## Function List

- [GetSurfaceAdjoin](#getsurfaceadjoin)
- [GetSurfaceSector](#getsurfacesector)
- [GetNumSurfaceVertices](#getnumsurfacevertices)
- [GetSurfaceVertexPos](#getsurfacevertexpos)
- [SetHorizonSkyOffset](#sethorizonskyoffset)
- [GetHorizonSkyOffset](#gethorizonskyoffset)
- [SetCeilingSkyOffset](#setceilingskyoffset)
- [GetCeilingSkyOffset](#getceilingskyoffset)
- [SlideHorizonSky](#slidehorizonsky)
- [SlideCeilingSky](#slideceilingsky)
- [GetSurfaceCount](#getsurfacecount)
- [SlideWall](#slidewall)
- [SlideSurface](#slidesurface)
- [GetWallCel](#getwallcel)
- [SetWallCel](#setwallcel)
- [GetSurfaceCel](#getsurfacecel)
- [SetSurfaceCel](#setsurfacecel)
- [GetSurfaceMat](#getsurfacemat)
- [SetSurfaceMat](#setsurfacemat)
- [GetSurfaceFlags](#getsurfaceflags)
- [SetSurfaceFlags](#setsurfaceflags)
- [ClearSurfaceFlags](#clearsurfaceflags)
- [GetAdjoinFlags](#getadjoinflags)
- [SetAdjoinFlags](#setadjoinflags)
- [ClearAdjoinFlags](#clearadjoinflags)
- [SetFaceType](#setfacetype)
- [ClearFaceType](#clearfacetype)
- [GetFaceType](#getfacetype)
- [SetFaceGeoMode](#setfacegeomode)
- [GetFaceGeoMode](#getfacegeomode)
- [SetFaceLightMode](#setfacelightmode)
- [GetFaceLightMode](#getfacelightmode)
- [GetSurfaceLight](#getsurfacelight)
- [SetSurfaceLight](#setsurfacelight)
- [GetSurfaceCenter](#getsurfacecenter)
- [SurfaceLightAnim](#surfacelightanim)
- [GetSurfaceNormal](#getsurfacenormal)
- [SyncSurface](#syncsurface)
- [GetAdjoinAlpha](#getadjoinalpha)
- [SetAdjoinAlpha](#setadjoinalpha)

## GetSurfaceAdjoin

```cog
GetSurfaceAdjoin(Surface surf) -> int
```

## GetSurfaceSector

```cog
GetSurfaceSector(Surface surf) -> int
```

## GetNumSurfaceVertices

```cog
GetNumSurfaceVertices(Surface surf) -> int
```

## GetSurfaceVertexPos

```cog
GetSurfaceVertexPos(Surface surf, int vertNum) -> Vector
```

## SetHorizonSkyOffset

```cog
SetHorizonSkyOffset(Vector offset)
```

## GetHorizonSkyOffset

```cog
GetHorizonSkyOffset() -> Vector
```

## SetCeilingSkyOffset

```cog
SetCeilingSkyOffset(Vector offset)
```

## GetCeilingSkyOffset

```cog
GetCeilingSkyOffset() -> Vector
```

## SlideHorizonSky

```cog
SlideHorizonSky(float x, float y) -> int
```

## SlideCeilingSky

```cog
SlideCeilingSky(float x, float y) -> int
```

## GetSurfaceCount

```cog
GetSurfaceCount() -> int
```

## SlideWall

```cog
SlideWall(Surface surf, Vector dir, float speed) -> int
```

## SlideSurface

```cog
SlideSurface(Surface surf, Vector dir, float speed) -> int
```

## GetWallCel

```cog
GetWallCel(Surface surf) -> int
```

## SetWallCel

```cog
SetWallCel(Surface surf, int celNum) -> int
```

## GetSurfaceCel

```cog
GetSurfaceCel(Surface surf) -> int
```

## SetSurfaceCel

```cog
SetSurfaceCel(Surface surf, int celNum) -> int
```

## GetSurfaceMat

```cog
GetSurfaceMat(Surface surf) -> int
```

## SetSurfaceMat

```cog
SetSurfaceMat(Surface surf, Material mat) -> int
```

## GetSurfaceFlags

```cog
GetSurfaceFlags(Surface surf) -> int
```

## SetSurfaceFlags

```cog
SetSurfaceFlags(Surface surf, int surfflags)
```

## ClearSurfaceFlags

```cog
ClearSurfaceFlags(Surface surf, int surfflags)
```

## GetAdjoinFlags

```cog
GetAdjoinFlags(Surface surf) -> int
```

## SetAdjoinFlags

```cog
SetAdjoinFlags(Surface surf, int adjflags)
```

## ClearAdjoinFlags

```cog
ClearAdjoinFlags(Surface surf, int adjflags)
```

## SetFaceType

```cog
SetFaceType(Surface surf, int faceflags)
```

## ClearFaceType

```cog
ClearFaceType(Surface surf, int faceflags)
```

## GetFaceType

```cog
GetFaceType(Surface surf) -> int
```

## SetFaceGeoMode

```cog
SetFaceGeoMode(Surface surf, int geo)
```

## GetFaceGeoMode

```cog
GetFaceGeoMode(Surface surf) -> int
```

## SetFaceLightMode

```cog
SetFaceLightMode(Surface surf, int lightmode)
```

## GetFaceLightMode

```cog
GetFaceLightMode(Surface surf) -> int
```

## GetSurfaceLight

```cog
GetSurfaceLight(Surface surf) -> Vector
```

## SetSurfaceLight

```cog
SetSurfaceLight(Surface surf, Vector light, float timeDelta) -> int
```

## GetSurfaceCenter

```cog
GetSurfaceCenter(Surface surf) -> Vector
```

## SurfaceLightAnim

```cog
SurfaceLightAnim(Surface surf, float z, float y, float x, float z, float y, float x, float speed) -> int
```

## GetSurfaceNormal

```cog
GetSurfaceNormal(Surface surf) -> Vector
```

## SyncSurface

```cog
SyncSurface(Surface surf)
```

## GetAdjoinAlpha

```cog
GetAdjoinAlpha(Surface surf) -> int
```

## SetAdjoinAlpha

```cog
SetAdjoinAlpha(Surface surf, float alpha)
```

