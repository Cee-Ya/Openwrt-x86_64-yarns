#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.13.2/g' package/base-files/files/bin/config_generate

# 修改默认主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-Yarns'' package/lean/default-settings/files/zzz-default-settings
 
# 加入编译者信息
sed -i "s/OpenWrt /Yarns build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
