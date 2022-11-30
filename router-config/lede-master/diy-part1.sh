#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Uncomment a feed source
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i "1isrc-git 00575 https://github.com/00575/openwrt-packages" feeds.conf.default
sed -i "2isrc-git ipkg https://github.com/xiangfeidexiaohuo/op-ipkg\n" feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

