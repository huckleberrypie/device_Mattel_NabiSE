# device_Mattel_NabiSE
## American Girl edition

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.3GHz Quad-Core MT8127
GPU     | Mali-450MP
Memory  | 1GB RAM
Shipped Android Version | 6.0
Storage | 16GB
Display | 7" 1024 x 600 px
Camera  | 2MPx rear, 0.3MPx front

<img src="https://i.imgur.com/Tg7iPWq.png" alt="TOY7-AG" height="450" width="450"/>
Device tree for the Nabi SE tablet (and related variants e.g. American Girl, Barbie and Hot Wheels; the Fisher-Price Learning Tablet runs off an MT8163 SoC and is somewhat unrelated; shouldn't be hard to port it though but I don't have that one atm).

To build from source, clone this repo or download this branch as a ZIP, then follow the TWRP guide at http://forum.xda-developers.com/showthread.php?t=1943625

Go to your source folder, e.g. `/home/[username]/omni`, key in `source ./build/envsetup.sh`, then `lunch omni_nabiSE-eng` then `make clean && make -j# recoveryimage`, replacing `-j#` with either `j3` or `j5` depending on your processor. On a dual core, you should use `j3`.

If all goes well, you should end up with a freshly-cooked recovery.img in `/out/product/Mattel/NabiSE`. You may now flash it to your device using SP Flash Tool v5.1532 or through fastboot. I dunno if it's necessary to unlock the bootloader but it shouldn't hurt to try.

## Issues/Caveats
* TWRP insists on a portrait orientation. Not sure how to make it landscape as using a landscape theme merely slaps said theme without rotating the screen. Oh well.
* Encryption is enabled by default on this tablet, and as such you may have to wipe data due to password issues. Looking into forcibly disabling it through Magisk or something. :/

## Todo
* Edited PNG files needs optimisation. Dunno how the TWRP team were able to pull that off without ending up being mangled.

## Downloads
You may download the initial recovery releases for the vanilla SE here: https://github.com/huckleberrypie/device_Mattel_NabiSE/releases

## Special thanks
Major props to neporood for the friendship and advice, Kevin Giles who generously donated a bunch of SEs and volunteered to mess them up for science, diplomatic@XDA for being the ultimate MTK fanboi and schooling yours truly about the inner workings of MediaTek devices, my pals at the American Girl collectors groups (Molly, Shannon, Amy...), and to everyone else worth thanking. ;)
