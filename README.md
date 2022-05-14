## TWRP device tree for Xiaomi CC9 / MI 9 Lite (Pyxis)

## Features

Works:

- ADB
- F2FS support
- Android 12 support (only without screenlock)
- Decryption of /data (only F2FS)
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)
- USB OTG
- Android Pie and Q Support
- Vibration support
- DT2W support

DON'T work:

- EXT4 /data
- Decryption of Android 12 with screenlock

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/pyxis" name="Pyxis-Community/android_device_xiaomi_pyxis-twrp" remote="github" revision="android-11" />
```

Finally execute these:

```
. build/envsetup.sh
lunch twrp_pyxis-eng
mka recoveryimage
```

Install:

```
fastboot flash recovery out/target/product/pyxis/recovery.img
```
