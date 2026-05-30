# malbec-twrp

TWRP device tree for Lenovo Idea Tab Pro Gen 2 TB390FU, codename `malbec`.

## Layout

This repository is meant to be checked out as:

```text
device/lenovo/malbec
```

## Setup

From a TWRP/AOSP recovery build tree:

```bash
mkdir -p device/lenovo
git clone https://github.com/akhil838/malbec-twrp.git device/lenovo/malbec
```

## Build

```bash
source build/envsetup.sh
lunch twrp_malbec-eng
mka recoveryimage
```

Prebuilt kernel, DTB, DTBO, and vendor ramdisk extracted from the original TB390FU ROM are under `prebuilt/`.
