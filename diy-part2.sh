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
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
#cd ..
#mv 10_fix_wifi_mac openwrt/target/linux/ramips/mt7621/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
#mv 02_network openwrt/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
# mv Makefile  openwrt/package/kernel/linux/Makefile
# mv kernel-defaults.mk openwrt/include/kernel-defaults.mk
# mv vermagic openwrt/vermagic
#cd openwrt
