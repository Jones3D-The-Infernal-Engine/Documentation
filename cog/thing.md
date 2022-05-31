# Thing COG functions
> :warning: **Work in progress!**

Incomplete list of COG functions for game object.
- [FadeInTrack](#fadeintrack)
- [GetMajorMode](#getmajormode)
- [IsModePlaying](#ismodeplaying)
- [PauseKey](#pausekey)
- [PauseMode](#pausemode)
- [PlayKey](#playkey)
- [PlayKeyEx](#playkeyex)
- [PlayMode](#playmode)
- [ResumeKey](#resumekey)
- [ResumeMode](#resumemode)
- [SetArmedMode](#setarmedmode)
- [SetMoveMode](#setmovemode)
- [SetPuppetModeFPS](#setpuppetmodefps)
- [StopKey](#stopkey)
- [StopMode](#stopmode)
- [TrackToMode](#tracktomode)
- [WaitMode](#waitmode)


## FadeInTrack
```int FadeInTrack(Thing object, int track, float fadeTime)```

Makes `track` animation to fade-in.

**Parameters**:
 * object  
  The game object to fade-in puppet `track` animation. The object has to have model and puppet set.

 * track  
  Puppet track slot number to play fade-in mode.

 * fadeTime  
  Track fade-in speed. Should be greater than 0, else 1 is set.

 **Return**  
  On success 1 is returned, otherwise -1.

## GetMajorMode
```int GetMajorMode(Thing object)```

Returns the [`major mode`](../pup.md#mode) for `object`'s puppet.

**Parameters**:
 * object  
  The game object to retrieve major mode. The object has to have model and puppet set.

 **Return**  
  On success major mode number is returned. On error -1 is returned.
  
## IsModePlaying
```int IsModePlaying(Thing object, int submode)```

Checks if [`puppet submode`](../pup.md#sub-mode-list) track is playing at the moment for the `object`.

**Parameters**:
 * object  
  The game object to check the `submode` track. The object has to have model and puppet set.

 * submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number to check.

 **Return**  
  Returns 0 if submode track is not playing, 1 if submode track is playing and 2 if submode track is paused. On error -1 is returned.

## PauseKey
```int PauseKey(Thing object, int track)```  

Pauses `object`'s puppet `track` animation.

**Parameters**:
 * object  
  The game object to pause the `track` animation. The object has to have model and puppet set.

 * track  
  Puppet track slot number to pause playing.

 **Return**  
  On success 1 is returned, otherwise -1.

## PauseMode
```int PauseMode(Thing object, int submode)```

Pauses the [`puppet submode`](../pup.md#sub-mode-list) track for `object`.

**Parameters**:
 * object  
  The game object to pause the `submode` track. The object has to have model and puppet set.

* submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number to pause playing.

 **Return**  
  Returns 0 if submode track is not playing, 1 if submode track was paused and 2 if submode track is already paused. On error -1 is returned.

## PlayKey
```int PlayKey(Thing object, Keyframe key, int lowPriority, int flags, int sleep)```

Plays puppet `key` animation for `object`.

**Parameters**:
 * object  
  The game object to play the `key` animation. The object has to have model and puppet set.

 * key 
  The keyframe animation to play. 

 * lowPriority  
  The [puppet track low priority](../pup.md#pup-low-pri) value.  
  The high priority is set to `lowPriority` + 2.

 * param flags  
  The [puppet track flags](../pup.md#pup-flags).

 * sleep  
  Number of seconds? the cog script sleeps when animation executes?

 **Return**  
  Returns track slot number under which the `key` is played.

## PlayKeyEx
```int PlayKeyEx(Thing object, Keyframe key, int lowPriority, int highPriority, int flags, int sleep)```

Plays puppet `key` animation for `object`.

**Parameters**:
 * object  
  The game object to play the `key` animation. The object has to have model and puppet set.

 * key 
  The keyframe animation to play. 

 * lowPriority  
  The [puppet track low priority](../pup.md#pup-low-pri) value.

 * param highPriority  
  The [puppet track heigh priority](../pup.md#pup-low-pri) value.

 * param flags  
  The [puppet track flags](../pup.md#pup-flags).

 * sleep  
  Number of seconds? the cog script sleeps when animation executes?

 **Return**  
  Returns track slot number under which the `key` is played.

## PlayMode
```int PlayMode(Thing object, int submode, int sleep)```

Plays puppet [`submode` track](../pup.md#sub-mode-list) for `object`.

**Parameters**:
 * object  
  The game object to play the `submode` track. The object has to have model and puppet set.

 * submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number to play. 

 * sleep  
  Number of seconds the cog script sleeps when animation track executes.

 **Return**  
  Returns track slot number under which the `submode` track is played.

## ResumeKey
```int ResumeKey(Thing object, int track)```

Resumes paused `object` puppet `track` animation.

**Parameters**:
 * object  
  The game object to resume the `track` animation. The object has to have model and puppet set.

 * track  
  Puppet track slot number to resume playing.

 **Return**  
  On success 1 is returned, otherwise -1.

## SetArmedMode
```void SetArmedMode(Thing object, int armedMode)```

Sets puppet [`armed mode`](../pup.md#pup-armed-modes) for `object`.

**Parameters**:
 * object  
  The game object to set new armed mode. The object has to have model and puppet set.

 * armedMode  
  The [`puppet armed mode`](../pup.md#pup-move-modes) number (0-7).

## SetMoveMode
```int SetMoveMode(Thing object, int moveMode)```

Sets puppet [`move mode`](../pup.md#pup-move-modes) for `object`.

**Parameters**:
 * object  
  The game object to set new move mode. The object has to have model and puppet set.

 * moveMode  
  The [`puppet move mode`](../pup.md#pup-move-modes) number (0-2).

 **Return**  
  On success 0 is returned, otherwise -1.

## ResumeMode
```int ResumeMode(Thing object, int submode)```

Resumes playing [`puppet submode`](../pup.md#sub-mode-list) track for `object`.

**Parameters**:
 * object  
  The game object to resume playing the `submode` track. The object has to have model and puppet set.

* submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number to resume playing.

 **Return**  
  Returns 0 if submode track is not playing, 1 if submode track is resumed to play and 2 if submode track is not paused. On error -1 is returned.

## SetPuppetModeFPS
```flex SetPuppetModeFPS(Thing object, int mode, int submode, float fps)```

Sets new FPS to puppet [`mode`](../pup.md#mode-types) and [`submode`](../pup.md#sub-mode-list) track keyframe for the `object`.

**Parameters**:
 * object  
  The game object to set the keyframe FPS. The object has to have model and puppet set.

 * mode  
  The [`puppet mode`](../pup.md#mode-types number. 

 * submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number.

  * fps
  The new keyframe FPS

 **Return**  
  Returns previous keyframe FPS.

## StopKey
```void StopKey(Thing object, int track, float fadeTime)```

Stops playing puppet animation `track` for the `object`.

**Parameters**:
 * object  
  The game object to stop the `track` animation. The object has to have model and puppet set.

 * track  
  Puppet track slot number to stop playing.

 * fadeTime  
  Animation stop fadeout time. Must be greater or equal to 0.

## StopMode
```void StopMode(Thing object, int submode, float fadeTime)```

Stops playing [`puppet submode`](../pup.md#sub-mode-list) track for `object`.

**Parameters**:
 * object  
  The game object to stop the `submode` track. The object has to have model and puppet set.

 * submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number to stop playing. 

 * fadeTime  
  Animation stop fadeout time. If 0 or less animation doesn't fadeout.

## SynchMode
```void SynchMode(Thing object, int old, int new, float unused, int unknownBoolean)```

Synchronize puppet [`submode` track](../pup.md#sub-mode-list) from old to new for `object`.  
That is, stops playing `old` submode track and starts playing the `new` submode track at the same animation frame where the `old` was stopped.

**Parameters**:
 * object  
  The game object to play the `submode` track. The object has to have model and puppet set.

 * submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number to play. 

 * sleep  
  Number of seconds the cog script sleeps when animation track executes.

 **Return**  
  Returns track slot number under which the `submode` track is played.

## TrackToMode
```int TrackToMode(Thing object, int track)```

Returns puppet [`submode`](../pup.md#sub-mode-list) number of `object`'s for playing `track` number.

**Parameters**:
 * object  
  The game object to retrieve puppet [`submode`](../pup.md#sub-mode-list). The object has to have model and puppet set.

 * track  
  Playing track slot number to retrieve puppet [`submode`](../pup.md#sub-mode-list).

 **Return**  
  On success puppet [`submode`](../pup.md#sub-mode-list) number for `object` is returned. On error -1 is returned e.g. invalid `track` number.
  
## WaitMode
```int WaitMode(Thing object, int submode)```

Waits for puppet [`submode`](../pup.md#pup-move-modes) track to end playing.

**Parameters**:
 * object  
  The game object to wait for track to end playing. The object has to have model and puppet set.
  
 * submode  
  The [puppet submode](../pup.md#sub-mode-state-table) number.

 **Return**  
  If `submode` is playing 1 is returned, otherwise 0. On error -1 is returned
