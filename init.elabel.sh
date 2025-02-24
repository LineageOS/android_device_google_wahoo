#! /system/bin/sh

if [ -d /mnt/vendor/persist/elabel ]; then
    if [ ! -f /data/misc/elabel/elabels_copied ]; then
        cp /mnt/vendor/persist/elabel/* /data/misc/elabel/
        echo 1 > /data/misc/elabel/elabels_copied
        chown system.system /data/misc/elabel/*
        chmod 400 /data/misc/elabel/*
    fi
fi
