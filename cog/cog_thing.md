# Thing COG Functions

## Function List

- [WaitForStop](#waitforstop)
- [WaitForAnimStop](#waitforanimstop)
- [StopThing](#stopthing)
- [DestroyThing](#destroything)
- [GetThingHealth](#getthinghealth)
- [GetThingMaxHealth](#getthingmaxhealth)
- [GetHealth](#gethealth)
- [HealThing](#healthing)
- [GetThingLight](#getthinglight)
- [SetThingLight](#setthinglight)
- [ThingLight](#thinglight)
- [ThingLightAnim](#thinglightanim)
- [ThingFadeAnim](#thingfadeanim)
- [CreateThing](#creatething)
- [CreateThingAtPos](#createthingatpos)
- [CaptureThing](#capturething)
- [ReleaseThing](#releasething)
- [SetThingVel](#setthingvel)
- [AddThingVel](#addthingvel)
- [ApplyForce](#applyforce)
- [DetachThing](#detachthing)
- [GetAttachFlags](#getattachflags)
- [GetThingAttachFlags](#getthingattachflags)
- [AttachThingToSurf](#attachthingtosurf)
- [AttachThingToThing](#attachthingtothing)
- [SetArmedMode](#setarmedmode)
- [SetThingFlags](#setthingflags)
- [ClearThingFlags](#clearthingflags)
- [TeleportThing](#teleportthing)
- [SetThingType](#setthingtype)
- [SetCollideType](#setcollidetype)
- [SetHeadLightIntensity](#setheadlightintensity)
- [GetThingCurLightMode](#getthingcurlightmode)
- [SetThingCurLightMode](#setthingcurlightmode)
- [SetActorExtraSpeed](#setactorextraspeed)
- [SetThingPosEx](#setthingposex)
- [SetThingMaxVel](#setthingmaxvel)
- [SetThingMaxAngVel](#setthingmaxangvel)
- [SetThingJointAngle](#setthingjointangle)
- [SetThingMaxHeadPitch](#setthingmaxheadpitch)
- [SetThingMinHeadPitch](#setthingminheadpitch)
- [GetThingMaxHeadPitch](#getthingmaxheadpitch)
- [GetThingMinHeadPitch](#getthingminheadpitch)
- [SetThingMaxHeadYaw](#setthingmaxheadyaw)
- [GetThingMaxHeadYaw](#getthingmaxheadyaw)
- [SetThingLVecPYR](#setthinglvecpyr)
- [SetActorHeadPYR](#setactorheadpyr)
- [SetThingAirDrag](#setthingairdrag)
- [SetThingMaxRotVel](#setthingmaxrotvel)
- [SetThingMaxHeadVel](#setthingmaxheadvel)
- [ResetThing](#resetthing)
- [MoveThing](#movething)
- [MoveThingToPos](#movethingtopos)
- [GetThingType](#getthingtype)
- [IsThingMoving](#isthingmoving)
- [IsMoving](#ismoving)
- [GetCurFrame](#getcurframe)
- [GetGoalFrame](#getgoalframe)
- [GetThingParent](#getthingparent)
- [GetThingSector](#getthingsector)
- [GetThingPos](#getthingpos)
- [SetThingPos](#setthingpos)
- [GetThingVel](#getthingvel)
- [GetThingUVec](#getthinguvec)
- [GetThingLVec](#getthinglvec)
- [GetThingRVec](#getthingrvec)
- [GetThingFlags](#getthingflags)
- [GetCollideType](#getcollidetype)
- [GetHeadLightIntensity](#getheadlightintensity)
- [IsThingVisible](#isthingvisible)
- [GetThingGuid](#getthingguid)
- [GetGuidThing](#getguidthing)
- [GetThingMaxVel](#getthingmaxvel)
- [GetThingMaxAngVel](#getthingmaxangvel)
- [GetThingJointAngle](#getthingjointangle)
- [InterpolatePYR](#interpolatepyr)
- [GetThingLVecPYR](#getthinglvecpyr)
- [GetActorHeadPYR](#getactorheadpyr)
- [GetThingJointPos](#getthingjointpos)
- [IsThingModelName](#isthingmodelname)
- [GetThingMaxRotVel](#getthingmaxrotvel)
- [GetThingMaxHeadVel](#getthingmaxheadvel)
- [CopyOrient](#copyorient)
- [CopyOrientAndPos](#copyorientandpos)
- [GetThingInsertOffset](#getthinginsertoffset)
- [SetThingInsertOffset](#setthinginsertoffset)
- [GetThingEyeOffset](#getthingeyeoffset)
- [SetThingPulse](#setthingpulse)
- [SetThingTimer](#setthingtimer)
- [GetInv](#getinv)
- [SetInv](#setinv)
- [ChangeInv](#changeinv)
- [GetInvCog](#getinvcog)
- [GetInvMin](#getinvmin)
- [GetInvMax](#getinvmax)
- [PlayKey](#playkey)
- [PlayKeyEx](#playkeyex)
- [StopKey](#stopkey)
- [PauseKey](#pausekey)
- [ResumeKey](#resumekey)
- [SetThingModel](#setthingmodel)
- [GetThingModel](#getthingmodel)
- [PlayMode](#playmode)
- [StopMode](#stopmode)
- [SynchMode](#synchmode)
- [IsModePlaying](#ismodeplaying)
- [PauseMode](#pausemode)
- [ResumeMode](#resumemode)
- [TrackToMode](#tracktomode)
- [WaitMode](#waitmode)
- [GetMajorMode](#getmajormode)
- [FirstThingInSector](#firstthinginsector)
- [NextThingInSector](#nextthinginsector)
- [PrevThingInSector](#prevthinginsector)
- [MoveToFrame](#movetoframe)
- [SkipToFrame](#skiptoframe)
- [JumpToFrame](#jumptoframe)
- [PathMovePause](#pathmovepause)
- [PathMoveResume](#pathmoveresume)
- [Rotate](#rotate)
- [RotatePivot](#rotatepivot)
- [RotateToPYR](#rotatetopyr)
- [GetThingTemplate](#getthingtemplate)
- [DamageThing](#damagething)
- [SetLifeLeft](#setlifeleft)
- [GetLifeLeft](#getlifeleft)
- [SetThingThrust](#setthingthrust)
- [GetThingThrust](#getthingthrust)
- [SetThingHealth](#setthinghealth)
- [SetHealth](#sethealth)
- [AmputateJoint](#amputatejoint)
- [SetActorWeapon](#setactorweapon)
- [GetActorWeapon](#getactorweapon)
- [GetPhysicsFlags](#getphysicsflags)
- [SetPhysicsFlags](#setphysicsflags)
- [ClearPhysicsFlags](#clearphysicsflags)
- [ParseArg](#parsearg)
- [GetThingRotVel](#getthingrotvel)
- [SetThingRotVel](#setthingrotvel)
- [GetThingRotThrust](#getthingrotthrust)
- [SetThingRotThrust](#setthingrotthrust)
- [SetThingLook](#setthinglook)
- [SetThingHeadLookPos](#setthingheadlookpos)
- [SetThingHeadLookThing](#setthingheadlookthing)
- [IsThingCrouching](#isthingcrouching)
- [IsCrouching](#iscrouching)
- [GetThingClassCog](#getthingclasscog)
- [SetThingClassCog](#setthingclasscog)
- [GetThingCaptureCog](#getthingcapturecog)
- [SetThingCaptureCog](#setthingcapturecog)
- [GetThingRespawn](#getthingrespawn)
- [GetThingSignature](#getthingsignature)
- [SetThingAttachFlags](#setthingattachflags)
- [ClearThingAttachFlags](#clearthingattachflags)
- [GetParticleSize](#getparticlesize)
- [SetParticleSize](#setparticlesize)
- [GetParticleGrowthSpeed](#getparticlegrowthspeed)
- [SetParticleGrowthSpeed](#setparticlegrowthspeed)
- [GetParticleTimeoutRate](#getparticletimeoutrate)
- [SetParticleTimeoutRate](#setparticletimeoutrate)
- [GetTypeFlags](#gettypeflags)
- [SetTypeFlags](#settypeflags)
- [ClearTypeFlags](#cleartypeflags)
- [GetActorFlags](#getactorflags)
- [SetActorFlags](#setactorflags)
- [ClearActorFlags](#clearactorflags)
- [GetWeaponFlags](#getweaponflags)
- [SetWeaponFlags](#setweaponflags)
- [ClearWeaponFlags](#clearweaponflags)
- [GetExplosionFlags](#getexplosionflags)
- [SetExplosionFlags](#setexplosionflags)
- [ClearExplosionFlags](#clearexplosionflags)
- [GetItemFlags](#getitemflags)
- [SetItemFlags](#setitemflags)
- [ClearItemFlags](#clearitemflags)
- [GetParticleFlags](#getparticleflags)
- [SetParticleFlags](#setparticleflags)
- [ClearParticleFlags](#clearparticleflags)
- [TakeItem](#takeitem)
- [HasLOS](#haslos)
- [GetThingFireOffset](#getthingfireoffset)
- [SetThingFireOffset](#setthingfireoffset)
- [GetThingUserData](#getthinguserdata)
- [SetThingUserData](#setthinguserdata)
- [GetThingCollideSize](#getthingcollidesize)
- [SetThingCollideSize](#setthingcollidesize)
- [GetThingMoveSize](#getthingmovesize)
- [SetThingMoveSize](#setthingmovesize)
- [GetThingMass](#getthingmass)
- [SetThingMass](#setthingmass)
- [SyncThingPos](#syncthingpos)
- [SyncThingAttachment](#syncthingattachment)
- [SyncThingState](#syncthingstate)
- [AttachThingToThingEx](#attachthingtothingex)
- [GetThingAttachedThing](#getthingattachedthing)
- [GetMeshByName](#getmeshbyname)
- [GetNodeByName](#getnodebyname)
- [AttachThingToThingMesh](#attachthingtothingmesh)
- [DetachThingMesh](#detachthingmesh)
- [SetThingMesh](#setthingmesh)
- [RestoreThingMesh](#restorethingmesh)
- [GetThingAlpha](#getthingalpha)
- [SetThingAlpha](#setthingalpha)
- [GetCameraFOV](#getcamerafov)
- [SetCameraFOV](#setcamerafov)
- [ResetCameraFOV](#resetcamerafov)
- [SetCameraLookInterp](#setcameralookinterp)
- [SetCameraPosInterp](#setcameraposinterp)
- [SetCameraInterpSpeed](#setcamerainterpspeed)
- [SetCameraPosition](#setcameraposition)
- [AnimateSpriteSize](#animatespritesize)
- [GetCameraPosition](#getcameraposition)
- [SetCameraFadeThing](#setcamerafadething)
- [SetExtCamOffset](#setextcamoffset)
- [SetExtCamOffsetToThing](#setextcamoffsettothing)
- [SetExtCamLookOffsetToThing](#setextcamlookoffsettothing)
- [SetExtCamLookOffset](#setextcamlookoffset)
- [RestoreExtCam](#restoreextcam)
- [PlayForceMoveMode](#playforcemovemode)
- [IsThingAutoAiming](#isthingautoaiming)
- [GetMoveStatus](#getmovestatus)
- [CreateLaser](#createlaser)
- [CreateLightning](#createlightning)
- [MakeFairyDust](#makefairydust)
- [MakeFairyDustDeluxe](#makefairydustdeluxe)
- [SetPuppetModeFPS](#setpuppetmodefps)
- [SetMoveMode](#setmovemode)
- [CheckFloorDistance](#checkfloordistance)
- [CheckPathToPoint](#checkpathtopoint)
- [SetThingStateChange](#setthingstatechange)
- [CreatePolylineThing](#createpolylinething)
- [StartQuetzAnim](#startquetzanim)
- [BoardVehicle](#boardvehicle)
- [FadeInTrack](#fadeintrack)
- [IsGhostVisible](#isghostvisible)
- [MakeCamera2LikeCamera1](#makecamera2likecamera1)

## WaitForStop

```cog
WaitForStop(Thing thing)
```

## WaitForAnimStop

```cog
WaitForAnimStop(int animID)
```

## StopThing

```cog
StopThing(Thing thing)
```

## DestroyThing

```cog
DestroyThing(Thing thing)
```

## GetThingHealth

```cog
GetThingHealth(Thing thing) -> float
```

## GetThingMaxHealth

```cog
GetThingMaxHealth(Thing thing) -> float
```

## GetHealth

```cog
GetHealth(Thing thing) -> float
```

## HealThing

```cog
HealThing(Thing thing, float health)
```

## GetThingLight

```cog
GetThingLight(Thing thing) -> Vector
```

## SetThingLight

```cog
SetThingLight(Thing thing, Vector value, float maxRadius, float timeDelta)
```

## ThingLight

```cog
ThingLight(Thing thing, Vector value, float maxRadius, float timeDelta)
```

## ThingLightAnim

```cog
ThingLightAnim(Thing thing, Vector startColor, float startRadius, Vector value, float endRadius, float speed) -> int
```

## ThingFadeAnim

```cog
ThingFadeAnim(Thing thing, float startAlpha, float endAlpha, float timeDelta, int bLoop) -> int
```

## CreateThing

```cog
CreateThing(Template template, Thing refThing) -> int
```

## CreateThingAtPos

```cog
CreateThingAtPos(Template template, Sector sector, Vector pos, Vector pyr) -> int
```

## CaptureThing

```cog
CaptureThing(Thing thing)
```

## ReleaseThing

```cog
ReleaseThing(Thing thing)
```

## SetThingVel

```cog
SetThingVel(Thing thing, Vector vel)
```

## AddThingVel

```cog
AddThingVel(Thing thing, Vector vel)
```

## ApplyForce

```cog
ApplyForce(Thing thing, Vector vec)
```

## DetachThing

```cog
DetachThing(Thing thing)
```

## GetAttachFlags

```cog
GetAttachFlags(Thing thing) -> int
```

## GetThingAttachFlags

```cog
GetThingAttachFlags(Thing thing) -> int
```

## AttachThingToSurf

```cog
AttachThingToSurf(Thing thing, Surface surf)
```

## AttachThingToThing

```cog
AttachThingToThing(Thing thing, Thing attachThing)
```

## SetArmedMode

```cog
SetArmedMode(Thing thing, int armedMode)
```
Sets puppet [`armed mode`](../pup.md#pup-armed-modes) for `thing` object.  
The object needs to have both a model and puppet object assigned.

**Parameters**:
 * `thing` - The game object to set new armed mode.
 * armedMode - The [`puppet armed mode`](../pup.md#pup-move-modes) number (0-7).

## SetThingFlags

```cog
SetThingFlags(Thing thing, int flags)
```

## ClearThingFlags

```cog
ClearThingFlags(Thing thing, int flags)
```

## TeleportThing

```cog
TeleportThing(Thing destThing, Thing srcThing)
```

## SetThingType

```cog
SetThingType(Thing thing, int type)
```

## SetCollideType

```cog
SetCollideType(Thing thing, int type)
```

## SetHeadLightIntensity

```cog
SetHeadLightIntensity(Thing thing, Vector color) -> Vector
```

## GetThingCurLightMode

```cog
GetThingCurLightMode(Thing thing) -> int
```

## SetThingCurLightMode

```cog
SetThingCurLightMode(Thing thing, int mode)
```

## SetActorExtraSpeed

```cog
SetActorExtraSpeed(Thing thing, float speed)
```

## SetThingPosEx

```cog
SetThingPosEx(Thing thing, Vector vecPos, Sector sector) -> int
```

## SetThingMaxVel

```cog
SetThingMaxVel(Thing thing, float maxSpeed)
```

## SetThingMaxAngVel

```cog
SetThingMaxAngVel(Thing thing, float maxRotSpeed)
```

## SetThingJointAngle

```cog
SetThingJointAngle(Thing thing, int jointNum, float angle)
```

## SetThingMaxHeadPitch

```cog
SetThingMaxHeadPitch(Thing thing, float maxPitch) -> float
```

## SetThingMinHeadPitch

```cog
SetThingMinHeadPitch(Thing thing, float minPitch) -> float
```

## GetThingMaxHeadPitch

```cog
GetThingMaxHeadPitch(Thing thing) -> float
```

## GetThingMinHeadPitch

```cog
GetThingMinHeadPitch(Thing thing) -> float
```

## SetThingMaxHeadYaw

```cog
SetThingMaxHeadYaw(Thing thing, float maxYaw) -> float
```

## GetThingMaxHeadYaw

```cog
GetThingMaxHeadYaw(Thing thing) -> float
```

## SetThingLVecPYR

```cog
SetThingLVecPYR(Thing thing, Vector lvec)
```

## SetActorHeadPYR

```cog
SetActorHeadPYR(Thing thing, Vector pyr)
```

## SetThingAirDrag

```cog
SetThingAirDrag(Thing thing, float drag)
```

## SetThingMaxRotVel

```cog
SetThingMaxRotVel(Thing thing, float vel)
```

## SetThingMaxHeadVel

```cog
SetThingMaxHeadVel(Thing thing, float vel)
```

## ResetThing

```cog
ResetThing(Thing thing)
```

## MoveThing

```cog
MoveThing(Thing thing, Vector vecDirection, float moveDist, float timeDelta) -> int
```

## MoveThingToPos

```cog
MoveThingToPos(Thing thing, Vector pos, float time) -> int
```

## GetThingType

```cog
GetThingType(Thing thing) -> int
```

## IsThingMoving

```cog
IsThingMoving(Thing thing) -> int
```

## IsMoving

```cog
IsMoving(Thing thing) -> int
```

## GetCurFrame

```cog
GetCurFrame(Thing thing) -> int
```

## GetGoalFrame

```cog
GetGoalFrame(Thing thing) -> int
```

## GetThingParent

```cog
GetThingParent(Thing thing) -> int
```

## GetThingSector

```cog
GetThingSector(Thing thing) -> int
```

## GetThingPos

```cog
GetThingPos(Thing thing) -> Vector
```

## SetThingPos

```cog
SetThingPos(Thing thing, Vector newPos) -> int
```

## GetThingVel

```cog
GetThingVel(Thing thing) -> Vector
```

## GetThingUVec

```cog
GetThingUVec(Thing thing) -> Vector
```

## GetThingLVec

```cog
GetThingLVec(Thing thing) -> Vector
```

## GetThingRVec

```cog
GetThingRVec(Thing thing) -> Vector
```

## GetThingFlags

```cog
GetThingFlags(Thing thing) -> int
```

## GetCollideType

```cog
GetCollideType(Thing thing) -> int
```

## GetHeadLightIntensity

```cog
GetHeadLightIntensity(Thing thing, Vector color) -> Vector
```

## IsThingVisible

```cog
IsThingVisible(Thing thing) -> int
```

## GetThingGuid

```cog
GetThingGuid(Thing thing) -> int
```

## GetGuidThing

```cog
GetGuidThing(int guid) -> int
```

## GetThingMaxVel

```cog
GetThingMaxVel(Thing thing) -> float
```

## GetThingMaxAngVel

```cog
GetThingMaxAngVel(Thing thing) -> float
```

## GetThingJointAngle

```cog
GetThingJointAngle(Thing thing, int jointNum) -> float
```

## InterpolatePYR

```cog
InterpolatePYR(Vector axisX, Vector axisY, Vector axisZ, float angle) -> Vector
```

## GetThingLVecPYR

```cog
GetThingLVecPYR(Thing thing) -> Vector
```

## GetActorHeadPYR

```cog
GetActorHeadPYR(Thing thing) -> Vector
```

## GetThingJointPos

```cog
GetThingJointPos(Thing thing, int jointNum) -> Vector
```

## IsThingModelName

```cog
IsThingModelName(Thing thing, string modelName) -> int
```

## GetThingMaxRotVel

```cog
GetThingMaxRotVel(Thing thing) -> float
```

## GetThingMaxHeadVel

```cog
GetThingMaxHeadVel(Thing thing) -> float
```

## CopyOrient

```cog
CopyOrient(Thing srcThing, Thing destThing)
```

## CopyOrientAndPos

```cog
CopyOrientAndPos(Thing srcThing, Thing dstThing)
```

## GetThingInsertOffset

```cog
GetThingInsertOffset(Thing thing) -> Vector
```

## SetThingInsertOffset

```cog
SetThingInsertOffset(Thing thing, Vector offset) -> Vector
```

## GetThingEyeOffset

```cog
GetThingEyeOffset(Thing thing) -> Vector
```

## SetThingPulse

```cog
SetThingPulse(Thing thing, float secPulse)
```

## SetThingTimer

```cog
SetThingTimer(Thing thing, float secTimer)
```

## GetInv

```cog
GetInv(Thing thing, int typeId) -> float
```

## SetInv

```cog
SetInv(Thing thing, int typeId, float amount)
```

## ChangeInv

```cog
ChangeInv(Thing thing, int typeId, float amount) -> float
```

## GetInvCog

```cog
GetInvCog(Thing thing, int typeId) -> int
```

## GetInvMin

```cog
GetInvMin(Thing thing, int bin) -> float
```

## GetInvMax

```cog
GetInvMax(Thing thing, int bin) -> float
```

## PlayKey

```cog
PlayKey(Thing thing, Keyframe key, int lowPriority, int playFlags, int bWait) -> int
```
Plays puppet `key` animation for `thing` object.  
The object needs to have both a model and puppet object assigned.

**Parameters**:
 * `thing` -  The game object to play the `key` animation. The object has to have model and puppet set.
 * `key` - The keyframe animation to play.
 * `lowPriority`- The [low-priority](../pup.md#pup-low-pri) value of puppet animated joints with low priority.  
  The high priority is set to `lowPriority` + 2.
 * `playFlags` - The [puppet track flags](../pup.md#pup-flags).
 * `bWait` -  If 1 - True wait for the animation to finish playing.

 **Return**  
  Returns the track number where the `key` is being played.

## PlayKeyEx

```cog
PlayKeyEx(Thing thing, Keyframe key, int lowPriority, int highPriority, int playFlags, int bWait) -> int
```
Plays puppet `key` animation for `thing` object.  
The object needs to have both a model and puppet object assigned.

**Parameters**:
 * `thing` -  The game object to play the `key` animation.
 * `key` - The keyframe animation to play.
 * `lowPriority`- The [low-priority](../pup.md#pup-low-pri) value of puppet animated joints with low priority.
 * `highPriority`- The [heigh-priority](../pup.md#pup-low-pri) value of puppet animated joints with high priority.
 * `playFlags` - The [puppet track flags](../pup.md#pup-flags).
 * `bWait` -  If 1 - True wait for the animation to finish playing.

 **Return**  
  Returns the track number where the `key` is being played.

## StopKey

```cog
StopKey(Thing thing, int trackNum, float fadeTime)
```
Stops the playback of the animation track for the `thing` object.

**Parameters**:
 * `thing` - The game object to stop the `track` animation. The object has to have model and puppet set.
 * `trackNum` - Puppet track number to stop playing.
 * `fadeTime` - Animation stop fade-out time in seconds. Must be greater than or equal to 0.

## PauseKey

```cog
PauseKey(Thing thing, int trackNum) -> int
```
Pauses `thing`'s puppet track animation.

**Parameters**:
 * `thing` - The game object to pause the `track` animation.
 * `trackNum` - Puppet track number to pause playing.

 **Return**  
  On success 1 is returned, otherwise -1.

## ResumeKey

```cog
ResumeKey(Thing thing, int trackNum) -> int
```
Resumes paused `thing` puppet `track` animation.

**Parameters**:
 * `thing` - The game object to resume the `track` animation.
 * `trackNum` - Puppet track number to resume playing.

 **Return**  
  On success 1 is returned, otherwise -1.

## SetThingModel

```cog
SetThingModel(Thing thing, Model model) -> int
```

## GetThingModel

```cog
GetThingModel(Thing thing) -> int
```

## PlayMode

```cog
PlayMode(Thing thing, int submode, int bWait) -> int
```
Plays [puppet submode](../pup.md#sub-mode-list) animation for `thing` object.  
The object needs to have both a model and puppet object assigned.

**Parameters**:
 * `thing` - The game object to play the `submode` track.
 * `submode`- The [puppet submode](../pup.md#sub-mode-state-table) number to play.
 * `bWait` - If 1 - True wait for the submode animation to finish playing.

 **Return**  
  Returns the track number where the `submode` animation is being played.

## StopMode

```cog
StopMode(Thing thing, int submode, float fadeTime)
```
Stops playing [`puppet submode`](../pup.md#sub-mode-list) track for `thing` object.

**Parameters**:
 * `thing` - The game object to stop the `submode` track.
 * `submode` - The [puppet submode](../pup.md#sub-mode-state-table) number to stop playing. 
 * `fadeTime` - Animation stop fade-out time in seconds. Must be greater than or equal to 0.

## SynchMode

```cog
SynchMode(Thing thing, int oldMode, int newMode, float unknown/unused, int bReverse)
```
Synchronizes [puppet submode](../pup.md#sub-mode-list) track from old to new for `thing` object.  
That is, stops playing `old` submode track and starts playing the `new` submode track at the same animation frame where the `old` was stopped.

Synchronizes the puppet [`submode` track](../pup.md#sub-mode-list) track from the old mode to the new mode for the `thing` object. This stops playing the old [`submode` track](../pup.md#sub-mode-list) track and starts playing the new [`submode` track](../pup.md#sub-mode-list) track from the same animation frame where the old track was stopped.

**Parameters**:
 * `thing` - The game object to play the `submode` track.
 * `oldMode` - The [puppet submode](../pup.md#sub-mode-state-table) number to sync from.
 * `newMode` - The [puppet submode](../pup.md#sub-mode-state-table) number to sync to.
 * `unused` - Not used
 * `bReversed`

## IsModePlaying

```cog
IsModePlaying(Thing thing, int submode) -> int
```
Checks if [`puppet submode`](../pup.md#sub-mode-list) track is playing at the moment for the `thing`.

**Parameters**:
 * `thing` - The game object to check the `submode` track. The object has to have model and puppet set.
 * `submode` - The [puppet submode](../pup.md#sub-mode-state-table) number to check.

 **Return**  
  Returns 0 if submode track is not playing, 1 if submode track is playing and 2 if submode track is paused. On error -1 is returned.

## PauseMode

```cog
PauseMode(Thing thing, int submode) -> int
```
Pauses the [`puppet submode`](../pup.md#sub-mode-list) track for `thing`.

**Parameters**:
 * `thing` - The game object to pause the `submode` track. The object has to have model and puppet set.
 * `submode` - The [puppet submode](../pup.md#sub-mode-state-table) number to pause playing.

 **Return**  
  Returns 0 if submode track is not playing, 1 if submode track was paused and 2 if submode track is already paused. On error -1 is returned.

## ResumeMode

```cog
ResumeMode(Thing thing, int submode) -> int
```
Resumes playing [`puppet submode`](../pup.md#sub-mode-list) track animation for `thing` object.

**Parameters**:
 * `thing` - The game object to resume playing the `submode` track.
* `submode` - The [puppet submode](../pup.md#sub-mode-state-table) number to resume playing.

 **Return**
   - 0 if submode track is not playing
   - 1 if submode track is resumed to play
   - 2 if submode track is not paused
  
  On error -1 is returned.

## TrackToMode

```cog
TrackToMode(Thing thing, int trackNum) -> int
```
Returns the [`puppet submode`](../pup.md#sub-mode-list) number of the `thing` object for the specified track number.

**Parameters**:
 * `thing` - Playing track number to retrieve [`submode`](../pup.md#sub-mode-list).
 * `trackNum` - Track number of the playing track from which to retrieve the [`submode`](../pup.md#sub-mode-list).

 **Return**  
  On success [`puppet submode`](../pup.md#sub-mode-list) number is returned.  
  On error -1 is returned e.g. invalid `track` number.

## WaitMode

```cog
WaitMode(Thing thing, int submode) -> int
```
Waits for the [`puppet submode`](../pup.md#pup-move-modes) track to finish playing.

**Parameters**:
 * `thing` - The game object for which to wait until the track has finished playing.
 * `submode` - The [puppet submode](../pup.md#sub-mode-state-table) number.

 **Return**  
  If `submode` is playing 1 is returned, otherwise 0.  
  On error -1 is returned.

## GetMajorMode

```cog
GetMajorMode(Thing thing) -> int
```
Returns the current [`major mode`](../pup.md#mode) for the `object`'s puppet.

**Parameters**:
 * `thing` - The game object to retrieve the current major mode. The object has to have model and puppet set.

 **Return**  
  On success current major mode number is returned. On error -1 is returned.

## FirstThingInSector

```cog
FirstThingInSector(Sector thing) -> int
```

## NextThingInSector

```cog
NextThingInSector(Thing thing) -> int
```

## PrevThingInSector

```cog
PrevThingInSector(Thing thing) -> int
```

## MoveToFrame

```cog
MoveToFrame(Thing thing, int frame, float speed)
```

## SkipToFrame

```cog
SkipToFrame(Thing thing, int frame, float speed)
```

## JumpToFrame

```cog
JumpToFrame(Thing thing, int frame, Sector sector)
```

## PathMovePause

```cog
PathMovePause(Thing thing) -> int
```

## PathMoveResume

```cog
PathMoveResume(Thing thing) -> int
```

## Rotate

```cog
Rotate(Thing thing, float degrees, int axis, float rotTime)
```

## RotatePivot

```cog
RotatePivot(Thing thing, int frame, float v7)
```

## RotateToPYR

```cog
RotateToPYR(Thing thing, Vector pyr, float time)
```

## GetThingTemplate

```cog
GetThingTemplate(Thing thing) -> int
```

## DamageThing

```cog
DamageThing(Thing victim, float damage, int damageclass, Thing source) -> float
```
Damages `victim` game object.

**Parameters**:
 * `victim` - The game object to damage.
 * `damage` - The amount of damage to apply to `victim`.
 * `damageclass` - The [damage class type](../flags.md#damage-class-flags) to use for damage.
 * `source` - The game object that inflicted the damage.

 **Return**  
  Returns the amount of actual damage applied to `victim`.

## SetLifeLeft

```cog
SetLifeLeft(Thing thing, float secLeft)
```
Sets the time to live for a game object.

**Parameters**:
 * `thing` - The game object whose life left is being set.
 * `secLeft` - The number of seconds the object will live for.

## GetLifeLeft

```cog
GetLifeLeft(Thing thing) -> float
```
Gets the remaining time to live for a game object.

**Parameters**:
 * `thing` - The game object whose remaining life time is being retrieved.

**Return**  
The number of seconds the object has left to live.

## SetThingThrust

```cog
SetThingThrust(Thing thing, Vector thrust) -> Vector
```

## GetThingThrust

```cog
GetThingThrust(Thing thing) -> Vector
```

## SetThingHealth

```cog
SetThingHealth(Thing thing, float health)
```

## SetHealth

```cog
SetHealth(Thing thing, float health)
```

## AmputateJoint

```cog
AmputateJoint(Thing thing, int joint)
```

## SetActorWeapon

```cog
SetActorWeapon(Thing actor, Template weapon)
```

## GetActorWeapon

```cog
GetActorWeapon(Thing actor) -> int
```

## GetPhysicsFlags

```cog
GetPhysicsFlags(Thing thing) -> int
```

## SetPhysicsFlags

```cog
SetPhysicsFlags(Thing thing, int physflags)
```

## ClearPhysicsFlags

```cog
ClearPhysicsFlags(Thing thing, int physflags)
```

## ParseArg

```cog
ParseArg(Thing thing, string args)
```

## GetThingRotVel

```cog
GetThingRotVel(Thing thing) -> Vector
```

## SetThingRotVel

```cog
SetThingRotVel(Thing thing, Vector vel)
```

## GetThingRotThrust

```cog
GetThingRotThrust(Thing thing) -> Vector
```

## SetThingRotThrust

```cog
SetThingRotThrust(Thing thing, Vector vec)
```

## SetThingLook

```cog
SetThingLook(Thing thing, Vector look)
```

## SetThingHeadLookPos

```cog
SetThingHeadLookPos(Thing thing, Vector look)
```

## SetThingHeadLookThing

```cog
SetThingHeadLookThing(Thing thing, Thing lookThing)
```

## IsThingCrouching

```cog
IsThingCrouching(Thing thing) -> int
```

## IsCrouching

```cog
IsCrouching(Thing thing) -> int
```

## GetThingClassCog

```cog
GetThingClassCog(Thing thing) -> int
```

## SetThingClassCog

```cog
SetThingClassCog(Thing thing, cog thingCog)
```

## GetThingCaptureCog

```cog
GetThingCaptureCog(Thing thing) -> int
```

## SetThingCaptureCog

```cog
SetThingCaptureCog(Thing thing, cog captureCog)
```

## GetThingRespawn

```cog
GetThingRespawn(Thing thing) -> float
```

## GetThingSignature

```cog
GetThingSignature(Thing thing) -> int
```

## SetThingAttachFlags

```cog
SetThingAttachFlags(Thing thing, int attflags)
```

## ClearThingAttachFlags

```cog
ClearThingAttachFlags(Thing thing, int attflags)
```

## GetParticleSize

```cog
GetParticleSize(Thing thing) -> float
```

## SetParticleSize

```cog
SetParticleSize(Thing thing, float size)
```

## GetParticleGrowthSpeed

```cog
GetParticleGrowthSpeed(Thing thing) -> float
```

## SetParticleGrowthSpeed

```cog
SetParticleGrowthSpeed(Thing thing, float speed)
```

## GetParticleTimeoutRate

```cog
GetParticleTimeoutRate(Thing thing) -> float
```

## SetParticleTimeoutRate

```cog
SetParticleTimeoutRate(Thing thing, float timeoutRate)
```

## GetTypeFlags

```cog
GetTypeFlags(Thing thing) -> int
```

## SetTypeFlags

```cog
SetTypeFlags(Thing thing, int flags)
```

## ClearTypeFlags

```cog
ClearTypeFlags(Thing thing, int flags)
```

## GetActorFlags

```cog
GetActorFlags(Thing thing) -> int
```

## SetActorFlags

```cog
SetActorFlags(Thing thing, int flags)
```

## ClearActorFlags

```cog
ClearActorFlags(Thing thing, int flags)
```

## GetWeaponFlags

```cog
GetWeaponFlags(Thing thing) -> int
```

## SetWeaponFlags

```cog
SetWeaponFlags(Thing thing, int flags)
```

## ClearWeaponFlags

```cog
ClearWeaponFlags(Thing thing, int flags)
```

## GetExplosionFlags

```cog
GetExplosionFlags(Thing thing) -> int
```

## SetExplosionFlags

```cog
SetExplosionFlags(Thing thing, int flags)
```

## ClearExplosionFlags

```cog
ClearExplosionFlags(Thing thing, int flags)
```

## GetItemFlags

```cog
GetItemFlags(Thing thing) -> int
```

## SetItemFlags

```cog
SetItemFlags(Thing thing, int flags)
```

## ClearItemFlags

```cog
ClearItemFlags(Thing thing, int flags)
```

## GetParticleFlags

```cog
GetParticleFlags(Thing thing) -> int
```

## SetParticleFlags

```cog
SetParticleFlags(Thing thing, int flags)
```

## ClearParticleFlags

```cog
ClearParticleFlags(Thing thing, int flags)
```

## TakeItem

```cog
TakeItem(Thing item, Thing thing)
```

## HasLOS

```cog
HasLOS(Thing viewer, Thing target) -> int
```

## GetThingFireOffset

```cog
GetThingFireOffset(Thing thing) -> Vector
```

## SetThingFireOffset

```cog
SetThingFireOffset(Thing thing, Vector offset)
```

## GetThingUserData

```cog
GetThingUserData(Thing thing) -> float
```

## SetThingUserData

```cog
SetThingUserData(Thing thing, float userval)
```

## GetThingCollideSize

```cog
GetThingCollideSize(Thing thing) -> float
```

## SetThingCollideSize

```cog
SetThingCollideSize(Thing thing, float size)
```

## GetThingMoveSize

```cog
GetThingMoveSize(Thing thing) -> float
```

## SetThingMoveSize

```cog
SetThingMoveSize(Thing thing, float movesize)
```

## GetThingMass

```cog
GetThingMass(Thing thing) -> float
```

## SetThingMass

```cog
SetThingMass(Thing thing, float mass)
```

## SyncThingPos

```cog
SyncThingPos(Thing thing)
```

## SyncThingAttachment

```cog
SyncThingAttachment(Thing thing)
```

## SyncThingState

```cog
SyncThingState(Thing thing)
```

## AttachThingToThingEx

```cog
AttachThingToThingEx(Thing thing, Thing attachThing, int attflags)
```

## GetThingAttachedThing

```cog
GetThingAttachedThing(Thing thing, int attype) -> int
```

## GetMeshByName

```cog
GetMeshByName(Thing thing, string meshName) -> int
```

## GetNodeByName

```cog
GetNodeByName(Thing thing, string nodeName) -> int
```

## AttachThingToThingMesh

```cog
AttachThingToThingMesh(Thing attachThing, Template template, int meshNum) -> int
```

## DetachThingMesh

```cog
DetachThingMesh(Thing thing)
```

## SetThingMesh

```cog
SetThingMesh(Thing thing, int meshNum, Model model, int meshNumSrc) -> int
```

## RestoreThingMesh

```cog
RestoreThingMesh(Thing thing, int refnum)
```

## GetThingAlpha

```cog
GetThingAlpha(Thing thing) -> float
```

## SetThingAlpha

```cog
SetThingAlpha(Thing thing, float alpha) -> float
```

## GetCameraFOV

```cog
GetCameraFOV() -> float
```

## SetCameraFOV

```cog
SetCameraFOV(float fov, int bInterp, float timeDelta)
```

## ResetCameraFOV

```cog
ResetCameraFOV(int bInterp, float time)
```

## SetCameraLookInterp

```cog
SetCameraLookInterp(int camNum, int bEnable)
```

## SetCameraPosInterp

```cog
SetCameraPosInterp(int camNum, int bDollyMode)
```

## SetCameraInterpSpeed

```cog
SetCameraInterpSpeed(int camNum, float speed)
```

## SetCameraPosition

```cog
SetCameraPosition(int camNum, Vector vec)
```

## AnimateSpriteSize

```cog
AnimateSpriteSize(Thing sprite, Vector vecStart, Vector vecEnd, float deltaTime) -> int
```

## GetCameraPosition

```cog
GetCameraPosition(int camNum) -> Vector
```

## SetCameraFadeThing

```cog
SetCameraFadeThing(int camNum, Thing secondaryFocusThing, Thing primaryFocusThing, int bBackside)
```

## SetExtCamOffset

```cog
SetExtCamOffset(Vector vec)
```

## SetExtCamOffsetToThing

```cog
SetExtCamOffsetToThing(Thing thing)
```

## SetExtCamLookOffsetToThing

```cog
SetExtCamLookOffsetToThing(Thing thing)
```

## SetExtCamLookOffset

```cog
SetExtCamLookOffset(Vector vec)
```

## RestoreExtCam

```cog
RestoreExtCam()
```

## PlayForceMoveMode

```cog
PlayForceMoveMode(Thing thing, int submode) -> int
```
## IsThingAutoAiming

```cog
IsThingAutoAiming()
```
Not used.

## GetMoveStatus

```cog
GetMoveStatus(Thing thing) -> int
```

## CreateLaser

```cog
CreateLaser(Thing srcThing, Vector offset, Vector endPos, float baseRadius, float tipRadius, float duration) -> int
```

## CreateLightning

```cog
CreateLightning(Thing sourceThing, Vector offset, Vector endPos, float baseRadius, float tipRadius, float duration) -> int
```

## MakeFairyDust

```cog
MakeFairyDust(Thing thing, Vector pos)
```

## MakeFairyDustDeluxe

```cog
MakeFairyDustDeluxe(Thing thing, Vector pos)
```

## SetPuppetModeFPS

```cog
SetPuppetModeFPS(Thing thing, int mode, int submode, float fps) -> float
```
Sets a new FPS for the [puppet mode](../pup.md#mode-types) and [puppet submode](../pup.md#sub-mode-list) animation track of the `thing` object.

**Parameters**:
 * `thing` - The game object to set the keyframe FPS.
 * `mode` - The [`puppet mode`](../pup.md#mode-types number) number.
 * `submode` - The [puppet submode](../pup.md#sub-mode-state-table) number.
 * `fps` - The new keyframe FPS

 **Return**  
  Returns previous track FPS.

## SetMoveMode

```cog
SetMoveMode(Thing thing, int newMode) -> int
```
Sets [`puppet move mode`](../pup.md#pup-move-modes) for `thing` object.  
The object needs to have both a model and puppet object assigned.

**Parameters**:
 * `thing` - The game object to set new move mode.
 * `moveMode` - The [`puppet move mode`](../pup.md#pup-move-modes) number (0-2).

 **Return**  
  On success 0 is returned, otherwise -1.

## CheckFloorDistance

```cog
CheckFloorDistance(Thing thing) -> float
```

## CheckPathToPoint

```cog
CheckPathToPoint(Thing viewer, Vector vecTarget, int bDetectThings, int bSkipFloor) -> float
```

## SetThingStateChange

```cog
SetThingStateChange(Thing thing, int state, int armModeState)
```

## CreatePolylineThing

```cog
CreatePolylineThing(Thing srcThing, Optional[Thing] destThing, Vector endPos, Material material, float baseRadius, float tipRadius, float duration) -> int
```

## StartQuetzAnim

```cog
StartQuetzAnim(Thing thing, int mode) -> int
```

## BoardVehicle

```cog
BoardVehicle(Thing thing) -> int
```

## FadeInTrack

```cog
FadeInTrack(Thing thing, int trackNum, float speed) -> int
```
Causes the track animation to fade-in for the thing object.  
The object needs to have both a model and puppet object assigned.

**Parameters**:
 * `thing` - The game object to fade-in puppet `track` animation.
 * `trackNum` - Puppet track number to play fade-in mode.
 * `fadeTime` - Track fade-in speed. Should be greater than 0, else 1 is set.

 **Return**  
  On success 1 is returned, otherwise -1.

## IsGhostVisible

```cog
IsGhostVisible(Thing thing, Thing ghostThing, float angle) -> int
```

## MakeCamera2LikeCamera1

```cog
MakeCamera2LikeCamera1(Thing cam1Pos, Thing cam1Look) -> int
```
Assigns the position and focus of camera 1 aka external camera (3rd person) to the `cam1Pos` and `can1Look` objects.

**Parameters**:
 * `cam1Pos` - The game object to which camera 1's position is assigned. Must be a valid, non-free object.
 * `cam1Look` - The game object to which camera 1's focus is assigned. Must be a valid, non-free object.

 **Return**  
  On success 1 is returned, otherwise -1.
