#!/bin/bash
set -e

echo "Starting sound driver bindings fix..."

# Bind mounts
mount -o bind /vendor/lib64/hw/sound_trigger.primary.kona.so /vendor/lib/hw/sound_trigger.primary.kona.so
mount -o bind /vendor/lib64/soundfx/libqcomvisualizer.so /vendor/lib/soundfx/libqcomvisualizer.so
mount -o bind /vendor/lib64/libqtigef.so /vendor/lib/libqtigef.so
mount -o bind /vendor/lib64/soundfx/libqcompostprocbundle.so /vendor/lib/soundfx/libqcompostprocbundle.so
mount -o bind /vendor/lib64/libfcsam.so /vendor/lib/libfcsam.so

# Reload systemd daemon
echo "Reloading systemd daemon..."
systemctl daemon-reload

echo "Sound driver bindings fixed successfully!"

