# T7x: Call of Duty® Black Ops III Client

[![discord](https://img.shields.io/endpoint?url=https://momo5502.com/iw4x/members-badge.php)](https://discord.gg/sKeVmR3)
[![website](https://img.shields.io/badge/Repackers-_Website-blue)](https://rimmyscorner.com/)

<p align="center">
  <img src="assets/gitea/banner-t7x.png?raw=true" />
</p>

---

> [!IMPORTANT]
> T7x is cross-compatible with the BOIII Client. You can play the same servers on T7x and BOIII Client, however T7x is newer.
> You are <u>***NOT***</u> required to own Call of Duty: Black Ops 3 in order to play this client. Steam Ownership Verification has been <u>***removed***</u>.
> You can view the changes made from original repository [here](https://git.rimmyscorner.com/Rim/t7x/compare/3e75c64ece0527dec384829dc28dd2c9d3ce5370..HEAD).

---

## Table of Contents

- [Client Download](#client-download)
- [Prerequisites](#prerequisites)
- [Install Instructions](#install-instructions)
  - [Installer](#installer)
  - [Zip Archive (Manual Installation)](#zip-archive-manual-installation)
- [Cloning the Repository](#cloning-the-repository)
  - [Using Git](#using-git)
- [Repository Contents](#repository-contents)
- [Added Features](#added-features)
  - [Installing Git (Optional)](#installing-git-optional)
- [Where Can I Get the Game?](#where-can-i-get-the-game)
  - [Downloading qBittorrent](#downloading-qbittorrent)
  - [What If I Have a Pirated version?](#what-if-i-have-a-pirated-version)
- [Command Line Arguments](#command-line-arguments)
- [Loading Mods \& Custom Maps](#loading-mods--custom-maps)
- [Hosting a Dedicated Server](#hosting-a-dedicated-server)
  - [Requirements](#requirements)
  - [Server Setup](#server-setup)
  - [Connecting](#connecting)
  - [Connecting to Friends Without Port Forwarding](#connecting-to-friends-without-port-forwarding)
- [Additional Steps Required for Hosting Zombies Dedicated Servers](#additional-steps-required-for-hosting-zombies-dedicated-servers)
- [Compile from Source Code](#compile-from-source-code)
  - [Prerequisites](#prerequisites-1)
  - [Build](#build)
    - [Build Using Scripts](#build-using-scripts)
    - [Build Using Tasks](#build-using-tasks)
- [Disclaimer](#disclaimer)
- [Credits](#credits)
- [End README](#end-readme)
- [README.md (Legacy)](#readmemd-legacy)
  - [What is T7x ☄️](#what-is-t7x-️)
  - [Build](#build-1)
  - [Writeups \& Articles](#writeups--articles)
  - [Credits](#credits-1)
  - [Disclaimer](#disclaimer-1)

## Client Download

[Click here for all client related downloads](https://git.rimmyscorner.com/Rim/t7x/releases/tag/latest)

## Prerequisites

- Call of Duty Black Ops III game files
- Windows 10/11 Operating System (those using Wine most likely don't need this guide)
- Steam installed (optional)

## Install Instructions

### <u>Installer</u>

1. Download or compile [`t7x-Installer-Win64.exe`](https://git.rimmyscorner.com/Rim/t7x/releases/download/latest/t7x-Installer-Win64.exe)
1. Place in Call of Duty Infinite Warfare game directory and run

(*The installer is fully [Open Source](https://git.rimmyscorner.com/Rim/t7x/src/branch/main/installer/t7x_Installer.nsi) and created using NSIS*)

> [!TIP]
>
> - Run installer as Administrator if your game installation is in a protected folder (e.g. `C:/Program Files`)
> - You **DO NOT** need to disable your anti-virus to run the installer

> [!NOTE]
The Installer:
>
> - Installs the t7x client files and scripts
> - Places the server configuration files
> - Gives you the option to a Desktop shortcut for the t7x Client
> - Creates uninstaller to remove all files

> [!WARNING]
The Uninstaller:
>
> Removes **ALL** files, including savegames, player stats, loadouts, etc. If you wish to uninstall and play in the future, make a backup of the `t7x/players` folder located in your game directory

### <u>Zip Archive (Manual Installation)</u>

1. Download `t7x-Release-Win64.zip`
2. Extract the contents of `t7x-Release-Win64.zip` into your Call of Duty Infinite Warfare game directory
    > **Note:** The default Steam installation path is usually `C:/Program Files (x86)/Steam/steamapps/common/Call of Duty Black Ops III`
3. Launch the game using either `t7x.exe` or `!start_client.bat`
4. You can change your name by modifying `Call of Duty Black Ops III/t7x/players/properties.json` or use `/name PLAYERNAME` in-game.

## Cloning the Repository

### <u>Using Git</u>

1. Ensure you have Git installed on your computer and added to your PATH environment variable
2. Open a terminal or command prompt
3. Run the following command:

    ```bash
    git clone http://git.rimmyscorner.com/Rim/t7x.git
    ```

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
- Reverted Launcher to the Original Style
- Changed Resource Icon to Match Original
- Binary Verification
- Intro Skip Flag
- Portable Mode
- Sample `files.json` for users to host their own Master Server/HTTP fastDL Index

### Installing Git (Optional)

If you don't have git installed on your machine, follow these steps:

1. Visit the [Git download page](https://git-scm.com/downloads).
2. Download the appropriate version for your operating system.
3. Run the installer.
   - During the installation, you will be asked if you want to add Git to your system's PATH environment variable. Ensure you choose the option to do so. This allows you to use Git from the command line without specifying its full path.
4. After installation, open a terminal or command prompt and type `git --version` to ensure Git is correctly installed.

## Where Can I Get the Game?

1. You can get the game on [Steam](https://store.steampowered.com/agecheck/app/292730/) (preferred)
2. If you can't afford the game. Oh well, you tried. You can get the game files for free [directly](https://gofile.io/d/7pvpEs) or torrent them [here](https://git.rimmyscorner.com/Rim/cod-games-download/releases/download/latest/t7_full_game.zip).

> [!NOTE]
> The DLC torrent is included.

### Downloading qBittorrent

> [!WARNING]
> Use a VPN to avoid copyright letters from your ISP (i.e. https://iknowwhatyoudownload.com)

1. Visit the [qBittorrent Download Page](https://www.qbittorrent.org/download) and install the latest version of qBittorrent
2. Open `.torrent` files in qBittorrent
3. Set your game(s) folder as your download directory (**_e.g._** `C:/Program Files (x86)/Steam/steamapps/common/Call of Duty...` or `D:/Games/Call of Duty...`)
4. **Important:** On the "Content layout" drop-down menu, select "Don't create subfolder"
5. Start the download and wait till it says "100% - Seeding"
6. You can now remove the torrent from qBittorrent (right click -> remove) or keep seeding to help others download faster
   - Make sure "Also Permanently Delete the Files" is **UNCHECKED**!
7. Once the game files are downloaded, move on to installing the client

> [!TIP]
> Use a free, open source and ad-free torrenting software such as [qBittorrent](https://www.qbittorrent.org/download)

### What If I Have a Pirated version?

The client will work just fine with the pirated files. As the end user, you need to ensure that you have the most up-to-date and latest files/binaries. I have added a binary verification to the client. This means, that if you do not have the correct `BlackOps3.exe` or `BlackOps3_UnrankedDedicatedServer.exe` executables, the client will fail to launch. This is not the same thing as ownership verification.

## Command Line Arguments

| Argument      | Description                                                            |
|:--------------|:-----------------------------------------------------------------------|
| `-unsafe-lua` | Allow in-game mods to executable unsafe lua functions                  |
| `-nosteam`    | Bypass Steam proxy                                                     |
| `-launch`     | Bypass launcher window and launch game directly                        |
| `-nointro`    | Skip intro animation sequence                                          |
| `-nocheck`    | Skip game binary hash checks                                           |
| `-headless`   | Direct output of `stdout` and `stderr` to current terminal environment |

## Loading Mods & Custom Maps

> [!TIP]
> **Default Workshop Location (If You Own the Game):**
> `C:/Program Files (x86)/Steam/steamapps/workshop/content/311210/`
>
> If you already have the workshop files downloaded through Steam, skip **Step 1** below.

**Steps:**

1. **Download the Mod or Map**

   Use the *[T7x Workshop Downloader (T7xWD)](https://git.rimmyscorner.com/Rim/T7x-Workshop-Downloader/releases)* to download the desired content.

2. **Create the Folders (If They Don’t Exist)**

   Inside your game directory, create the following folders if they don't exist:

   ``` bash
   Call of Duty Black Ops III/
     ├─ mods/
     └─ usermaps/
   ```

3. **Place the Files:**

- **Mods:** Place each mod in the `mods/` folder

  *(Example: `Call of Duty Black Ops III/mods/3413662211`)*

- **Custom Maps:** Place each map in the `usermaps/` folder

  *(Example: `Call of Duty Black Ops III/usermaps/3435762796`)*

---

> [!NOTE]
> After installing, you can launch the game and load your mods or custom maps from the in‑game menu.

## Hosting a Dedicated Server

### Requirements

- The [Visual C++ 2010 Redistributable Package](https://www.microsoft.com/en-us/download/details.aspx?id=5555) and the [Visual C++ 2015-2019 Redistributable Package](https://aka.ms/vs/16/release/vc_redist.x86.exe).
- [Visual Code](https://code.visualstudio.com/), [Notepad++](https://notepad-plus-plus.org/) or [Sublime Text](https://www.sublimetext.com/) (You may use whatever editor you choose but we don't recommend Windows Notepad).
- A computer or VPS that is online 24/7 with a decent connection and above-average specs (VPS is strongly advised).
- Some technical knowledge/background knowledge of computers.
- An original copy of the game.

### Server Setup

1. Download the BO3 Unranked Dedicated Server via Steam (under the "Tools" section in your Steam library.)
2. Add `t7x.exe` to the `Call of Duty Black Ops III/` folder.
3. Download the `T7DedicatedConfigs.zip` and extract into `Call of Duty Black Ops III/UnrankedServer` Folder
4. Edit the `zone/server*.cfg` to your liking (i.e. changing the ***map rotation*** and ***hostname***)
5. (Optional) Edit your game rules under `Call of Duty Black Ops III/t7x/gamesettings/mp`.
6. If using Windows, set an *Inbound* and *Outbound* firewall rule for the program executable and the port you chose (default: 27017) for UDP (Optional: Add the same rule for TCP to be safe)
7. Run the `!start_X_server.bat`

### Connecting

1. You can either connect using the built-in *Server Browser* or by executing the in-game command `/connect ip:port`. This can either be your Local or WAN IPv4 address
   - Obtain your Local IPv4 address by pressing `Win + R`, typing `cmd`, entering `ipconfig` and pressing `Enter`
   - Obtain your WAN IPv4 address by visiting a site like [WhatIsMyIP](https://www.whatismyip.com/) or [IPChicken](https://ipchicken.com/). If you have curl installed, you run the command `curl ifconfig.me`
> Local Example: Connecting locally would look like `/connect 192.168.0.202:27017`\
> WAN Example: Connecting over the internet would look like `/connect 192.145.117.83:27017` (*you must [forward ports](#forward-ports) on your router*)
>

### Connecting to Friends Without Port Forwarding

- You can use these applications to connect to friends **without** port forwarding!
    - ZeroTier
    - RadminVPN
    - LogMeIn Hamachi 

1. Download the tool of your choice
2. Create a network and have anyone you want to play with join it
3. Start a game of multiplayer / zombies
4. Have your friends connect using `/connect ip:port` (Default port is `27017`)

## Additional Steps Required for Hosting Zombies Dedicated Servers

As of right now you need to take additional Steps to host Zombies Servers.
For Zombie Dedis to work they need to have the Zombies Maps and common FastFiles, these do not come with the UnrankedServer Files. This means you need to copy those over from your installed BO3 game folder.

Copy common fastfiles that is needed for zombies.

``` plaintext
zone/en_zm_patch.ff
zone/en_zm_common.ff
zone/zm_patch.ff
zone/zm_common.fd
zone/zm_common.ff
zone/zm_levelcommon.ff
```

Now for the map. Shadows of Evil is zm_zod.

``` plaintext
zone/en_zm_zod.ff
zone/en_zm_zod_patch.ff
zone/zm_zod.ff
zone/zm_zod_patch.ff
```

Copy these from `Call of Duty Black Ops III/zone/` folder into the UnrankedServer's `zone/` folder. Do the same with the fast files of the maps you want to host on the server. You do not need to copy the .xpak files, those hold textures and sounds which the server doesn't need.

If the server still instantly closes, check the `console_mp.log` from `Unranked Server/identities/dedicatedpc/` folder. Scroll down until you see `Could not find zone: xxxx`

## Compile from Source Code

### Prerequisites

- [Visual Studio 2022](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&channel=Release&version=VS2022&source=VSLandingPage&cid=2030&passive=false)
- The required code libraries installed using [VSBuildTools](https://aka.ms/vs/17/release/vs_BuildTools.exe)

### Build

Clone the Git repository using `git clone https://git.rimmyscorner.com/Rim/iw7-mod.git` (It is recommended to clone, however you can `Download ZIP` as all submodules have been localized).

#### Build Using Scripts

1. Run `generate.bat` to initialize the submodules and build the VS `.sln` file.
2. Open the project in Visual Studio, change the top drop down lists to `Release`, `x64`. You can also modify (or leave same) the Visual Studio edition/path in the `build.bat` file and build the solution via the batch script.
3. Build the application.

#### Build Using Tasks

1. Open the folder workspace in [VSCode](https://code.visualstudio.com/download) or [VSCodium](https://github.com/VSCodium/vscodium)
2. Bring up `Run Task` dialog
  - By default, press `Ctrl + Shift + P` and enter `Run Task`\
 or
  - Press `Ctrl + Shift + B` to bring up the tasks menu directly
3. Run the task

## Disclaimer

This software has been created purely for the purposes of
academic research. It is not intended to be used to attack
other systems. Project maintainers are not responsible or
liable for misuse of the software. Use responsibly.

## Credits

- [Dss0](https://github.com/Dss0/t7-server-config) - Dedicated Server Files & Tutorial
- [momo5502](https://github.com/momo5502) - Arxan/Steam research, original developer
- [AlterWare](https://alterware.dev/) - T7x project revival and rebranding

## End README

---

## README.md (Legacy)

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
