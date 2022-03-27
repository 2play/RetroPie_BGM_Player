# RetroPie BGM Player v2.0.2022 Revamped By 2Play! For PlayBox v2
(To be part of PlayBox v2 Tinker Vanilla and similar as single script of PlayBox RetroPie Structured Menu)

A simple background music player with emulation support, to implement on RetroPie and Emulation Station based on [this](https://retropie.org.uk/forum/topic/9133/quick-and-easy-guide-for-adding-music-to-emulatonstation-on-retropie-noob-friendly) guide from RetroPie forum.

## Installation
- `wget -N https://raw.githubusercontent.com/2play/RetroPie_BGM_Player/playbox_v2/install.sh`
- `chmod +x install.sh`
- `./install.sh`

## Usage
* ES setting `OTHER SETTINGS / PARSE GAMELISTS ONLY` should be `OFF`, otherwise you can not see `RetroPie-BGM-Player` options menu.
* To change settings, go to `RetroPie-BGM-Player` on RetroPie settings menu.
* Fade effect is disabled by default, go to `RetroPie-BGM-Player` settings menu to enable it.
* Place your music in roms/music folder. You can pick from PlayBox Toolkit my other 3 music selections. *You can now organize your files with subfolders as you wish.*

## Supported File Types
Emulator / Name | Extension
:---: | :---:
MPEG-2 Audio Layer III | .mp3 .ogg
Spectrum ZX | .ay
Sega Genesis / Megadrive | .gym
NEC PC Engine / TurboGrafx-16 | .hes
MSX / Other Z80 | .kss
GameBoy | .gbs
Nintendo | .nsf
Nintendo Ext. Support | .nsfe
Nintendo DS | .2sf
Atari SAP | .sap
Super Nintendo | .spc
Sega VGM / VGZ | .vgm / .vgz
Vortex | .vtx
Playstation Audio | .psf / .psf2

## Options
* `General Settings`
  * `Player` - Change BGM player or select what file extensions you want to play.
    * `MP3 Player`
    * `Game Music Emulator`
    * `Both Players`
    * `Custom File Types`
  * `Volume` - Change BGM Player volume.
  * `Toggle` - Set BGM Player ON/OFF.
* `Play Settings`
  * `Fade Effect` - This option enables the fading effect when music start or stop playing.
  * `Non Stop` - This option keep BGM Player playing while you play games.
  * `Delay` - Change the amount of seconds that you want to delay the BGM Player start when EmulationStation load.
* `Player Stuff`
  * `Reload Audio Files` - If you add new songs/files, this option reload them, or restart your system to reload automatically.
* `BGM Update` - Update RetroPie BGM Player

## Video [Original Naprosnia]
[![RetroPie BGM Player](https://img.youtube.com/vi/CP-Kz6OAueM/0.jpg)](https://www.youtube.com/watch?v=CP-Kz6OAueM)

## Uninstall
- `wget -N https://raw.githubusercontent.com/2play/RetroPie_BGM_Player/playbox_v2/uninstall.sh`
- `chmod +x uninstall.sh`
- `./uninstall.sh`

## Donate
Support original developer at [![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.me/naprosnia)
Join my 2Play! discord for more PlayBox v2 news etc.
Your support is always welcome.
