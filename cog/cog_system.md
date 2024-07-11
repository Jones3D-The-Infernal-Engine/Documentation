# System COG Functions

## Function List

- [GetSenderRef](#getsenderref)
- [GetSenderType](#getsendertype)
- [GetSenderID](#getsenderid)
- [GetSourceType](#getsourcetype)
- [GetSourceRef](#getsourceref)
- [GetSysDate](#getsysdate)
- [GetSysTime](#getsystime)
- [InEditor](#ineditor)
- [GetThingCount](#getthingcount)
- [GetGravity](#getgravity)
- [SetGravity](#setgravity)
- [GetLevelTime](#getleveltime)
- [GetGameTime](#getgametime)
- [GetFlexGameTime](#getflexgametime)
- [GetThingTemplateCount](#getthingtemplatecount)
- [SetFog](#setfog)
- [FindNewSector](#findnewsector)
- [FindNewSectorFromThing](#findnewsectorfromthing)
- [Sleep](#sleep)
- [SetPulse](#setpulse)
- [SetTimer](#settimer)
- [SetTimerEx](#settimerex)
- [KillTimerEx](#killtimerex)
- [Reset](#reset)
- [MaterialAnim](#materialanim)
- [StopMaterialAnim](#stopmaterialanim)
- [StopAnim](#stopanim)
- [StopSurfaceAnim](#stopsurfaceanim)
- [GetSurfaceAnim](#getsurfaceanim)
- [SurfaceAnim](#surfaceanim)
- [GetKeyLen](#getkeylen)
- [LoadTemplate](#loadtemplate)
- [LoadKeyframe](#loadkeyframe)
- [LoadModel](#loadmodel)
- [Print](#print)
- [PrintInt](#printint)
- [PrintFlex](#printflex)
- [PrintVector](#printvector)
- [printhex](#printhex)
- [VectorAdd](#vectoradd)
- [VectorSub](#vectorsub)
- [VectorDot](#vectordot)
- [VectorCross](#vectorcross)
- [VectorSet](#vectorset)
- [VectorLen](#vectorlen)
- [VectorScale](#vectorscale)
- [VectorDist](#vectordist)
- [VectorX](#vectorx)
- [VectorY](#vectory)
- [VectorZ](#vectorz)
- [VectorNorm](#vectornorm)
- [VectorEqual](#vectorequal)
- [VectorRotate](#vectorrotate)
- [VectorTransformToOrient](#vectortransformtoorient)
- [GetSithMode](#getsithmode)
- [GetDifficulty](#getdifficulty)
- [SetSubModeFlags](#setsubmodeflags)
- [GetSubModeFlags](#getsubmodeflags)
- [ClearSubModeFlags](#clearsubmodeflags)
- [SetDebugModeFlags](#setdebugmodeflags)
- [GetDebugModeFlags](#getdebugmodeflags)
- [ClearDebugModeFlags](#cleardebugmodeflags)
- [BitSet](#bitset)
- [BitTest](#bittest)
- [BitClear](#bitclear)
- [FireProjectile](#fireprojectile)
- [ActivateWeapon](#activateweapon)
- [DeactivateWeapon](#deactivateweapon)
- [DeactivateCurWeapon](#deactivatecurweapon)
- [SetMountWait](#setmountwait)
- [SetFireWait](#setfirewait)
- [SetAimWait](#setaimwait)
- [SelectWeapon](#selectweapon)
- [SelectWeaponWait](#selectweaponwait)
- [DeselectWeapon](#deselectweapon)
- [DeselectWeaponWait](#deselectweaponwait)
- [SetCurWeapon](#setcurweapon)
- [GetCurWeapon](#getcurweapon)
- [SetWeaponModel](#setweaponmodel)
- [ResetWeaponModel](#resetweaponmodel)
- [LoadHolsterModel](#loadholstermodel)
- [SetHolsterModel](#setholstermodel)
- [ResetHolsterModel](#resetholstermodel)
- [GetLastPistol](#getlastpistol)
- [GetLastRifle](#getlastrifle)
- [CopyPlayerHolsters](#copyplayerholsters)
- [SendMessage](#sendmessage)
- [SendMessageEx](#sendmessageex)
- [ReturnEx](#returnex)
- [GetParam](#getparam)
- [SetParam](#setparam)
- [SetInvFlags](#setinvflags)
- [SetMapModeFlags](#setmapmodeflags)
- [GetMapModeFlags](#getmapmodeflags)
- [ClearMapModeFlags](#clearmapmodeflags)
- [GetMaterialCel](#getmaterialcel)
- [SetMaterialCel](#setmaterialcel)
- [SetCameraFocus](#setcamerafocus)
- [GetPrimaryFocus](#getprimaryfocus)
- [GetSecondaryFocus](#getsecondaryfocus)
- [SetCurrentCamera](#setcurrentcamera)
- [GetCurrentCamera](#getcurrentcamera)
- [CycleCamera](#cyclecamera)
- [SetPOVShake](#setpovshake)
- [SetCameraStateFlags](#setcamerastateflags)
- [GetCameraStateFlags](#getcamerastateflags)
- [SetCameraSecondaryFocus](#setcamerasecondaryfocus)
- [HeapNew](#heapnew)
- [HeapSet](#heapset)
- [HeapGet](#heapget)
- [HeapFree](#heapfree)
- [GetSelfCog](#getselfcog)
- [GetMasterCog](#getmastercog)
- [SetMasterCog](#setmastercog)
- [GetCogByIndex](#getcogbyindex)
- [IsMulti](#ismulti)
- [IsServer](#isserver)
- [SendTrigger](#sendtrigger)
- [AutoSavegame](#autosavegame)
- [GetHintSolved](#gethintsolved)
- [SetHintSolved](#sethintsolved)
- [SetHintUnsolved](#sethintunsolved)
- [Rand](#rand)
- [RandBetween](#randbetween)
- [RandVec](#randvec)
- [Round](#round)
- [Truncate](#truncate)
- [Abs](#abs)
- [Pow](#pow)
- [Sin](#sin)
- [Cos](#cos)
- [ArcTan](#arctan)
- [GetPerformanceLevel](#getperformancelevel)
- [IsLevelName](#islevelname)

## GetSenderRef

```cog
GetSenderRef() -> int
```

## GetSenderType

```cog
GetSenderType() -> int
```

## GetSenderID

```cog
GetSenderID() -> int
```

## GetSourceType

```cog
GetSourceType() -> int
```

## GetSourceRef

```cog
GetSourceRef() -> int
```

## GetSysDate

```cog
GetSysDate() -> Vector
```

## GetSysTime

```cog
GetSysTime() -> Vector
```

## InEditor

```cog
InEditor() -> int
```

## GetThingCount

```cog
GetThingCount() -> int
```

## GetGravity

```cog
GetGravity() -> float
```

## SetGravity

```cog
SetGravity(float gravity)
```

## GetLevelTime

```cog
GetLevelTime() -> float
```

## GetGameTime

```cog
GetGameTime() -> int
```

## GetFlexGameTime

```cog
GetFlexGameTime() -> float
```

## GetThingTemplateCount

```cog
GetThingTemplateCount(Template template) -> int
```

## SetFog

```cog
SetFog(int bEnable, Vector vecColor, float start, float end)
```

## FindNewSector

```cog
FindNewSector(Vector startPos, Sector sector, Vector endPos) -> int
```

## FindNewSectorFromThing

```cog
FindNewSectorFromThing(Thing thing, Vector vec) -> int
```

## Sleep

```cog
Sleep(float wait)
```

## SetPulse

```cog
SetPulse(float interval)
```

## SetTimer

```cog
SetTimer(float when)
```

## SetTimerEx

```cog
SetTimerEx(float when, int param1, int param2, int param3)
```

## KillTimerEx

```cog
KillTimerEx(int timerId)
```

## Reset

```cog
Reset()
```

## MaterialAnim

```cog
MaterialAnim(Material mat, float fps, int flags) -> int
```

## StopMaterialAnim

```cog
StopMaterialAnim(Material material)
```

## StopAnim

```cog
StopAnim(int animID)
```

## StopSurfaceAnim

```cog
StopSurfaceAnim(Surface surf)
```

## GetSurfaceAnim

```cog
GetSurfaceAnim(Surface surf) -> int
```

## SurfaceAnim

```cog
SurfaceAnim(Surface surf, float speed, int flags) -> int
```

## GetKeyLen

```cog
GetKeyLen(Keyframe keyframe) -> float
```

## LoadTemplate

```cog
LoadTemplate(string templateName) -> int
```

## LoadKeyframe

```cog
LoadKeyframe(string keyFilename) -> int
```

## LoadModel

```cog
LoadModel(string modelFilename) -> int
```

## Print

```cog
Print(string value)
```

## PrintInt

```cog
PrintInt(int value)
```

## PrintFlex

```cog
PrintFlex(float value)
```

## PrintVector

```cog
PrintVector(Vector vec)
```

## printhex

```cog
printhex(int value)
```

## VectorAdd

```cog
VectorAdd(Vector b, Vector a) -> Vector
```

## VectorSub

```cog
VectorSub(Vector b, Vector a) -> Vector
```

## VectorDot

```cog
VectorDot(Vector a, Vector b) -> float
```

## VectorCross

```cog
VectorCross(Vector a, Vector b) -> Vector
```

## VectorSet

```cog
VectorSet(float x, float y, float z) -> Vector
```

## VectorLen

```cog
VectorLen(Vector vec) -> float
```

## VectorScale

```cog
VectorScale(Vector a, float scalar) -> Vector
```

## VectorDist

```cog
VectorDist(Vector b, Vector a) -> float
```

## VectorX

```cog
VectorX(Vector vec) -> float
```

## VectorY

```cog
VectorY(Vector vec) -> float
```

## VectorZ

```cog
VectorZ(Vector vec) -> float
```

## VectorNorm

```cog
VectorNorm(Vector vec) -> Vector
```

## VectorEqual

```cog
VectorEqual(Vector b, Vector a) -> int
```

## VectorRotate

```cog
VectorRotate(Vector vec, Vector pyr) -> Vector
```

## VectorTransformToOrient

```cog
VectorTransformToOrient(Thing thing, Vector vec) -> Vector
```

## GetSithMode

```cog
GetSithMode() -> int
```

## GetDifficulty

```cog
GetDifficulty() -> int
```

## SetSubModeFlags

```cog
SetSubModeFlags(int value)
```

## GetSubModeFlags

```cog
GetSubModeFlags() -> int
```

## ClearSubModeFlags

```cog
ClearSubModeFlags(int value)
```

## SetDebugModeFlags

```cog
SetDebugModeFlags(int value)
```

## GetDebugModeFlags

```cog
GetDebugModeFlags() -> int
```

## ClearDebugModeFlags

```cog
ClearDebugModeFlags(int value)
```

## BitSet

```cog
BitSet(int flags, int mask) -> int
```

## BitTest

```cog
BitTest(int flags, int mask) -> int
```

## BitClear

```cog
BitClear(int flags, int mask) -> int
```

## FireProjectile

```cog
FireProjectile(Thing shooter, Template projectile, Sound fireSnd, int submode, Vector fireOffset, Vector fireError, float extra, int flags, float autoAimFovX, float autoAimFovZ) -> Thing
```
Creates and fires a projectile from the specified `shooter` using the provided `projectile` template, with additional parameters influencing the shot.

**Parameters**:
 - `shooter` -The game object which fires projectile.
 - `projectile` - The template used for creating and shooting a projectile game object.
 - `fireSnd` - Fire sound effect.
 - `submode` - The `shooter` [`puppet submode`](../pup.md#sub-mode-list) number to play upon firing projectile.
 - `aimError` -  Shot projectile aim error. Affected by `aimFov` and `aimMax` depending on the `flags` parameter.
 - `scale` - The projectile properties scale multiplier. The `flags` parameter defines which projectile property is affected by this multiplier.
 - `aimFov` - The aim field of view.
 - `aimMax` - The projectile max aim.
 - `flags`:
    * 0x01  - Multiply projectile velocity with `scale` param.
    * 0x02  - Multiply projectile impact damage with `scale` param.
    * 0x04  - Multiply unknown projectile param with `scale` param.
    * 0x08  - Multiply unknown projectile param with `scale` param.
    * 0x10  - Burst fire up to 10 projectiles if shooter has set fire wait time. (Set by SetFireWait cog function) 
    * 0x20  - [Player] Apply aimFov and aimMax to aimError.
    * 0x80  - [Player] Shoot projectile from the right hand of the player's 3D model (inrhand)
    * 0x100 - [Player] Shoot projectile from the torso of the player's 3D model (intorso).
              There is a bug for this flag and the rotation vector is not initialized which can crash the game.
    * 0x200 - Add weapon fire effect. Note, this only works if shooter model has `inrhand` hierarchy hand node defined in it's model 3DO file.  
    For 250 ms engine switches the current weapon model with firing weapon model for weapons:
      * pistol - weap_revolver_fire.3do
      * tokarev - weap_tokarev_fire.3do
      * mauser - weap_mauser_fire.3do
      * simonov - weap_simonov_fire.3do
      * submachine - weap_ppsh41_fire.3do
      * shotgun - weap_toz34_fire.3do

**Return**  
On success projectile object is returned, otherwise -1.

## ActivateWeapon

```cog
ActivateWeapon(Thing thing, float timeToWait)
```

## DeactivateWeapon

```cog
DeactivateWeapon(Thing thing) -> float
```

## DeactivateCurWeapon

```cog
DeactivateCurWeapon(Thing thing)
```

## SetMountWait

```cog
SetMountWait(Thing thing, float timeToWait)
```

## SetFireWait

```cog
SetFireWait(Thing thing, float waitTime)
```

## SetAimWait

```cog
SetAimWait(Thing thing, float timeToWait)
```

## SelectWeapon

```cog
SelectWeapon(Thing thing, int weaponID) -> int
```

## SelectWeaponWait

```cog
SelectWeaponWait(Thing thing, int weaponId) -> int
```

## DeselectWeapon

```cog
DeselectWeapon(Thing thing) -> int
```

## DeselectWeaponWait

```cog
DeselectWeaponWait(Thing thing) -> int
```

## SetCurWeapon

```cog
SetCurWeapon(Thing thing, int weaponID)
```

## GetCurWeapon

```cog
GetCurWeapon(Thing thing) -> int
```

## SetWeaponModel

```cog
SetWeaponModel(Thing thing, int typeId)
```

## ResetWeaponModel

```cog
ResetWeaponModel(Thing thing)
```

## LoadHolsterModel

```cog
LoadHolsterModel(int type, string modelFilename) -> int
```

## SetHolsterModel

```cog
SetHolsterModel(Thing thing, int weaponId, int meshNum)
```

## ResetHolsterModel

```cog
ResetHolsterModel(Thing thing, int holsterNum)
```

## GetLastPistol

```cog
GetLastPistol(Thing thing) -> int
```

## GetLastRifle

```cog
GetLastRifle(Thing thing) -> int
```

## CopyPlayerHolsters

```cog
CopyPlayerHolsters(Thing sourceThing, Thing destThing)
```

## SendMessage

```cog
SendMessage(cog dstCog, int msgType)
```

## SendMessageEx

```cog
SendMessageEx(cog dstCog, int msg, int param0, int param1, int param2, int param3) -> int
```

## ReturnEx

```cog
ReturnEx(int returnValue)
```

## GetParam

```cog
GetParam(int idx) -> int
```

## SetParam

```cog
SetParam(int num, int val)
```

## SetInvFlags

```cog
SetInvFlags(Thing thing, int bin, int flags)
```

## SetMapModeFlags

```cog
SetMapModeFlags(int value)
```

## GetMapModeFlags

```cog
GetMapModeFlags() -> int
```

## ClearMapModeFlags

```cog
ClearMapModeFlags(int value)
```

## GetMaterialCel

```cog
GetMaterialCel(Material value) -> int
```

## SetMaterialCel

```cog
SetMaterialCel(Material mat, int celNum) -> int
```

## SetCameraFocus

```cog
SetCameraFocus(int camNum, Thing thing)
```

## GetPrimaryFocus

```cog
GetPrimaryFocus(int camNum) -> int
```

## GetSecondaryFocus

```cog
GetSecondaryFocus(int camNum) -> int
```

## SetCurrentCamera

```cog
SetCurrentCamera(int camNum)
```

## GetCurrentCamera

```cog
GetCurrentCamera() -> int
```

## CycleCamera

```cog
CycleCamera()
```

## SetPOVShake

```cog
SetPOVShake(Vector posOffset, Vector angleOffset, float posDelta, float angDelta)
```

## SetCameraStateFlags

```cog
SetCameraStateFlags(int flags)
```

## GetCameraStateFlags

```cog
GetCameraStateFlags() -> int
```

## SetCameraSecondaryFocus

```cog
SetCameraSecondaryFocus(int camNum, Thing focus)
```

## HeapNew

```cog
HeapNew(int size)
```

## HeapSet

```cog
HeapSet(int idx)
```

## HeapGet

```cog
HeapGet(int num) -> int
```

## HeapFree

```cog
HeapFree()
```

## GetSelfCog

```cog
GetSelfCog() -> int
```

## GetMasterCog

```cog
GetMasterCog() -> int
```

## SetMasterCog

```cog
SetMasterCog(cog sithCog_g_pMasterCog)
```

## GetCogByIndex

```cog
GetCogByIndex(int idx) -> int
```

## IsMulti

```cog
IsMulti() -> int
```

## IsServer

```cog
IsServer() -> int
```

## SendTrigger

```cog
SendTrigger(Thing thing, int srcIdx, int param0, int param1, int param2, int param3)
```

## AutoSavegame

```cog
AutoSavegame()
```

## GetHintSolved

```cog
GetHintSolved(Thing thing) -> int
```

## SetHintSolved

```cog
SetHintSolved(Thing thing)
```

## SetHintUnsolved

```cog
SetHintUnsolved(Thing thing)
```

## Rand

```cog
Rand() -> float
```

## RandBetween

```cog
RandBetween(int min, int max) -> int
```

## RandVec

```cog
RandVec() -> Vector
```

## Round

```cog
Round(float val) -> float
```

## Truncate

```cog
Truncate(float val) -> float
```

## Abs

```cog
Abs(float val) -> float
```

## Pow

```cog
Pow(float base, float exp) -> float
```

## Sin

```cog
Sin(float angle) -> float
```

## Cos

```cog
Cos(float angle) -> float
```

## ArcTan

```cog
ArcTan(float x, float y) -> float
```

## GetPerformanceLevel

```cog
GetPerformanceLevel() -> int
```

## IsLevelName

```cog
IsLevelName(string name) -> int
```

