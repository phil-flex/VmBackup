#!/bin/sh
cfg=`echo $(hostname).$1.cfg|sed -e 's/\.\./\./'`
cd /mnt/vmexport/
./VmBackup.py $(hostname).pass $cfg compress=zstd
