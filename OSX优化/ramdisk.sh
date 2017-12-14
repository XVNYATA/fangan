#!/bin/bash

# Size at the end is * 2048 where 2048 = 1 MB, so 1572864 = 768 MB
#DISK=`/usr/bin/hdiutil attach -nobrowse -nomount ram://1572864`
#HFS+
#DISK=`/usr/bin/hdiutil attach -nobrowse -nomount ram://2097152`
#/usr/sbin/diskutil erasevolume HFS+ "RamDiskCache" $DISK


#APFS
diskutil partitionDisk $(hdiutil attach -nomount ram://2048000) 1 GPTFormat APFS 'RamdiskCache' '100%'

CACHEDIR="/Volumes/RamDiskCache/$USER"

# Chrome Cache
/bin/rm -rvf ~/Library/Caches/Google/Chrome/*
/bin/mkdir -pv $CACHEDIR/Google/Chrome/Default
/bin/ln -v -s $CACHEDIR/Google/Chrome/Default ~/Library/Caches/Google/Chrome/Default

# Chrome Canary Cache
/bin/rm -rvf ~/Library/Caches/Google/Chrome\ Canary/*
/bin/mkdir -pv $CACHEDIR/Google/Chrome\ Canary/Default
/bin/ln -v -s $CACHEDIR/Google/Chrome\ Canary/Default ~/Library/Caches/Google/Chrome\ Canary/Default

# Safari Cache
/bin/rm -rvf ~/Library/Caches/com.apple.Safari
/bin/mkdir -pv $CACHEDIR/Apple/Safari
/bin/ln -v -s $CACHEDIR/Apple/Safari ~/Library/Caches/com.apple.Safari



/usr/bin/chflags hidden /Volumes/RamDiskCache #Hide RamDisk directory