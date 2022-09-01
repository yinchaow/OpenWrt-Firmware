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
sed -i 's/192.168.1.1/192.168.7.8/g' package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

# Change CloudflareSpeedtest's language
#sed -i 's/# CONFIG_PACKAGE_luci-i18n-cloudflarespeedtest-zh_Hans is not set/CONFIG_PACKAGE_luci-i18n-cloudflarespeedtest-zh-cn=y/g' .config
#sed -i 's/# CONFIG_PACKAGE_luci-i18n-cloudflarespeedtest-zh_Hans is not set/CONFIG_PACKAGE_luci-i18n-cloudflarespeedtest-zh_Hans=y/g' .config
#echo 'CONFIG_PACKAGE_luci-i18n-cloudflarespeedtest-zh-cn=y' >> .config
#echo 'CONFIG_PACKAGE_luci-i18n-cloudflarespeedtest-zh_Hans=y' >> .config

# Modify hostname
sed -i '$ised -i '"'"'s/OpenWrt/WYC/g'"'"' /etc/config/system' package/lean/default-settings/files/zzz-default-settings

# Set gateway, broadcast, dns
sed -i '$ised -i \x27$i\\ \\ \\ \\ \\ \\ \\ \\ option gateway '"'"'"'"'192.168.7.2'"'"'"'"'\x27 /etc/config/network' package/lean/default-settings/files/zzz-default-settings
sed -i '$ised -i \x27$i\\ \\ \\ \\ \\ \\ \\ \\ option broadcast '"'"'"'"'192.168.7.255'"'"'"'"'\x27 /etc/config/network' package/lean/default-settings/files/zzz-default-settings
sed -i '$ised -i \x27$i\\ \\ \\ \\ \\ \\ \\ \\ option dns '"'"'"'"'223.6.6.6\\ 223.5.5.5\\ 119.29.29.29\\ 114.114.114.114'"'"'"'"'\x27 /etc/config/network' package/lean/default-settings/files/zzz-default-settings

# Disable dhcp
#sed -i '$ised -i \x27s\/start\ '"'"'"'"'100'"'"'"'"'\/ignore\ '"'"'"'"'1'"'"'"'"'\/g\x27\ /etc/config/dhcp' package/lean/default-settings/files/zzz-default-settings
#sed -i '$ised\ -i\ \x27s\/start\\ '"'"'"'"'100'"'"'"'"'\/ignore\\ '"'"'"'"'1'"'"'"'"'\/g\x27\ \/etc\/config\/dhcp' package/lean/default-settings/files/zzz-default-settings
sed -i '$ised -i '"'"'s/start/ignore/g'"'"' /etc/config/dhcp' package/lean/default-settings/files/zzz-default-settings
sed -i '$ised -i '"'"'s/100/1/g'"'"' /etc/config/dhcp' package/lean/default-settings/files/zzz-default-settings
sed -i '$ised -i \x27\/limit\/d\x27\ /etc/config/dhcp' package/lean/default-settings/files/zzz-default-settings
sed -i '$ised -i \x27\/leasetime\/d\x27\ /etc/config/dhcp' package/lean/default-settings/files/zzz-default-settings

# Change default theme
sed -i 's/Bootstrap/Argonne/g' package/lede/feeds/luci/collections/luci/Makefile
sed -i 's/bootstrap/argonne/g' package/lede/feeds/luci/collections/luci/Makefile
