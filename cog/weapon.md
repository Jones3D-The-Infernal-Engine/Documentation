# Weapon COG functions
> :warning: **Work in progress!**

Incomplete list of weapon COG functions.
- [FireProjectile](#fireprojectile)

## FireProjectile
```FireProjectile(Thing shooter, Template projectile, Sound bang, int submode, Vector3 firePos, Vector aimError, flex scale, int flags, flex aimFov, flex aimMax)```

**Parameters**:
 - shooter  
  Game object which fires projectile.

 - projectile  
  Projectile template.

 - bang  
  Projectile fire sound effect.

 - submode  
  The `shooter` puppet sub-mode to play upon firing projectile.

 - aimError  
  Shot projectile aim error. Affected by `aimFov` and `aimMax`depending on `flags` parameter.

 - scale  
  Projectile properties scale multiplier. The `flags` parameter defines what projectile property is affected by this parameter.

 - aimFov  
  The aim field of view.

 - aimMax  
  The projectile max aim.

 - flags:
    * 0x01  - Multiply projectile velocity with `scale` param.
    * 0x02  - Multiply projectile impact damage with `scale` param.
    * 0x04  - Multiply unknown projectile param with `scale` param.
    * 0x08  - Multiply unknown projectile param with `scale` param.
    * 0x10  - Burst fire up to 10 projectiles if shooter has set fire wait time. (Set by SetFireWait cog function) 
    * 0x20  - [Player] Apply aimFov and aimMax to aimError.
    * 0x80  - [Player] shoot projectile from the right hand of the player's 3D model (inrhand)
    * 0x100 - [Player] shoot projectile from the torso of the player's 3D model (intorso).
              There is a bug for this flag and the rotation vector is not initialized which can crash the game.
    * 0x200 - Add weapon fire effect. Note, this only works if shooter model has `inrhand` hierarchy hand node defined in it's model 3DO file.  
    Engine switches for 250 ms current weapon model with firing weapon model for weapons:
      * pistol - weap_revolver_inv.3do
      * tokarev - weap_tokarev_fire.3do
      * mauser - weap_mauser_fire.3do
      * simonov - weap_simonov_fire.3do
      * submachine - weap_ppsh41_fire.3do
      * shotgun - weap_toz34_fire.3do