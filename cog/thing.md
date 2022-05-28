# Thing COG functions
> :warning: **Work in progress!**

Incomplete list of COG functions for game object.
- [FadeInTrack](#fadeintrack)
- [PauseKey](#pausekey)
- [PlayKey](#playkey)
- [PlayKeyEx](#playkeyex)
- [ResumeKey](#resumekey)
- [StopKey](#stopkey)


## FadeInTrack
```int FadeInTrack(Thing object, int track, float speed)```

Makes `track` animation to fade-in at `speed`.

**Parameters**:
 * object  
  The game object to fade-in puppet `track` animation. The object has to have set model and puppet set.

 * track  
  Object puppet track to set fade-in mode.

 * speed  
  Track fade-in speed. Should be greater than 0, else 1 is set.

 **Return**  
  On success 1 is returned, otherwise -1.

## PauseKey
```int PauseKey(Thing object, int track)```  

Pauses `object` puppet `track` animation.

**Parameters**:
 * object  
  The game object to pause the `track` animation. The object has to have set model and puppet set.

 * track  
  Puppet track to pause playing animation.

 **Return**  
  On success 1 is returned, otherwise -1.

## PlayKey
```int PlayKey(Thing object, Keyframe key, int lowPriority, int flags, int sleep)```

Plays puppet `key` animation for `object`.

**Parameters**:
 * object  
  The game object to play the `key` animation. The object has to have set model and puppet set.

 * key 
  The keyframe animation to play. 

 * lowPriority  
  The keyframe animation low priority value.  
  The high priority is set to `lowPriority` + 2.

 * param flags  
  Puppet sub-mode flags.

 * sleep  
  Number of seconds? the cog script sleeps when animation executes?

 **Return**  
  Returns puppet animation track number on which the `key` is played.

## PlayKeyEx
```int PlayKeyEx(Thing object, Keyframe key, int lowPriority, int heighPriority, int flags, int sleep)```

Plays puppet `key` animation for `object`.

**Parameters**:
 * object  
  The game object to play the `key` animation. The object has to have set model and puppet set.
 * key 
  The keyframe animation to play. 

 * lowPriority  
  The keyframe animation low priority value.

 * param heighPriority  
  The keyframe animation heigh priority value.

 * param flags  
  Puppet sub-mode flags.

 * sleep  
  Number of seconds? the cog script sleeps when animation executes?

 **Return**  
  Returns puppet animation track number on which the `key` is played.

## ResumeKey
```int ResumeKey(Thing object, int track)```

Resumes paused `object` puppet `track` animation.

**Parameters**:
 * object  
  The game object to resume the `track` animation. The object has to have set model and puppet set.

 * track  
  Puppet track to resume playing animation.

 **Return**  
  On success 1 is returned, otherwise -1.

## StopKey
```void StopKey(Thing object, int track, float fadeTime)```

Stops `object` puppet `track` animation.

**Parameters**:
 * object  
  The game object to stop the `track` animation. The object has to have set model and puppet.
 * key 
  The keyframe animation to play. 

 * track  
  Puppet track to stop playing animation.

 * fadeTime  
  Animation stop fade time. Must be greater or equal to 0.