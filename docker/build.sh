#!/bin/bash
# Copyright (C) 2026 akhil838 (https://github.com/akhil838)
# SPDX-License-Identifier: GPL-3.0-or-later
#
# Build TWRP recovery for Lenovo TB390FU (malbec)
# Usage: ./docker/build.sh

set -e

DEVICE=malbec
TWRP_DIR="/twrp"
DEVICE_PATH="device/lenovo/$DEVICE"

echo "=== TWRP 16.0 Build for $DEVICE ==="
echo "Cores: $(nproc) | RAM: $(free -h | awk '/Mem:/{print $2}')"
echo ""

# Step 1: Sync manifest (skip if already synced)
if [ ! -f "$TWRP_DIR/build/envsetup.sh" ]; then
    echo "=== Syncing TWRP 16.0 manifest ==="
    cd "$TWRP_DIR"
    repo init -u https://github.com/TWRP-Test/platform_manifest_twrp_aosp.git \
        -b twrp-16.0 --depth=1
    repo sync -c --no-clone-bundle --no-tags --force-sync -j4 || \
    repo sync -c --no-clone-bundle --no-tags --force-sync -j2 || \
    repo sync -c --no-clone-bundle --no-tags --force-sync -j1
else
    echo "=== Source already synced, skipping ==="
fi

# Step 2: Place device tree (mounted from host)
if [ ! -d "$TWRP_DIR/$DEVICE_PATH" ]; then
    echo "ERROR: Device tree not found at $TWRP_DIR/$DEVICE_PATH"
    echo "Mount it with: -v /path/to/malbec-twrp:$TWRP_DIR/$DEVICE_PATH"
    exit 1
fi

# Step 3: Build
echo ""
echo "=== Building recovery ==="
cd "$TWRP_DIR"
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export USE_CCACHE=1
export CCACHE_DIR="$TWRP_DIR/.ccache"
export CCACHE_MAXSIZE=10G
ccache -M 10G 2>/dev/null || true

lunch twrp_$DEVICE
m recoveryimage -j$(nproc)

# Step 4: Copy output
BUILD_DATE=$(date +%F)
OUT_IMG="out/target/product/$DEVICE/recovery.img"
FINAL_NAME="TWRP-3.7.1_16-$DEVICE-$BUILD_DATE.img"

if [ -f "$OUT_IMG" ]; then
    cp "$OUT_IMG" "/output/$FINAL_NAME"
    echo ""
    echo "=== BUILD SUCCESS ==="
    echo "Output: /output/$FINAL_NAME"
    ls -lh "/output/$FINAL_NAME"
else
    echo "=== BUILD FAILED — no recovery.img ==="
    exit 1
fi
