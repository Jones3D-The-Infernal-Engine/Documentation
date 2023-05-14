# Indiana Jones and the Infernal Machine - PC edition revisional differences

## Preface

The game *Indiana Jones and the Infernal Machine* has been released on the PC platform initially in 1999. Later on, the game has been receiving updates in regards to fixing existing bugs. The updates consist of an updated `Indy3D.exe` and updated [cog scripts](../cog.md).

Right now this document focuses on reviewing the changes between the retail version sold as 2 CDs (called *1.0* in this document) and the *Update 1.1* as well as *Update 1.2* official patches by LucasArts (called *1.1* and *1.2* in this document).  

This is the message the game owner receives when running the *Update 1.1* installer as well as it being placed inside the file `C:\Program Files\LucasArts\The Infernal Machine\Update11.txt`:

```
Indiana Jones and the Infernal Machine Update 1.1

Below is a list of issues that have been addressed with the 
Jones Update 1.1 Patch:

1.	After finishing the game, the player will now see the IQ
	Game Statistics Summary window

2.	Certain problems have been fixed regarding automatically going
	to the Peru level after completing the Aetherium level.

3.	After finishing the Aetherium level, the Store window will now
	appear correctly, but only if the player has not purchased the
	map to Peru earlier in the game.

4.	On the Nub's Tomb level, the player will no longer be able
	to push or pull the statue of Marduk out into the larger
	room while attempting to trap Volodnikov.

5.	Certain waypoint and AI issues have been addressed to prohibit
	Volodnikov from getting stuck on a pushable block while the 
	player attempts to trap him in Nub's Tomb.

6.	The Store window will appear correctly after finishing the 
	Infernal Machine level if you have gone to Peru earlier.



© Lucasfilm Ltd. & TM.
© LucasArts Entertainment Company LLC.
All rights reserved. Used under authorization. 
```

This is the message the game owner receives when running the update installer as well as it being placed inside the file `C:\Program Files\LucasArts\The Infernal Machine\Update102.txt`:

```
LucasArts Entertainment Company LLC
INDIANA JONES® AND THE INFERNAL MACHINE(TM)
Update 1.2


Thank you for installing Indiana Jones and Infernal Machine
update 1.2. 

Reported issues addressed:

 * This update incorporates Update 1.1. Installing this update
   will solve problems regarding RETURN TO PERU and catching
   that rascal Volodnikov in NUB'S TOMB.

 * Possible failure of the control configuration dialogue box to 
   function properly has been repaired.

 * Possible failure of all levels to open properly and to display
   the correct field of view when they do open has been repaired.

 * Possible failure of Infernal Machine Part sounds to end
   properly when the parts are put away has been repaired.

 * Several important action and display anomalies have been
   resolved in the following levels:

   BABYLON
   SHAMBALA SANCTUARY
   V.I. PUDOVKIN
   MEROË
   NUB'S TOMB
   INFERNAL MACHINE
   AETHERIUM
   RETURN TO PERU

NOTE: After installing this update, you must start (or re-start)
the updated level from the end of the previous level of the game.
The "start_XX_LEVEL.nds" savegame, which is automatically created when
the level first opens, will no longer be valid. Continuing play from ANY
savegames made prior to installing an Update may produce erratic results.

© Lucasfilm Ltd. & TM.
© LucasArts Entertainment Company LLC.

	
```

*Curiosity: yes, there's indeed a leading tab at the end of this message. ;-)*

## Cog scripts

Since cog scripts are written in human-readable plaintext, they can be easily examined and their contents differentiated with the use of standard Unix tools like `diff`.

This section will focus on the analysis of differences between the 1.0 and 1.2 scripts. To make sure the scripts can be identified with certainty, their checksums have been provided below.

```
$ sha256sum resources-*/*.cog
a7f480e0c83f91e581a797aaa583f3103779dc9385048d9205709fd248177f81  resources-1.0/00_cyn_opening.cog
ac92f1859f4f261ed9fb5dc12a7cc535f2e3d471759c77daca8e9ea58b995cfc  resources-1.0/01_bab_cinematic_4.cog
0d92e4bb89f8329b08c6c658b77a3aa201f0e1d91086cd747f0eb180e2ecd709  resources-1.0/06_vol_opening.cog
f7a9fa12079133c24a3aef41260a987d9426fbf03c8a54569555efee44762995  resources-1.0/10_sea_vol_frets.cog
280ddfa8d387c07f563a1f8ddbaa9dd898a6dea533d4e2f31c77db11f292d988  resources-1.0/14_inf_cinematic_exit.cog
1d713009e91c8bcee5e5b62cacb3d39a996a8adeabf222f947b96592a3f7615f  resources-1.0/14_inf_cinematic_trap.cog
7c2042ab1a511b131b67ba3a9fd5012609c2321805a4062cea127a954d595597  resources-1.0/actor_aiturner.cog
d7d95b10d4121eff365296e0af43109ceffe3fafd394c9c22b548e1802c6a243  resources-1.0/aet_escape.cog
136a970db6e38a4f7f9ba8dcfca9f9baa95415e92f19a685dea629987255b305  resources-1.0/aet_opencut.cog
3fe7cb867e6071f1e21a3f82f75ff9bc6c136231b9db0257ad4f018d46aa0e89  resources-1.0/bab_introscene.cog
bffcb39c0721ee763c15c5fe4cd95178a58856187abb68e33d1bd5d83cf9ccb2  resources-1.0/inf_elevcall.cog
720b1edb12d26a034289272054280834249239fb5f929656b6a557edbe188ac7  resources-1.0/inf_flyingrobot.cog
e60ffad4c4feefab0de77973977ddc45dc854f6b1d75e9c879b499231f9e49ba  resources-1.0/inf_imp1_pistons.cog
ab1c7d0e84fbaf101417d9e483d18cfa8e2b7d57773729868d714ba3b8c3ed6c  resources-1.0/inf_impswitcher.cog
d02b35c8f972869e7e941cdf3f9f882f56366ec559a1fc33bf9b42776d94ed9f  resources-1.0/inf_introscene.cog
109955e68bfb1aa6b785663ffedba3b3a6f2505cc0a5e6ce0c91d27b801d484e  resources-1.0/inf_spinnerbots.cog
a77371b91472f4be7e01fe1df9fb3d6d35021eaaf51d30b128898217f85aa9cb  resources-1.0/inf_turnerhunt.cog
bfa42154613e2ab755f8da2cc026203196081ea1a033b3de372b2db102d184de  resources-1.0/inf_turnerslast.cog
751f705798744b5ec975874e1db2693dc0c422993119a59c7c2e796782731a09  resources-1.0/jep_intro.cog
577feb43f7d05b0328aad0513d658631d5cebc04a2f7e038d2769c65e3d4a8ef  resources-1.0/lag_intro.cog
07cc3e9385c9015bb9586a2fcc59a3bd1389d4316dff59f3a0e209d8c84e0387  resources-1.0/nub_bullbutt.cog
8716da4e9c85e226158e3f2056f032dd1bcccbe134015b7d5e0a4a7c9792f642  resources-1.0/nub_catchvolodnikov.cog
3460f477ffc64e11c5bcf4b410fa441d869fd7474c84da55b62543c7c6450471  resources-1.0/nub_elevgear.cog
22cb60ea0222887c06b3ee49fff08c9aa9a14dcc0d8c7956f3571d0a94d7480f  resources-1.0/nub_hint2.cog
81138b15f4bfc8a4fe7712683def6d32bbb177e5f739e0bcd9fa4fbee33a5033  resources-1.0/nub_opencutscene.cog
42ecd89274213836de4e22b498e5c6ffe591ba35bfabcd65126fcc57b63faee7  resources-1.0/nub_volcutscene.cog
8b8a833d7fe774c7ede5bfffa18b9c3c7d8a8b3e97b7ef087fb728a27e7ebd7b  resources-1.0/olv_intro.cog
35ca19e13bc40e8acbcf60849c0a9c406211cb00e77ac173b07213d1f22486b4  resources-1.0/pru_arrivalcs.cog
d48ec08fc7c1925308ba232d71ba480380dbca4fcff592a820d10477bc2153c8  resources-1.0/pru_fallingdebris.cog
56f606aed1a795523c6bca61626ea52b1d5a710dd554376460e3567f5c8fff07  resources-1.0/pru_hints.cog
a46b070711887ea6038649fadf4cb33d07b5cafce54e100b2712ac370b7abfdd  resources-1.0/pru_rollingboulder.cog
6f64d8970bf8c482918506ecdbff5fd19cd6d9fe20a70af678e7e526ce68447c  resources-1.0/pyr_bucketpuzzle.cog
a108a3852943f17b4971184c3104adf34e08395e273ca746d8e654ec4b32c9f4  resources-1.0/pyr_hint.cog
de4623a91e3d2531e5c8fa2371dee9878f64279375273f0a831c70de2ada09d4  resources-1.0/pyr_openingcutscene.cog
0d9e0b1bd1285343f8ac4aa830f43589ea1e4851868ef05f6a3d6343f9b7af6e  resources-1.0/riv_parachute.cog
52cdf9d54538ed63b4b039b6188e625b37e966fc534bf2896e57e0b2a2212672  resources-1.0/sea_brigdoor.cog
bf17c3707e5ca31bf44c8199ffe4ba63036d70a5392f21e2af5dcb0fbb7e27f5  resources-1.0/sea_intro.cog
13e981574cd0aef1e7d25aa3fad4bb89e1f240be0a9b7151b99c392216c5a5de  resources-1.0/shs_dlog_cistern.cog
1afd7ebdaa75b463a762cab64b4db457810176c4123d4236a01bb3119b83bba2  resources-1.0/shs_intro.cog
9ebd6286e242416908d83ecd7eb9c92de5d2cb7e2f6f25158d78cb767219c538  resources-1.0/shs_intro_commie.cog
4db2d18db60240036ca85706c5455843991f97acf18c8cae66158ca14d509292  resources-1.0/shs_treasuregate.cog
ba7c4da4869581945755c650a0a6bcf89a9c0bbcfdedf289dbdca8a6708563dd  resources-1.0/shw_bosscinematic.cog
fddc2860d686a5c6169bb71b5c6330aa61adf95ea074ae0e789d43a34e5aa0da  resources-1.0/sol_introcut.cog
7a06fa441bd419a3700aa5de10e332e7b940dc4f6081ff5a37918fbe7c2d128e  resources-1.0/tem_introcut.cog
5b775edadb1ded1508792fc3998cf4cb7a595352bc10c59f3a68d3de9696b550  resources-1.0/teo_introscene.cog
263df5dbdabfd45ee96230681d0e2689f1bef453f51b7b0ca75fdd067a8d5075  resources-1.0/teo_mirrorgod.cog
2698a0e236fdfaa4d37e0abb203d9d5f40134e5cd20f534d783eb6f0ab24bb9c  resources-1.0/weap_imp1.cog
d965c54316e12f615c8d9cc1b5cad75a0c4739dc9dd91f48b203fc0204a32330  resources-1.0/weap_imp2.cog
6f1bdb95dfb6385c0556ddfd0edac39d999de6f4654f223d26ef249088ecdca1  resources-1.0/weap_imp3.cog
2cdaae36f30dda9ceac755dadc94279d08ec7a2e3b59106a7a41e59444ba88fb  resources-1.0/weap_imp4.cog
8a56e8cd21e266c92521cd1ba95766c82641d6492b2e7776989f7351f2de2707  resources-1.0/weap_imp5.cog
6084ea9503be2b5d1566650164b068adfb58bfe3e2b7dd725e3a03a0b5f9ae13  resources-1.1/nub_CatchVolodnikov.cog
fc05742f267b4153a8184e45a6fbec37160ec82236e8a766c3b2b32599e0355b  resources-1.2/00_CYN_Opening.cog
dbc5185ca11c6cbe4259ea08714ddc2abe30133225b7aa0c61311b2fd4f4b4ce  resources-1.2/01_BAB_Cinematic_4.cog
26a878064b954c5d512c81683b29a05380058de5c553621cb96962cfc1ea97ef  resources-1.2/06_VOL_Opening.cog
5d17b6529069f96c79d087e5397f072b304e343c2475b4853d61d8fd1209f8a9  resources-1.2/10_SEA_Vol_Frets.cog
cd75482f980c08971cea1312a271ecc06045a0d1616e3fdc105596f31b5680fe  resources-1.2/14_INF_Cinematic_Exit.cog
edf919cb8c6d634f8f2987d72e7fdf515b2ba75e47e6dae5dd925ec444f5bb26  resources-1.2/14_INF_Cinematic_Trap.cog
a829c895d5883d506635f26eaf3080223d04be715d977df0a586c305acaeeb80  resources-1.2/BAB_Introscene.cog
35ba77001800aedfa16b5e4bfcac02f2fbeaa7f0ad6b30147bfe96c35469dd2b  resources-1.2/INF_ElevCall.cog
eeb66bd63f0ca8d1d7a7f6d513d6ef5c627a4f89978f50fc9182bdadae84f956  resources-1.2/INF_FlyingRobot.cog
fa2bc7c575bf253e9fb88926eb4e1f7dd9ef6b1cd5352e38dc03eaff9ac56484  resources-1.2/INF_IMP1_Pistons.cog
4a3f15e9d3b415302a35492fb62341d275c07ff8cac0ca567f2000f9727148fc  resources-1.2/INF_IMPswitcher.cog
778304265a36c352bbdea025fbcff988f8eb786882552a11f85fa3ecf8033c53  resources-1.2/INF_Introscene.cog
3a7ee98c4d7caa399abbfe25b093a4c085badf275342cfe7d9f4e6c4bd622a97  resources-1.2/INF_SpinnerBots.cog
f3520408cb028a82cd5ea486899041b484656c2962f08ff2f29767266dbd1a78  resources-1.2/INF_TurnerHunt.cog
d1f350076d8f3943e44743488f0903dba76f6c7c8b43f6de691bdb8aead09af2  resources-1.2/INF_TurnersLast.cog
9dc68081620b05c641c0ad57390aee80be7d24d874ada5a2f94b88ef9bb1e9f5  resources-1.2/NUB_hint2.cog
277216ce9ff414836642b2c00a11f19e39f9bd6ed0f3dd184c46e6d4952c1fdb  resources-1.2/PRU_FallingDebris.cog
c93eacf9e5a61a95da3f966f142cdfe01512d2c734dea07afa00526eced85d1d  resources-1.2/PRU_arrivalCS.cog
cec9aa23aee80359e20de85963993594bd1ebe60afa36819e37603b5251bb4dc  resources-1.2/PRU_hints.cog
6a5316a1d6c94cf82d967b1938d875aefc2b84cdd142db76feb536fa565b8b19  resources-1.2/PRU_rollingboulder.cog
49feaf3d67f0af443df9bd1b149994a63f8eecaf6a35a770489da2d08c24ec5d  resources-1.2/Riv_Parachute.cog
9913aac13122114eabd726f3bfa9e4d9a4967d67c2c79664f65f5373dcb98a62  resources-1.2/SHW_BossCinematic.cog
624718f8c318a66c9443db29b6d9b553aedf62a9da2e993feb0309e37753031a  resources-1.2/SOL_IntroCut.cog
f2eca60362288e7af7e23162c3a00e8aaac07138f2a3b99df9945d265b8a1765  resources-1.2/TEM_IntroCut.cog
d3a2df4dd3aa78f88471fb4c52ba34a7b2036b5926a1288d71c6594806e11c8c  resources-1.2/TEO_Introscene.cog
3e4e9a0568efc417ac9632327422a28237a0a2efca68bf3be5b90ab32001f847  resources-1.2/TEO_MirrorGod.cog
c21d7c5f2267fc605c80fd291f09a70bc3b192f4bf9bdc5f570fe2856a97ac77  resources-1.2/actor_AITurner.cog
59b15db1a59cc2fd3573dd2768f106a804ce8c313e2ef3cf7b85b6a9585d2087  resources-1.2/aet_Escape.cog
3ec5cb483d664d7f7e166fbe138ba2dbfc35056340388fd7a0646011b3e65a20  resources-1.2/aet_OpenCut.cog
9d37815dcf6435b8599fc3a32d69559df1552c56e834a610e3c16aeeef9551fb  resources-1.2/jep_intro.cog
57d719041d8cf2e169454ac730b04ba46a448e119be11389d81e577917471a4b  resources-1.2/lag_intro.cog
1cc0e2050f085ea643522733621ecc67ee4cfbdde9ffd757cab1d7031eaacbc8  resources-1.2/nub_BullButt.cog
6084ea9503be2b5d1566650164b068adfb58bfe3e2b7dd725e3a03a0b5f9ae13  resources-1.2/nub_CatchVolodnikov.cog
2d35852b04d52b9d3a31c4047e73923c7ff1dfdbbcf5f1cb7fddbd2425fd33b4  resources-1.2/nub_ElevGear.cog
2fb1d9ae866eea83e957c7d1fac3eafd12babcb46b6a26913dc07b6a8db63860  resources-1.2/nub_OpenCutScene.cog
3c6ae99e1cb0ace4566e9e9ceaa04f94c114a3bf82532f92437a2113534a2846  resources-1.2/nub_VolCutScene.cog
a17a7c97eec9f978ee4a013e30cee122f9824096479c492d79c55a648a8411f7  resources-1.2/olv_intro.cog
ab70a9a25e4b3bae383f9d318e2e5b3654cfcb2fc53785bb0d9bd8252e6a2bc2  resources-1.2/pyr_bucketpuzzle.cog
300267bc8149e276ddc11ab2a269f43ea9cfe60aa52e7fc77f1f5422f21dc797  resources-1.2/pyr_hint.cog
caf379fca578938ea0863c2f8ec25210c3e31cdce225ca7576bb98e0f912f55d  resources-1.2/pyr_openingcutscene.cog
6144cc7c7197202c8029493b83b8b25887f9574e667e5e3b7d70844877b036d1  resources-1.2/sea_BrigDoor.cog
cdae0ac12d38564ccfba526f6c1c967ccfbcb830dc90f9f52a5dc3102a506555  resources-1.2/sea_intro.cog
1664b1e36cd418840f94d9e0917c67aeef56894a5fcb2aa58855e2726f6458a1  resources-1.2/shs_Intro_Commie.cog
05da31e64cd1e6d4f8c40d0d9cc9f352dd590714f01d4cf30ccfe67dce4623e8  resources-1.2/shs_TreasureGate.cog
a7e2ae0af79da16312e325613c2d6fbfd9670e63d57296820af1921572d5f426  resources-1.2/shs_dlog_cistern.cog
9b24ce51826a9511d068f85bb899a3b116e91d777fd950cdb690356e65518c14  resources-1.2/shs_intro.cog
d68f8cba956f1f13471ff1064c817af1acd8acb984bdeef7b260aff128f1442c  resources-1.2/weap_IMP1.cog
42196bf79c784b30372f3f33488e70c87750dd3b50f38af6193b5eb50c6eb2e3  resources-1.2/weap_IMP2.cog
37c9d857c1b5996c4a08e14361c06953527be4b66d6b6e24e30a2b2c3235222f  resources-1.2/weap_IMP3.cog
9c11e6875bfc46d994f72d85ce90ef2ca3593897ba02214e60b6a6147346c8c3  resources-1.2/weap_IMP4.cog
40c2ba1bedadc014eb9e21ca16aba02e9c03b935c711593ffff62bdfad4f6392  resources-1.2/weap_IMP5.cog
```

The differences between the 1.0 and 1.2 contents have been provided as the file [cogs_1.0_vs_1.2.diff](./cogs_1.0_vs_1.2.diff). 1.1 has been skipped since there's only one updated script, which is identical to 1.2.

Please keep in mind that in this context it's assumed that any difference related to case sensitivity is ignored. For example, it's considered that a line calling the function `sleep(1.0)` and a line calling the function `Sleep(1.0)` are not different at all. The same applies to metadata, i.e. the scripts' names in filesystem.

The following sections will focus on theoretical as well as effective differences related to the game. Reading the scripts may result in a hypothesis but it's vital that the in-game practical outcome be proven.  
*This is especially important since the game sometimes works in mysterious ways ;-)*

Also, not every change within the scripts will be discussed, like function calls moved to a different place, while practically it may not be visible in-game. Study the differences within the [cogs_1.0_vs_1.2.diff](./cogs_1.0_vs_1.2.diff) file on your own to witness all theoretical changes.

### Generic differences

#### weap_imp{1,2,3,4,5}.cog

Initially there was a bug which resulted in the Machine Parts' sounds looping after they've been drawn and immediately put away. An additional `if` statement has been provided, which should stop the sound when a Part gets put away. Also, a timing change in `SetMountWait` has been provided.
TODO: how does this timing change affect the gameplay?

### Canyonlands (00_CYN.ndy)

#### 00_cyn_opening.cog

It seems like the opening cutscene in the 1.2 script is faster and allows saving 0.49 seconds in a speedrun.

### Babylon (01_BAB.ndy)

#### bab_introscene.cog

Something related to the `if (bSeen) return;` lines and setting alpha channel of a Thing named `fadeplate`.

#### 01_bab_cinematic_4.cog

The 1.2 cutscene should be theoretically 0.035 seconds faster.

### Tian Shan River (02_RIV.ndy)

#### riv_parachute.cog

Only something related to the `if (bSeen) return;` line.

### Shambala Sanctuary (03_SHS.ndy)

#### shs_intro.cog

Only something related to the `if (bSeen) return;` line.

#### shs_intro_commie.cog

The context of the `bin` variable has been completely changed from an item ID to what a comment refers to as `now co-opted for guard duty`. The new script logic is yet to be studied.

#### shs_treasuregate.cog

Logic related to the commies related to the plant bulb gate in the treasury has been rewritten. Looks like initially the logic had some flaws, perhaps only 1 enemy was spawning rather than 2? This hypothesis is yet to be verified on version 1.0 and 1.2 in practice.

#### shs_dlog_cistern.cog

An additional check has been implemented as part of the "It's some kind of cistern here" cutscene: *bail if the statue's orientation within Y vector is greater than 45 degrees and the player has no plant bulb*. What's the bigger picture here?

#### shw_bosscinematic.cog

Refined logic related to the Ice Boss cutscenes.

- Some camera-related stuff has been changed
- Additional sounds play when hurting the boss in 1.2
- A shaking camera has been removed(?)

### Palawan Lagoon (05_LAG.ndy)

#### lag_intro.cog

Something related to the `if (bSeen) return;` lines and setting alpha channel of a Thing named `fader`. To be studied further. Maybe there's no fadeout when restarting the level?

There are also additional lines supposed to reset the camera FOV. Are these effective or just added for safety?

### Palawan Volcano (06_VOL.ndy)

#### 06_vol_opening.cog

Something related to the `if (bSeen) return;` lines and setting alpha channel of a Thing named `fadeplate`. To be studied further. Maybe there's no fadeout when restarting the level?

### Palawan Temple (07_TEM.ndy)

#### tem_introcut.cog

Only something related to the `if (bSeen) return;` line.

### Jeep Trek (16_JEP.ndy)

#### jep_intro.cog

Something related to the `if (bSeen) return;` line.

There are also additional lines supposed to reset the camera FOV. Are these effective or just added for safety?

### Teotihuacan (08_TEO.ndy)

#### teo_introscene.cog

Something related to the `if (bSeen) return;` line.

#### teo_mirrorgod.cog

An additional setting of the statue's collision size has been added when the cutscene of the statue descending plays. How does this affect gameplay?

### Olmec Valley (09_OLV.ndy)

#### olv_intro.cog

Something related to the `if (bSeen) return;` line.

There are also additional lines supposed to reset the camera FOV. Are these effective or just added for safety?

### V.I. Pudovkin (10_SEA.ndy)

#### sea_intro.cog

Something related to the `if (bSeen) return;` line.

There are also additional lines supposed to reset the camera FOV. Are these effective or just added for safety?

#### sea_brigdoor.cog

The sailor guarding the door in the starting room is being made invulnerable during the cutscene when knocking on the door in 1.2. He stays invulnerable, this addition was most likely added to make sure the script doesn't break in case the sailor dies. He can be killed in 1.0 by typing the weapons cheat and shooting him with a bazooka, for example. Then, when exiting the room, the script breaks on `PlayVoice(sailor, sl_haltyou, 1.0, 0);` with an unhandled assertion:

```
ASSERT: sithVoice.c(368):  (pThing->type == SITH_THING_PLAYER) || (pThing->type == SITH_THING_ACTOR)
```

#### 10_sea_vol_frets.cog

The rotation of the bridgedoor Thing has been commented out. Instead, `SetThingFlags(bridgedoor, 0x80000);` and `ClearThingFlags(bridgedoor, 0x80000);` is used. What does this result in? Don't the doors close in 1.2?

### Meroë (11_PYR.ndy)

#### pyr_openingcutscene.cog

Something related to the `if (bSeen) return;` line.

There are also additional lines supposed to reset the camera FOV. Are these effective or just added for safety?

#### pyr_bucketpuzzle.cog

Some tweaks related to the bucket's collision within the puzzle in a pyramid.

#### pyr_hint.cog

Additional logic related to solving hints. Read the file [cogs_1.0_vs_1.2.diff](./cogs_1.0_vs_1.2.diff) for more details.

### King Solomon's Mines (12_SOL.ndy)

#### sol_introcut.cog

Something related to the `if (bSeen) return;` line.

### Nub's Tomb (13_NUB.ndy)

#### nub_opencutscene.cog

Only a line supposed to reset the camera FOV has been added.

#### nub_volcutscene.cog

TODO: check the big picture first, then focus on the details

#### nub_elevgear.cog

Lots of changes related to the block and elevator logic, camera and whatnot. Wondering if this can be exploited in-game for speedrunning or just for fun.

It seems like the total sleeping in cutscenes in the 1.2 script is faster and allows saving 4.5 seconds in a speedrun.

#### nub_catchvolodnikov.cog

Logic related to AI waypoints has been refined. At a first glance looks too complex to explain in simple words - read the file [cogs_1.0_vs_1.2.diff](./cogs_1.0_vs_1.2.diff) for more details.

#### nub_bullbutt.cog

The operations related to the `begun` variable have been moved from above a certain line to below that line. How does this affect gameplay?

#### nub_hint2.cog

One `if` statement has been added as part of the hint solving script - may be related to the *raise ball* hint.

### The Infernal Machine (14_INF.ndy)

#### inf_elevcall.cog

The `one elevator that can be summoned to any number of floors` script has now 3 additional `Sleep(0.35)` calls. 

#### inf_flyingrobot.cog

Some logic has changed and is yet to be documented (TODO) but worth noting is the change in sleeping - it seems like the total sleeping in cutscenes in the 1.2 script is faster and allows saving 8.201 seconds in a speedrun.

#### inf_imp1_pistons.cog

The 1.2 script sleeps for 1.0 second less, has a different camera FOV and something related to playing a zapping sound.

#### inf_impswitcher.cog

Some logic has changed and is yet to be documented (TODO) but worth noting is the change in sleeping - it seems like the total sleeping in cutscenes in the 1.2 script is faster and allows saving 7.7 seconds in a speedrun.

TODO: check if this hypothesis is correct effectively - in particular does the `StopKey(player, in_track0, 0.5);` function sleep for 0.5 seconds in this example.

#### inf_introscene.cog

TODO: document the changes!

#### inf_spinnerbots.cog

Additional `if` statements have been introduced before calling `AIClearCutsceneMode();`. How does this affect the gameplay?

#### inf_turnerhunt.cog

The creation of `imp2template` has been delegated to `actor_AITurner.cog`.

#### inf_turnerslast.cog

The `AIWaitForStop(turner);` has been commented out in the cutscene just before showdown with Turner, when Turner says: *Sorry, can't do that*.

#### actor_aiturner.cog

The creation of `imp2template` has been delegated from `inf_turnerhunt.cog` and improved - at least theoretically it should now take Turner's vector (`dirVec`) into consideration .

#### 14_inf_cinematic_exit.cog

Some logic has changed and is yet to be documented (TODO) but worth noting is the change in sleeping - it seems like the total sleeping in cutscenes in the 1.2 script is faster and allows saving 3.8 seconds in a speedrun.

#### 14_inf_cinematic_trap.cog

Some logic has changed and is yet to be documented (TODO) but worth noting is the change in sleeping - it seems like the total sleeping in cutscenes in the 1.2 script is faster and allows saving 0.2 seconds in a speedrun.

### Aetherium (15_AET.ndy)

#### aet_escape.cog

Looks like just some logic and timing changes related to playing the rumbling sound during the escape scene.

#### aet_opencut.cog

Something related to the `if (bSeen) return;` line.

### Return to Peru (17_PRU.ndy)

#### pru_fallingdebris.cog

Additional `if` statements have been introduced before sound playing and stopping functions are called.

#### pru_arrivalcs.cog

Something related to the `if (bSeen) return;` line.

The 1.2 script should be 0.5 seconds faster.

TODO: check if this hypothesis is correct effectively - in particular does the `StopKey(actor, in_keytrack, 0.5);` function sleep for 0.5 seconds in this example.

#### pru_hints.cog

Additional `if` statement has been added to the *Indy lit the torch* hint: don't solve the hint if holding something else than the lighter.

#### pru_rollingboulder.cog

Some logic has changed and is yet to be documented (TODO) but worth noting is the change in sleeping - it seems like the total sleeping in cutscenes in the 1.2 script is faster and allows saving 2.7 seconds in a speedrun.

Just scratching the surface and it looks like there were changes related to hangable surfaces and deselecting a weapon that's being hold and is something else than the whip, as well as disabling the whip in inventory(?).

## Indy3D.exe

This section will focus on the analysis of differences between the 1.0, 1.1 and 1.2 game executables. To make sure the executables can be identified with certainty, their checksums have been provided below.

```
$ sha256sum resources-*/*.exe
3fbaf8cd401b4af80967cbe42e3420fb803288b336ebbe72a9a01b6dfd661a53  resources-1.0/Indy3D.exe
5567574791fd91c14874e73bfd1fc1e02967d954b55ffe6075396074db60e2c8  resources-1.1/Indy3D.exe
55fb00c0a2cb30793ff451dc6fd17681c5128aa32419aa711015fd5117d608bf  resources-1.2/Indy3D.exe
```

### Revisional timestamps

Revisional timestamps can be previewed in-game with the `version` console command. They are also embedded directly in the executable. These are:

- `Oct 29 1999,12:09:14 Release` for 1.0
- `Nov 22 1999,11:04:16 Release` for 1.1
- `Jan 28 2000,07:53:27 Release` for 1.2

TODO: are these the compilation dates or something else?

### Control configuration dialog fix

The `Possible failure of the control configuration dialogue box to function properly has been repaired.` addressed issue may be documented here. How this was happening initially and how the fix was implemented. TODO!
