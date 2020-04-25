# Instructions for compiling dtbo.img

## Step 1: Change directory to kernel source tree
```
$ cd /path/to/android_kernel_google_wahoo
```

## Step 2: Make defconfig
```
$ export ARCH=arm64
$ make lineageos_{muskie,taimen}_defconfig
```

## Step 3: Make dtbs target
```
$ export AARCH64_TC=/path/to/aarch64-linux-android-4.9/bin/
$ export ARM_TC=/path/to/arm-linux-androideabi-4.9/bin/
$ export CROSS_COMPILE=$AARCH64_TC/aarch64-linux-androidkernel-
$ export CROSS_COMPILE_ARM32=$ARM_TC/arm-linux-androidkernel-
$ export MISC=/path/to/misc/linux-x86/
$ export DTC=$MISC/dtc/dtc
$ make dtbs
```

## Step 4: Use mkdtimg to stitch dtbo.img together
```
$ export MKDTIMG=$MISC/libufdt/mkdtimg
$ $MKDTIMG ${walleye,taimen}_dtbo.img /path/to/{walleye,taimen}.cfg -d .
```

## Step 5: Profit
Your dtbo.img is at {walleye,taimen}_dtbo.img in the root directory of the kernel tree.

### Repos used for this guide

#### android_kernel_google_wahoo
* Link: https://github.com/LineageOS/android_kernel_google_wahoo
* sha1sum: 60744fd4381b5c1881f9e1a06b0f6a1859b9d66e

#### aarch64-linux-android-4.9
* Link: https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/
* sha1sum: 74ea98e3cc5a4b49be2df0f070b814fff7ab140b

#### arm-linux-androideabi-4.9
* Link: https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/
* sha1sum: 16dab5225bf4c95baae3733f05b6e4b0e1c9aae9

#### misc
* Link: https://android.googlesource.com/platform/prebuilts/misc/
* sha1sum: b378fddc5826f348bc4b1797d6cb30345bf30d4c