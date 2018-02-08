#!/sbin/sh
#
# /system/bin/clean_cache.sh
# During a firmware upgrade, this script deletes cache files
# in /data/system/package_cache/*
#

if [ -d /data/system/package_cache/ ]; then
    rm -fr /data/system/package_cache/*
fi
