## Prerequisites

- [Visual Studio 2022](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&channel=Release&version=VS2022&source=VSLandingPage&cid=2030&passive=false)
- The required code libraries installed using [VSBuildTools](https://aka.ms/vs/17/release/vs_BuildTools.exe)

## Build

1. Clone the Git repository using `git clone https://git.rimmyscorner.com/Parasyn/t7x.git` (It is recommended to clone, however you can `Download ZIP` as all submodules have been localized).
2. Run `generate.bat` to initialize the submodules and build the VS .sln file.
3. Open the project in Visual Studio, change the top drop down lists to `Release`, `x64`. You can also modify (or leave same) the Visual Studio edition/path in the `build.bat` file and build the solution via the batch script.
4. Build the application.