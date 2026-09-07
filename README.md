# Dragon Age 2 Native Gamepad Support
Tricks the PC version of the game into believing it’s running the console version, with native gamepad support


## What it does

The PC version of this game never had native gamepad support, even though there are console ports of the game who do have it.
Having read online several times that the PC version actually had left-over code from the console versions, in which people could see references to gamepad support, I reverse-engineered both the PC and PS3 versions using Claude to understand what was already there and what was missing.
Long story short, both the code and the UI (gfx files) from the PC version had a lot from the console versions, but were missing some callers, references and GUI images.
This mod restores all the missing assets from PS3 and Xbox 360 into the gfx files and injects the missing code through a DInput dll that runs when the game launches.

Just to be clear, this is not an input mapper like Joy2Key or SteamInput, this restores the missing code from the console versions and makes the game believe it's running one of the console version (with some exceptions)

## Considerations

- The game's UI is completely flipped into the console version, so with this mod, you can't play the game with mouse and keyboard. Most of the actions are locked out without a gamepad.
- I've tested the game, with the latest version of the mod for over 20 hours, but obviously it's a long game and to be honest, I never finished it before, (that's why I made the mod, to finally play it in the comfort of my couch) so obviously there can still be bugs which I haven't located
- I've tested with both the mage and warrior classes, so any test with the Rogue will be welcome.
- I haven't tested this mod with other mods installed other than the HD textures. If you have any mods installed, as long as they don't try to replace UI elements, there shoulnd't be a problem
- As I mentioned before, this mod was done with the help of an AI. I want to be very transparent on that as I know it can be a controversial topic

## How to install

- Place the override folder inside of Documents/Bioware/Dragon Age 2/packages/core
- Then place "dinput8.dll" and "da2_console.ini" inside the bin_ship folder of the game
- Modify the ini with 1 or 2 depending on the gamepad icons you want to see during gameplay
- If you are playing on Steam Deck, use the launch command WINEDLLOVERRIDES="dinput8=n,b" %command%

## How to uninstall

- Erase all the files inside the the override folder at Documents/Bioware/Dragon Age 2/packages/core
- Erase "dinput8.dll" and "da2_console.ini" from the bin_ship folder of the game
- After that the game will return to the regular pc version
