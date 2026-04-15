#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i '/grep .*mkhash md5 > .*\.vermagic/s/^/#/' include/kernel-defaults.mk
sed -i '/^#.*grep .*mkhash md5 > .*\.vermagic/a\\tcp $(TOPDIR)/vermagic $(LINUX_DIR)/.vermagic' include/kernel-defaults.mk
sed -i 's/^STAMP_BUILT:=.*_$(shell.*kconfig.pl.*)/# &/' package/kernel/linux/Makefile
sed -i '/^# STAMP_BUILT:=.*_$(shell.*kconfig.pl.*)/a\STAMP_BUILT:=$(STAMP_BUILT)_$(shell cat $(LINUX_DIR)/.vermagic)' package/kernel/linux/Makefile
cd ..
mv mt7621_netgear_r6220.dts openwrt/target/linux/ramips/dts/mt7621_netgear_r6220.dts
cd openwrt
