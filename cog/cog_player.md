# Player COG Functions

## Function List

- [SetInvActivated](#setinvactivated)
- [SetInvAvailable](#setinvavailable)
- [SetInvDisabled](#setinvdisabled)
- [IsInvActivated](#isinvactivated)
- [IsInvAvailable](#isinvavailable)
- [SetGoalFlags](#setgoalflags)
- [ClearGoalFlags](#cleargoalflags)
- [GetNumPlayers](#getnumplayers)
- [GetMaxPlayers](#getmaxplayers)
- [GetAbsoluteMaxPlayers](#getabsolutemaxplayers)
- [GetLocalPlayerThing](#getlocalplayerthing)
- [GetPlayerThing](#getplayerthing)
- [GetPlayerNum](#getplayernum)
- [PickupBackpack](#pickupbackpack)
- [CreateBackpack](#createbackpack)
- [NthBackpackBin](#nthbackpackbin)
- [NthBackpackValue](#nthbackpackvalue)
- [numbackpackitems](#numbackpackitems)
- [GetRespawnMask](#getrespawnmask)
- [SetRespawnMask](#setrespawnmask)
- [SyncScores](#syncscores)
- [GetCurItem](#getcuritem)
- [JewelFlyingStatus](#jewelflyingstatus)
- [StartJewelFlying](#startjewelflying)
- [IsAiming](#isaiming)
- [SetSwimmingInventory](#setswimminginventory)
- [StartInvisibility](#startinvisibility)
- [EndInvisibility](#endinvisibility)
- [IsInvisible](#isinvisible)
- [ResetInventory](#resetinventory)
- [MakeMeStop](#makemestop)
- [IsItemFound](#isitemfound)
- [SetWhipElectric](#setwhipelectric)
- [PlayerInPor](#playerinpor)
- [GetCutsceneMode](#getcutscenemode)
- [GetLastWeapon](#getlastweapon)
- [MakeMeAPirate](#makemeapirate)
- [IMPStartFiring](#impstartfiring)
- [IMPEndFiring](#impendfiring)

## SetInvActivated

```cog
SetInvActivated(Thing thing, int typeId, int bActivated)
```

## SetInvAvailable

```cog
SetInvAvailable(Thing thing, int typeId, int bAvailable)
```

## SetInvDisabled

```cog
SetInvDisabled(Thing thing, int typeId, int bDisabled)
```

## IsInvActivated

```cog
IsInvActivated(Thing thing, int bin) -> int
```

## IsInvAvailable

```cog
IsInvAvailable(Thing thing, int typeId) -> int
```

## SetGoalFlags

```cog
SetGoalFlags(Thing thing, int bin, int flags)
```

## ClearGoalFlags

```cog
ClearGoalFlags(Thing thing, int bin, int flags)
```

## GetNumPlayers

```cog
GetNumPlayers() -> int
```

## GetMaxPlayers

```cog
GetMaxPlayers() -> int
```

## GetAbsoluteMaxPlayers

```cog
GetAbsoluteMaxPlayers() -> int
```

## GetLocalPlayerThing

```cog
GetLocalPlayerThing() -> int
```

## GetPlayerThing

```cog
GetPlayerThing(int playerNum) -> int
```

## GetPlayerNum

```cog
GetPlayerNum(Thing thing) -> int
```

## PickupBackpack

```cog
PickupBackpack(Thing thing, Thing backpack)
```

## CreateBackpack

```cog
CreateBackpack(Thing thing) -> int
```

## NthBackpackBin

```cog
NthBackpackBin(Thing thing, int itemNum) -> int
```

## NthBackpackValue

```cog
NthBackpackValue(Thing thing, int itemId) -> float
```

## numbackpackitems

```cog
numbackpackitems(Thing thing) -> int
```

## GetRespawnMask

```cog
GetRespawnMask(Thing thing) -> int
```

## SetRespawnMask

```cog
SetRespawnMask(Thing thing, int mask)
```

## SyncScores

```cog
SyncScores()
```

## GetCurItem

```cog
GetCurItem(Thing thing) -> int
```

## JewelFlyingStatus

```cog
JewelFlyingStatus(int value, Thing plasma)
```

## StartJewelFlying

```cog
StartJewelFlying() -> int
```

## IsAiming

```cog
IsAiming(Thing thing) -> int
```

## SetSwimmingInventory

```cog
SetSwimmingInventory(Thing thing, int bItemsAvailable)
```

## StartInvisibility

```cog
StartInvisibility()
```

## EndInvisibility

```cog
EndInvisibility()
```

## IsInvisible

```cog
IsInvisible() -> int
```

## ResetInventory

```cog
ResetInventory(Thing thing)
```

## MakeMeStop

```cog
MakeMeStop() -> int
```

## IsItemFound

```cog
IsItemFound(int itemID) -> int
```

## SetWhipElectric

```cog
SetWhipElectric(int bElectrict)
```

## PlayerInPor

```cog
PlayerInPor(int bInPor)
```

## GetCutsceneMode

```cog
GetCutsceneMode() -> int
```

## GetLastWeapon

```cog
GetLastWeapon() -> int
```

## MakeMeAPirate

```cog
MakeMeAPirate()
```
Toggles Guybrush easter egg.

## IMPStartFiring

```cog
IMPStartFiring(int fireType)
```

## IMPEndFiring

```cog
IMPEndFiring(int fireType)
```

