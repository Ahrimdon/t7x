# T7x Client

[![discord](https://img.shields.io/endpoint?url=https://momo5502.com/iw4x/members-badge.php)](https://discord.gg/sKeVmR3)
[![website](https://img.shields.io/badge/Repackers-_Website-blue)](https://rimmyscorner.com/)

<p align="center">
  <img src="assets/github/banner-t7x.png?raw=true" />
</p>

---
### <u>**IMPORTANT:**</u>
- ### T7x is cross-compatible with the BOIII Client. You can play the same servers on T7x and BOIII Client, however T7x is newer.
- ### You are <u>***NOT***</u> required to own Call of Duty: Black Ops 3 in order to play this client. Steam Ownership Verification has been <u>***removed***</u>.
- ### You can view the changes made from original repository [here](https://git.rimmyscorner.com/Rim/t7x/compare/3e75c64ece0527dec384829dc28dd2c9d3ce5370..HEAD).
---

## Installer (Easiest)
1. Download the [T7xInstaller.exe](https://git.rimmyscorner.com/Rim/scriptable-client-installers/releases/download/v1.0.1/t7xInstaller.exe) from [Releases](https://git.rimmyscorner.com/Rim/t7x/releases/download/latest/t7xInstaller.exe)
2. Place in *Call of Duty Black Ops III* game directory and run
*Note: Run as Administrator if your game installation is in a protected folder.*

## Download
Clone the Git repository or download as ZIP.

- <u>**Download Release**</u>
  - Click on `Releases` at the top and navigate to the latest release
  - Download `t7x.zip`
  - If you plan on running a server, download `T7xDedicatedConfigs.zip`

- <u>**Download ZIP**</u>
  - Click on the three dots at the top of the repo ( `◘◘◘` )
  - Click `Download ZIP`

- <u>**Clone the repository:**</u>
  - Open a terminal or command prompt.
  - Run the following command:
    ```
    git clone https://git.rimmyscorner.com/Parasyn/t7x.git
    ```

## Installation

1. Place the executable `t7x.exe` in your `Call of Duty Black Ops III` directory.
    > **Note**: Default location is `C:\Program Files (x86)\Steam\steamapps\common\Call of Duty Black Ops III`
2. Place the `localappdata\t7x` folder into your Local AppData. Place **ONLY** the `t7x` folder in, not `localappdata\t7x`. Your final path should look like `C:\Users\%USERPROFILE%\AppData\Local\t7x\*`
    > **Note**: On Windows, press `Win + R`, type `%localappdata%`, click ok. Default location is `C:\Users\%USERPROFILE%\AppData\Local`
3. Launch `t7x.exe`.
4. You can change your name by modifying `Call of Duty Black Ops III\t7x\players\properties.json` or use `/name PLAYERNAME` in-game.
5. If running a server, extract `T7xDedicatedConfigs.zip` into your `Call of Duty Black Ops III` folder.

## Repository Contents
  - T7x Client
  - All Necessary Files (Including `ext.dll`)
  - T7x Client Dedicated Server Configuration Files
  - Python Script to format file hashes for files.json
  - Localized dependencies

## Added Features
  - Remove Steam Ownership Verification
  - Removed T7x Watermark
  - No Auto-Update (The new ext.dll adds Steam Verification, this is *CRUCIAL* if you do not own the game)
  - Reverted launcher to the original style
  - Changed executable icon to match original
  - Add files.json for users to host their own Master Server/HTTP fastDL Index

## Getting Game Files

- You can download the `Call of Duty Black Ops III` game files [directly](https://gofile.io/d/7pvpEs) or torrent them [here](https://git.rimmyscorner.com/Parasyn/cod-games-download/releases/download/v1.0.0/t7_full_game.zip).
- The DLC torrent is included.

## Installing Git (Optional)

If you don't have `git` installed on your machine, follow these steps:

1. Visit the [Git download page](https://git-scm.com/downloads).
2. Download the appropriate version for your operating system.
3. Run the installer.
   - During the installation, you will be asked if you want to add Git to your system's PATH environment variable. Ensure you choose the option to do so. This allows you to use Git from the command line without specifying its full path.
4. After installation, open a terminal or command prompt and type `git --version` to ensure Git is correctly installed.

## Compile from Source Code

### Prerequisites

- [Visual Studio 2022](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&channel=Release&version=VS2022&source=VSLandingPage&cid=2030&passive=false)
- The required code libraries installed using [VSBuildTools](https://aka.ms/vs/17/release/vs_BuildTools.exe)

### Build

1. Clone the Git repository using `git clone https://git.rimmyscorner.com/Parasyn/t7x.git` (It is recommended to clone, however you can `Download ZIP` as all submodules have been localized).
2. Run `generate.bat` to initialize the submodules and build the VS .sln file.
3. Open the project in Visual Studio, change the top drop down lists to `Release`, `x64`. You can also modify (or leave same) the Visual Studio edition/path in the `build.bat` file and build the solution via the batch script.
4. Build the application.
<br>

## T7 Server Config
Config for T7 Dedicated Servers for use with the T7x Client.

## How to use
1. Download the BO3 Unranked Dedicated Server via Steam (It's located in the "Tools" section in your steam library.)
2. Add t7x.exe to the `Call of Duty Black Ops 3` folder.
3. Download this repository and extract startup batch files as well as the t7x and zone folder to the UnrankedServer Folder
4. Edit the config(s) in `/zone/` to your liking.
5. (Optional) Edit your game rules under `Call of Duty Black Ops 3/t7x/gamesettings/mp`.
6. Port forward UDP 27017.
7. Start the Server using T7x_MP_Server.bat or T7x_ZM_Server.bat

## Additional Steps required for hosting Zombies Dedicated Servers
As of right now you need to take additional Steps to host Zombies Servers.
For Zombie Dedis to work they need to have the Zombies Maps and common FastFiles, these do not come with the UnrankedServer Files. This means you need to copy those over from your installed BO3 game folder.

Copy common fastfiles that is needed for zombies.

```
zone/en_zm_patch.ff
zone/en_zm_common.ff
zone/zm_patch.ff
zone/zm_common.fd
zone/zm_common.ff
zone/zm_levelcommon.ff
```

Now for the map. Shadows of Evil is zm_zod. 

```
zone/en_zm_zod.ff
zone/en_zm_zod_patch.ff
zone/zm_zod.ff
zone/zm_zod_patch.ff
```

from your BO3 Game folder into the UnrankedServer's ```zone``` Folder. Do the same with the FastFiles of the Maps you want to host on the Server, you do not need to copy the .xpak files, those hold Textures and Sounds which the Server doesn't need. You can use the zm_server.cfg as a short name references if you want to grab the others.

You are now ready to start the Server using `T7x_ZM_Server.bat`. If the server still instantly closes while opening the `T7x_ZM_Server.bat` or `T7x_CP_Server.bat`. Check the console_mp.log from identities\dedicatedpc\ folder. Scroll down until you see "Could not find zone: xxxx".

## Disclaimer

This software has been created purely for the purposes of
academic research. It is not intended to be used to attack
other systems. Project maintainers are not responsible or
liable for misuse of the software. Use responsibly.

## Credits:

- [Dss0](https://github.com/Dss0/t7-server-config) - Dedicated Server Files & Tutorial
- [momo5502](https://github.com/momo5502) - Arxan/Steam research, original developer
- [AlterWare](https://alterware.dev/) - T7x project revival and rebranding

## ***End README***

# <u>Legacy README.md</u>

### What is T7x ☄️

T7x is a [discontinued][notice-link] game modification for Call of Duty: Black Ops 3.  
~~The Steam version of Black Ops 3 is required to be owned and installed for T7x to work. You can get it from <a href="https://store.steampowered.com/app/311210/Call_of_Duty_Black_Ops_III/">here</a>.~~

### Build

You can learn more about how you can build this project using the MSVC compiler by reading [build.md][build-link]

### Writeups & Articles

- <a href="https://momo5502.com/posts/2022-11-17-reverse-engineering-integrity-checks-in-black-ops-3/">Reverse engineering integrity checks in Black Ops 3</a>
- <a href="https://techcrunch.com/2023/02/28/gamers-are-fixing-a-video-game-taken-over-by-hackers/">Gamers are fixing a video game ‘taken over’ by hackers</a>

### Credits

- Thanks to <a href="https://github.com/shiversoftdev">@shiversoftdev</a> for providing the fixes from his <a href="https://github.com/shiversoftdev/t7patch">community patch</a>

### Disclaimer

This software has been created purely for the purposes of
academic research. It is not intended to be used to harm
others. Project maintainers are not responsible or
liable for misuse of the software. Use responsibly.

[notice-link]:       https://github.com/alterware/t7x/blob/main/notice.md
[build-link]:        https://github.com/alterware/t7x/blob/main/build.md