# Pishock Mario 64
Super Mario 64, but every time you take damage, it'll put you through more pain than Mario is going through.

In other words, it shocks you using a shock collar.

The mod uses a specific version of Super Mario 64. That being [Super Mario 64 Coop DX](https://github.com/coop-deluxe/sm64coopdx/releases). So if you really want to, you can start a server with other players who can punch you to death. Fun!

> [!WARNING]
> I'm not responsible for any damages done by this project (AI and Pancake wrote most of this anyways, do I look like I know how to write bash scripts?).
> 
> (I also don't even own a shock collar. I am just praying this works.)
> 
> Please be careful.

> [!IMPORTANT]
> For legal reasons, this tool was not designed to be used on animals or humans. You can probably get away with using it on aliens, if you find any.
> I'm not sure how this rule extends to catgirls and other hybrids.. ask your lawyer

>(NOTE: none of that last part was written by me. Don't quote me on that)

## How do I use it?
Well, first of all you're going to need a [shock collar](https://pishock.com/). Then you're going to need [Super Mario 64 Coop DX](https://github.com/coop-deluxe/sm64coopdx/releases) (LINUX ONLY). Then clone this repo (or just download start.sh and shockms.sh) into the same directory.

The 2 batch scripts should be in the same directory as the "sm64coopdx" file.

Now, create a file called `shockenv.sh` in the same directory, and enter your secrets:
```bash
#!/bin/bash
export PISHOCK_USER="Username"
export PISHOCK_API_KEY="xxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
export PISHOCK_CODE="FFFFFFFFFFF"
```

Finally, run `./start.sh` and enjoy the game!

## I'm on Windows/Mac
The scripts were made to be run on Linux systems, but you can still manually make it work. Just launch the exe file with console output, and copy the PiShock.lua file from the linux script into the mods folder. Then just read the output from the game, and call the PiShock API whenever "Local Player Damaged" is sent to the console. Have fun!

## How does it work?
On first launch, it'll create a lua script in the mods folder. It'll print "Local Player Damaged" to the console whenever the local user's health decreases. The `start.sh` script then launches the game with console output, allowing it to read any logs sent from mods. The actual PiShock stuff was pretty much all done by [@PancakeTAS](https://github.com/PancakeTAS), so you can ask her about that part lmao

## How do I know it works?
Launching the game and taking damage should shock you. If you're scared of malfunction, check the pishock logs on the website without the shock collar on. If you're still scared... well you installed the mod, what did you expect?

## Is it tested?
No, lmao.
