# android_device_Mattel_NabiSE

Unofficial port of TWRP for the Nabi SE tablet (and related variants e.g. American Girl, Barbie and Hot Wheels; the Fisher-Price Learning Tablet runs off a different MTK SoC and is somewhat unrelated).

To build from source, clone this repo or download this branch as a ZIP, then follow the TWRP guide at http://forum.xda-developers.com/showthread.php?t=1943625

Copy the contents of this repo in `/omni/device/Mattel/NabiSE`, key in `source ./build/envsetup.sh`, then `lunch omni_nabiSE-eng` then `make clean && make -j# recoveryimage`, replacing `-j#` with either `j3` or `j5` depending on your processor. On a dual core, you should use `j3`.

If all goes well, you should end up with a freshly-cooked recovery.img in `/out/product/Mattel/NabiSE`.

## Issues/Caveats
* Screen orientation is in portrait, yet the touchscreen insists otherwise for whatever reason. Any suggestions on getting this sorted out would be highly appreciated.
* Mount points are flat-out wrong, but that's the least of our worries.

## Downloads
There aren't any public releases
