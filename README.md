Headless Android Device
=======================

https://github.com/gibsson/headless-android

This project intends to be a starting point for Headless device creation.
It leverages the different properties offered by Google to reduce the system to its minimum.
However the goal is to keep the full Java stack running without any UI.

First, you need to clone the repository inside your AOSP tree:
```
$ cd <AOSP_TREE>/device/<YOUR_NAME>
$ git clone https://github.com/gibsson/headless-android.git
$ cd <AOSP_TREE>
```

Then, in order to build this device, type the following commands:
```
$ source build/envsetup.sh
$ lunch mini_headless-eng
$ make
```

Finally, you can enjoy the use of a Headless emulator:
```
$ emulator
```

Some unexpected crash might happen during the SystemServer initialization, a patch is provided within the headless folder:
```
$ cd <AOSP_TREE>/frameworks/base
$ git am 0001-Headless-fix-SystemServer-crash-due-to-exception.patch
```

To prevent the Android logo to appear at startup, you can apply another patch provided as well:
```
$ cd <AOSP_TREE>/frameworks/native
$ git am 0001-Headless-prevent-boot-animation-to-start.patch
```

Note: those patches have been made for Android 4.4_r1
