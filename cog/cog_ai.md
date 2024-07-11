# AI COG Functions

## Function List

- [AIGetMode](#aigetmode)
- [AISetMode](#aisetmode)
- [AIClearMode](#aiclearmode)
- [AIGetSubMode](#aigetsubmode)
- [AISetSubMode](#aisetsubmode)
- [AIClearSubMode](#aiclearsubmode)
- [AIGetMovePos](#aigetmovepos)
- [AISetMovePos](#aisetmovepos)
- [AIGetHomePos](#aigethomepos)
- [AIPauseMove](#aipausemove)
- [AISetMaxHomeDist](#aisetmaxhomedist)
- [AIGetGoalThing](#aigetgoalthing)
- [AIGetGoalLVec](#aigetgoallvec)
- [FirstThingInView](#firstthinginview)
- [NextThingInView](#nextthinginview)
- [ThingViewDot](#thingviewdot)
- [AISetFireTarget](#aisetfiretarget)
- [AISetMoveThing](#aisetmovething)
- [AISetLookPos](#aisetlookpos)
- [AISetMoveSpeed](#aisetmovespeed)
- [AISetLookFrame](#aisetlookframe)
- [AISetMoveFrame](#aisetmoveframe)
- [IsAITargetInSight](#isaitargetinsight)
- [AIFlee](#aiflee)
- [AIStopFlee](#aistopflee)
- [AISetClass](#aisetclass)
- [AIJump](#aijump)
- [AIEnableInstinct](#aienableinstinct)
- [AISetLookThing](#aisetlookthing)
- [AISetLookThingEyeLevel](#aisetlookthingeyelevel)
- [AIWaitForStop](#aiwaitforstop)
- [AIWaitForHeadTracking](#aiwaitforheadtracking)
- [AIGetArmedMode](#aigetarmedmode)
- [AIKnockout](#aiknockout)
- [AIRunOver](#airunover)
- [AISetAllowedSurfaceType](#aisetallowedsurfacetype)
- [AIClearAllowedSurfaceType](#aiclearallowedsurfacetype)
- [AISetCutsceneMode](#aisetcutscenemode)
- [AIClearCutsceneMode](#aiclearcutscenemode)
- [AISetGoalThing](#aisetgoalthing)
- [AIEnableHeadTracking](#aienableheadtracking)
- [AIDisableHeadTracking](#aidisableheadtracking)
- [AIEnableBodyTracking](#aienablebodytracking)
- [AIDisableBodyTracking](#aidisablebodytracking)
- [AISetWpnt](#aisetwpnt)
- [AISetWpntRank](#aisetwpntrank)
- [AISetWpntFlags](#aisetwpntflags)
- [AIClearWpntFlags](#aiclearwpntflags)
- [AISetActiveWpntLayer](#aisetactivewpntlayer)
- [AIConnectWpnts](#aiconnectwpnts)
- [AIConnectWpntsOneWay](#aiconnectwpntsoneway)
- [AITraverseWpnts](#aitraversewpnts)
- [AIClearTraverseWpnts](#aicleartraversewpnts)
- [AIFindNearestWpnt](#aifindnearestwpnt)
- [AIWpntHuntTarget](#aiwpnthunttarget)
- [AISetInstinctWpntMode](#aisetinstinctwpntmode)
- [AIClearInstinctWpntMode](#aiclearinstinctwpntmode)
- [AISpat](#aispat)
- [AIFleeToWpnt](#aifleetowpnt)

## AIGetMode

```cog
AIGetMode(Thing thing) -> int
```

## AISetMode

```cog
AISetMode(Thing thing, int newMode)
```

## AIClearMode

```cog
AIClearMode(Thing thing, int mode)
```

## AIGetSubMode

```cog
AIGetSubMode(Thing thing) -> int
```

## AISetSubMode

```cog
AISetSubMode(Thing thing, int submode)
```

## AIClearSubMode

```cog
AIClearSubMode(Thing thing, int submode)
```

## AIGetMovePos

```cog
AIGetMovePos(Thing thing) -> Vector
```

## AISetMovePos

```cog
AISetMovePos(Thing thing, Vector pos, int bWait)
```

## AIGetHomePos

```cog
AIGetHomePos(Thing thing) -> int
```

## AIPauseMove

```cog
AIPauseMove(Thing thing, int msecPause)
```

## AISetMaxHomeDist

```cog
AISetMaxHomeDist(Thing thing, float dist)
```

## AIGetGoalThing

```cog
AIGetGoalThing(Thing thing) -> int
```

## AIGetGoalLVec

```cog
AIGetGoalLVec(Thing thing) -> Vector
```

## FirstThingInView

```cog
FirstThingInView(Thing thing, float fovX, float distance, int thingTypeMask) -> int
```

## NextThingInView

```cog
NextThingInView() -> int
```

## ThingViewDot

```cog
ThingViewDot(Thing thing1, Thing thing2) -> float
```

## AISetFireTarget

```cog
AISetFireTarget(Thing thing, Thing target)
```

## AISetMoveThing

```cog
AISetMoveThing(Thing thing, Thing goalThing, int bWait)
```

## AISetLookPos

```cog
AISetLookPos(Thing thing, Vector targetPos)
```

## AISetMoveSpeed

```cog
AISetMoveSpeed(Thing thing, float speed)
```

## AISetLookFrame

```cog
AISetLookFrame(Thing thing, int frameNum)
```

## AISetMoveFrame

```cog
AISetMoveFrame(Thing thing, int frame)
```

## IsAITargetInSight

```cog
IsAITargetInSight(Thing thing) -> int
```

## AIFlee

```cog
AIFlee(Thing thing, Thing fleeFromThing)
```

## AIStopFlee

```cog
AIStopFlee(Thing thing)
```

## AISetClass

```cog
AISetClass(Thing thing, AI class)
```

## AIJump

```cog
AIJump(Thing thing, Vector movePos, float unknown/unused)
```

## AIEnableInstinct

```cog
AIEnableInstinct(Thing thing, string instinctName, int bEnable) -> int
```

## AISetLookThing

```cog
AISetLookThing(Thing thing, Thing target)
```

## AISetLookThingEyeLevel

```cog
AISetLookThingEyeLevel(Thing thing, Thing target)
```

## AIWaitForStop

```cog
AIWaitForStop(Thing thing)
```

## AIWaitForHeadTracking

```cog
AIWaitForHeadTracking(Thing thing)
```

## AIGetArmedMode

```cog
AIGetArmedMode(Thing thing) -> int
```

## AIKnockout

```cog
AIKnockout(Thing thing, float secDuration, int timerId)
```

## AIRunOver

```cog
AIRunOver(Thing thing, float duration, int id)
```

## AISetAllowedSurfaceType

```cog
AISetAllowedSurfaceType(Thing thing, int surftypes)
```

## AIClearAllowedSurfaceType

```cog
AIClearAllowedSurfaceType(Thing thing, int surftypes)
```

## AISetCutsceneMode

```cog
AISetCutsceneMode(Thing thing)
```

## AIClearCutsceneMode

```cog
AIClearCutsceneMode(Thing thing)
```

## AISetGoalThing

```cog
AISetGoalThing(Thing thing, Thing goalThing)
```

## AIEnableHeadTracking

```cog
AIEnableHeadTracking(Thing thing, Thing target)
```

## AIDisableHeadTracking

```cog
AIDisableHeadTracking(Thing thing)
```

## AIEnableBodyTracking

```cog
AIEnableBodyTracking(Thing thing, Thing target)
```

## AIDisableBodyTracking

```cog
AIDisableBodyTracking(Thing thing)
```

## AISetWpnt

```cog
AISetWpnt(Thing thing, int wpntIdx)
```

## AISetWpntRank

```cog
AISetWpntRank(int wpntNum, int rank)
```

## AISetWpntFlags

```cog
AISetWpntFlags(int wpntNum, int flags)
```

## AIClearWpntFlags

```cog
AIClearWpntFlags(int wpntIdx, int flags)
```

## AISetActiveWpntLayer

```cog
AISetActiveWpntLayer(int layer)
```

## AIConnectWpnts

```cog
AIConnectWpnts(int wpntIdx1, int wpntIdx2)
```

## AIConnectWpntsOneWay

```cog
AIConnectWpntsOneWay(int wpntIdx1, int wpntIdx2)
```

## AITraverseWpnts

```cog
AITraverseWpnts(Thing thing, int wpntIdx, float moveSpeed, float degTurn, int mode) -> int
```

## AIClearTraverseWpnts

```cog
AIClearTraverseWpnts(Thing thing)
```

## AIFindNearestWpnt

```cog
AIFindNearestWpnt(Thing thing) -> int
```

## AIWpntHuntTarget

```cog
AIWpntHuntTarget(Thing thing, float moveSpeed, float degTurn) -> int
```

## AISetInstinctWpntMode

```cog
AISetInstinctWpntMode(Thing thing)
```

## AIClearInstinctWpntMode

```cog
AIClearInstinctWpntMode(Thing thing)
```

## AISpat

```cog
AISpat(Thing thing, float duration, int timerId)
```

## AIFleeToWpnt

```cog
AIFleeToWpnt(Thing thing, int idx)
```

