#!/bin/bash

PACKAGES=""
PACKAGES="$PACKAGES openssh-sftp-server"
PACKAGES="$PACKAGES luci-app-openclash"
PACKAGES="$PACKAGES luci-i18n-argon-config-zh-cn"
PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn"
PACKAGES="$PACKAGES luci-i18n-dockerman-zh-cn"
PACKAGES="$PACKAGES luci-i18n-filebrowser-zh-cn"
PACKAGES="$PACKAGES luci-i18n-firewall-zh-cn"
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn"
PACKAGES="$PACKAGES luci-i18n-package-manager-zh-cn"
PACKAGES="$PACKAGES luci-i18n-ttyd-zh-cn"

make image PROFILE="generic" PACKAGES="$PACKAGES" ROOTFS_PARTSIZE="10240"

echo "$(date '+%Y-%m-%d %H:%M:%S') - Build completed successfully."
