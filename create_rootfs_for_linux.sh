#!/bin/bash                                                                                                                                                                                                         

# 用于从busybox创建根文件系统
# 在root权限下执行
if [ "$1" = "" ];then
        echo "error usage"
        echo "right usage: ./create_root_fs.sh <busybox_build_path>"
        exit 1
fi

if [ -d rootfs ];then
        cd rootfs
else
        echo "rootfs directory not exists"
        exit 1
fi

mkdir -pv {bin,sbin,etc,proc,sys,usr/{bin,sbin}}

cp -r $1 ./

mknod console c 5 1
