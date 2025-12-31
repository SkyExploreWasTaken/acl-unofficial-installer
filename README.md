# ACL Unofficial Installer
The ACL unofficial installer is an easy-to-use installer for the AceCorp Launcher for DOOM written in NSIS.
The ACL unofficial installer is licensed under the GPLv3 License. Refer to LICENSE for more details.
Refer to THIRD_PARTY_LICENSES.txt for all licenses related to work used here.

To play Doom / Doom 2 / Doom mods, you'll still need doom.wad and doom2.wad. You can find them easily by buying [DOOM + DOOM II](https://store.steampowered.com/app/2280/) on Steam, opening game files then opening the `rerelease` folder. You'll then see them right here. Just copy them over to the ACL install directory, into the folder named `iwads` after installing. If you want to package it into the installer, make an iwads/ directory at the root of the source code directory and put them here.
IF YOU WANT IT TO WORK, DO IT BEFORE LAUNCHING ACL.
In the other case it might fail.

## How to compile
To compile this project, you need [Nullsoft Scriptable Install System](https://nsis.sourceforge.io/Download) version 3.11 (I did not test it on other versions, it might or might not work).
Just open NSIS, click on "Compile NSIS scripts", "File", "Load Script", select the `setup.nsi` and that's all ! The installer will be located at the root of the source code directory, with the name ACLSetup.exe.

Have fun!