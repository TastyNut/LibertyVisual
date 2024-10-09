
<p align="center">
</p>

# Liberty Visual

This Modification of GTA IVs Graphics and Textures aims to make the Game as Realistic Looking as possible. <br>
It achieves this through utilizing [ENB](http://enbdev.com/download.html) and [ReShade](https://reshade.me). <br>

This mod was created by [Orange Brains](https://youtube.com/orangebrains), who hasn't shown a sign of activity since September of 2022. <br>
The remaining Team behind Liberty Visual decided to finish the Mod and release it in the Fall of 2024. <br>
Join the Liberty Visual Discord Server for more Information, Help and Updates. <br>
<a href="https://discord.gg/ntppCPDQrV"><img src="https://img.shields.io/badge/discord-join-7289DA.svg?logo=discord&longCache=true&style=flat" /></a> <br>
 <br>
[![Mod Trailer](https://img.youtube.com/vi/ZXYDLy6IMeQ/maxresdefault.jpg)](https://youtu.be/ZXYDLy6IMeQ)
 <br>
 <br>
> [!IMPORTANT]
> This Mod in its current form is not meant to do a Playthrough of the Game.
> It enhances the Games Visuals for Video and/or Screenshot purposes.
> If you want to play through GTA IV and EFLC, the best way to do it is [-this-](https://youtube.com/tastynut).
 <br>
 <br>

## Installation: <br>
<br>
Download Grand Theft Auto IV: The Complete Edition
<br>
Clone your Game Directory to a different Path
<br>
[Download the Game Downgrader]()
<br>
Downgrade your cloned Directory to the Version supported by the Mod (curenntly 1.0.4.0 only) 
<br>
[Download the latest Mod Release]()
<br>
Unpack content of the Mod archive to your **Grand Theft Auto IV** root directory, where the Executable file ("GTAIV.exe") is located.
<br>
---

## Mod Features

### New menu options

- **Skip Intro**, added an option to skip intro
- **Skip Menu**, added an option to skip main menu after startup
- **Borderless**, added an option to switch between windowed and borderless modes
- **Motion Blur**, separate toggle for motion blur
- **Bloom**, separate toggle for bloom
- **FPS Limit**, set a custom FPS limit, select from a list of predefined values, or turn it off
- **Antialiasing**, a toggle for FXAA or SMAA ([comparison](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix/assets/4904157/6104ec1f-9e5a-46c4-891a-6a5e37d85f86))
- **Sun Shafts**, a godrays implementation faithful to the original art style
- **Console Gamma**, emulates consoles' contrasted look
- **Screen Filter**, an option to change color filters in main game and episodes
- **Distant Blur**, controls how intense the distant blur is during gameplay
- **Depth Of Field**, toggles the effect globally
- **Tree Lighting**, offers "PC", "PC" with fixed orange glow ("PC+") and "Console" style tree lighting
- **Always Run**, allows to run by default, like in classic GTA games
- **LightSyncRGB**, only Logitech hardware is supported, requires Logitech G HUB app

  ![LightSyncRGB](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix/assets/4904157/f925ad27-19ce-4dde-8801-0cec1578ade7)

  [**Watch full clip on YouTube**](https://www.youtube.com/watch?v=oLxn3q-NnZ0&hd=1)

- **Cover Centering**, added an option to disable camera centering in cover
- **Raw Input**, raw input for menu and adjustments for in-game camera mouse look
- **Alternative Dialogues**, when enabled, forces the game to use alternative dialogues in some missions
- **Centering Delay**, sets the time before camera starts autocentering on foot
- **FOV**, adjusts in-game field of view
- **Letterbox**, draws cutscene borders on top and bottom of the screen
- **Pillarbox**, draws cutscene borders on screen sides in ultrawide
- **Gamepad Icons**, allows to select various controller icon styles (Xbox 360, Xbox One, PS3, PS4, PS5, Nintendo Switch, Steam Deck)

### Main

- [Fixed recoil behavior that was different when playing with keyboard/mouse and gamepad](https://github.com/GTAmodding/GTAIV-Issues-List/issues/6)
- [Fixed forced "definition off" setting in cutscenes, now cutscenes will respect the menu setting](https://github.com/GTAmodding/GTAIV-Issues-List/issues/5)
- [Fixed DLC car lights in TBoGT](https://github.com/GTAmodding/GTAIV-Issues-List/issues/3)
- [Added various frame limiting options to address fps related issues](https://github.com/GTAmodding/GTAIV-Issues-List/issues/1)
- [Fixed aiming zoom in TBoGT](https://github.com/GTAmodding/GTAIV-Issues-List/issues/19)
- [Added an option to fix a bug that only make taxis spawn](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix/issues/85)
- [Added a file overload solution that allows to replace game files without actually replacing them](https://github.com/ThirteenAG/Ultimate-ASI-Loader?tab=readme-ov-file#update-folder-overload-from-folder)
- Added IMG Loader (from update folder)
- Increased corona limit to avoid heavy flickering of game's lights
- Improved ultrawidescreen support
- Added sun shafts
- Added various fixed animations and vehicle models and lamppost coronas
- Fixed glass shards lacking colors

### Scripts

- Restored transparency on pool minigame
- Restored traffic cops in toll booths
- Restored non-cop pedestrians in helicopters flying around city
- Fixed Johnny's incorrect voice lines when exiting the gun shop after buying something (used to use voice lines from Higgin's Heli Tours)
- Restored Luis' voice lines when exiting the gun shop (buying/not buying)
- Restored missing voice lines from Luis & Johnny when exiting the Broker gun shop
- The gun shop owner now uses his unique model (M_M_GunNut_01) instead of the strip club bouncer model (M_Y_bouncer_01).
- The Desert Eagle and Micro SMG are now using their unique sounds when viewing them (required modifying the animation dictionary "missgunlockup.wad")
- Restored the temporary ban from the gun shop when attacking the owner in TLAD/TBOGT
- Chinatown gun shop: Fixed a small bug where the wrong voice line is used after exiting when not buying something
- Restored voice lines from Luis, he'll now respond to what the pilot tells him about the landmarks during the tour
- Workaround for the garage door bug on high framerates, the garage door only closes now when Niko is actually outside of the garage
- Fixed the heli climb QTE being impossible on really high framerates
- Workaround for a bug where Niko dies after being kicked off of Dimitri's helicopter and falling into the water (Deal Ending)
- Workaround for a bug where Jacob crashes the Annihilator on high framerates (Deal Ending)

### Shadows

- Added options to customize shadow blur, bias, cascade blending and filter quality
- Added options to toggle lamppost and headlight shadows
- Added an option to toggle vehicle night shadows
- Added an option to enable extra dynamic shadows
- Added an option to enable dynamic shadow for trees
- Increased shadow render distance to pre 1.0.6.0 levels
- Fixed cascaded shadowmap resolution

### Episodic content

Note: most of this content requires additional modifications by the end user to the game, in order to fully use these features.
- Added an option to enable support for APC and buzzard and all their abilities in IV and TLaD
- Added an DSR1, pipe bomb, sticky bomb, AA12 explosive shells, P90 vehicle check, partially parachute in IV, TLaD and TBoGT
- Added an option to enable explosive rounds on annihilator
- Added an option to enable camera bobbing in clubs, cell phone switching, altimeter in helicopters and parachute, explosive sniper and fists cheats
- Added an option to raise height limit for helicopters in base game and TLad to match TBoGT
- Added an option to give P90 and AA12 to SWAT and FIB and M249 to police in helicopters
- Added an option to disable SCO signature check

### Misc

- Added an option to customize tree alpha
- Added an option to customize corona reflection intensity
- Added an option to fix autoexposure
- Fixed grass height
- Fixed camera stuttering while sprinting and turning with a controller
- Fixed rifle firing delay
- Added an option to fix rain droplets rendering
- Improved phone screen resolution
- Various other fixes, like LOD lights appear at the appropriate time like on the console version
- Restored auto exposure from consoles

### Details

- **AimingZoomFix** - set to **1** for proper fix, so it behaves like on xbox, set to **2** to have this fixed feature enabled in IV and TLAD, set to **-1** to disable this feature. **0** disables the fix, as usual.

- **FpsLimit** - enter a desired value to specify the number of frames per second you want for the game. Like 30, 45, 60 or more. This will affect all gameplay.

- **CutsceneFpsLimit** - enter a desired value to specify the number of frames per second you want for the game to use on cutscenes only.

- **ScriptCutsceneFovLimit** - this is the minimum fov value the game can set during script cutscenes, [like this one](https://www.youtube.com/watch?v=NzKw7ijHG10&hd=1). It prevents the game to zoom in too much on high fps. Since it's not a proper fix for the issue, you may disable it and use _hidden_ setting **ScriptCutsceneFpsLimit** that works the same way as **CutsceneFpsLimit**.

- **DefaultCameraAngleInTLAD** - TLAD uses a different camera angle on bikes, this option can force the original IV camera angle. [Enabled](https://i.imgur.com/PqFHJfU.jpg) / [Disabled](https://i.imgur.com/5kM5Sgn.jpg)

- **PedDeathAnimFixFromTBOGT** - when you perform a counter attack after a dodge in IV & TLAD, the ped after falling and dying performs an additional death animation, which doesn't happen in TBOGT. [Enabled](https://imgur.com/EYsiGPe) / [Disabled](https://imgur.com/CR3LEdR)

- **DisableCameraCenteringInCover** - [see issue 20](https://github.com/GTAmodding/GTAIV-Issues-List/issues/20).

- **VehicleBudget** - allows to increase the budget of vehicles.

- **PedBudget** - allows to increase the budget of pedestrians.

- **LightSyncRGB** - custom ambient lighting for IV, TLAD and TBOGT, health indication on G-Keys, police lights, ammo counter.

### Shaders Changelog

**Special thanks to [Parallellines0451](https://github.com/Parallellines0451) [AssaultKifle47](https://github.com/akifle47), [RaphaelK12](https://github.com/RaphaelK12), [robi29](https://github.com/robi29) and [\_CP_](https://github.com/cpmodding) for directly contributing with fixes, to [Shvab](https://github.com/d3g0n-byte) for making RAGE Shader Editor.**

**Fusion Fix uses dx hook to implement some features. It causes certain 3rd party software to crash/hang the game. To avoid this, Fusion Fix prevents [certain dlls from injecting into the game's process](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix/blob/master/source/dllblacklist.ixx#L15).**

### General
- Fixed z-fighting
- Fixed object pop-in caused by version 1.0.6.0
- Improved screen door transparency
### Lighting
- Fixed volumetric lights occlusion
- Restored console foliage translucency
- Added an improved tree lighting mode based on PC
- Fixed mismatched intensity of shadow casting lights causing visible pop-in
- Fixed lights that were made invisible with version 1.0.6.0
- Fixed black normal map halos on several surfaces such as asphalt, sidewalks and rocks
### Shadows
- Restored shadow filter from versions prior to 1.0.6.0 and also added an improved one based on it
- Fixed large shadow artifacts visible from high altitudes
- Fixed shadowmap being erroneously blurred before the lighting pass
- Fixed shadows stretching at certain camera angles
- Fixed shadow view distance being lower than the actual rendered distance
- Fixed cutoff penumbras of distant shadows
- Restored normal offset bias from versions prior to 1.0.6.0
- Fixed disconnected night shadows
- Fixed blur artifacts between shadow cascades under some conditions
- Added "pseudo" shadow cascade blending to reduce the disparity between cascades
- Fixed pitch black static vehicle shadows
- Added wind sway for dynamic tree shadows
- Fixed incorrectly offset shadows on water
- Fixed flickering when shadows of transparent objects overlap
- Added parameters to control shadow softness and bias
### Post processing
- Split depth of field, motion blur and stippling filter into separate passes to prevent overlap
- Fixed color banding, most noticeably in the sky
- Added a mask to selectively filter screen door transparency
- Fixed depth of field and bloom not scaling correctly at resolutions higher than 720p
- Fixed excessively blurry screen compared to consoles caused by leftover anti aliasing code
- Restored console bloom and auto exposure
- Restored console timecyc gamma bump
- Fixed flickering auto exposure
- Fixed motion blur losing intensity at high framerates
- Fixed incorrect TLAD noise tiling on water quality levels other than medium
- Fixed TLAD noise aspect ratio
- Added a console-like gamma toggle
### Reflections
- Restored console behavior for tree and terrain reflections
- Fixed excessive specularity of several meshes in Alderney
- Fixed distorted vehicle reflections
- Restored corona depth test in water reflections
- Added a parameter to control corona reflection intensity
- Fixed anisotropic filtering affecting vehicle reflection intensity
- Restored console vehicle reflection behavior relative to dirt level
- Restored console environment reflection intensity
- Fixed distorted mirror reflections at certain camera angles
- Restored console mirror blur
### Particles
- Fixed soft particles
- Fixed stuttery particle animations caused by version 1.0.5.0
- Fixed rain being almost invisible, especially at night
- Fixed rain streaks becoming shorter at high framerates
### Water
- Fixed incorrect water texture tiling on quality levels other than medium
- Fixed flat, mirror-like water surface on AMD graphics cards
- Removed broken shore foam effect
### Misc
- Fixed outlines around objects when using DXVK
- Partially restored console object fade speed
- Fixed terrain pop-in
- Reduced procobj pop-in for the default view and detail distance values
- Partially fixed building windows visible near the far plane if emissive depth write is disabled
- Adjusted tree mipmap bias
- Restored fence mipmap bias from versions prior to 1.0.6.0
- Fixed incorrect texture filtering used in several shaders
- Added a parameter to control the alpha threshold of tree leaves
- Added support to control vehicle dirt color, rain streak length and textures
- Added AO to gta_normal_spec_reflect_emissive if emissivity is 0 so it can be used to disable night shadows for certain objects
- Partially fixed mirror depth
- Added support to instantaneously turn lamppost bulbs on or off

# Credits


[Orange Brains](https://www.youtube.com/@MrOrangebrains) - The Original Creator of the Mod who unfortunatly has been inactive for a long time.
<br>
<br>
The Team behind Liberty Visual:
<br>
[DayL](https://discord.gg/F2NZwbCzmX) - Maintaing the Server through Orange Brains multiple absences, finishing the mods Timecycle for the Public Release.
<br>
Vex - Doing the awesome WPL stuff. (Placement of new Objects and Details in the Game)
<br>
BisonSales - the Guy behind [Project RevIVe](https://discord.gg/Bn99sJX7hb)
<br>
Tasty Nut (Me) is maintaining this Repository.
<br>
<br>
The generous Donors:
