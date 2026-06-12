#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git luci_app_vnt https://github.com/lmq8267/luci-app-vnt' >>feeds.conf.default
echo 'src-git AC https://github.com/kiss19776/openwrt-gecoosac' >>feeds.conf.default
echo 'src-git Lucky https://github.com/gdy666/luci-app-lucky' >>feeds.conf.default
sed -i '2s|https://github.com/qosmio/sqm-scripts-nss.git|https://github.com/JuliusBairaktaris/sqm-scripts-nss.git|' feeds.conf.default
sed -i 's|src-git packages https://github.com/immortalwrt/packages.git|src-git packages https://github.com/immortalwrt/packages.git^d91fbd7451ffb1a9ec103df956844baddc18591c|' feeds.conf.default
sed -i 's|src-git luci https://github.com/immortalwrt/luci.git|src-git luci https://github.com/immortalwrt/luci.git^874556da6b3b9c5ab1f2c7d3231a1c8de7fb8b56|' feeds.conf.default
sed -i 's|src-git routing https://github.com/openwrt/routing.git|src-git routing https://github.com/openwrt/routing.git^776e7160636a7f1add27483ac926dadeb248bb65|' feeds.conf.default
sed -i 's|src-git telephony https://github.com/openwrt/telephony.git|src-git telephony https://github.com/openwrt/telephony.git^4d8d33a023b24c52cd9443b9dc201fbdfe9c6aef|' feeds.conf.default
