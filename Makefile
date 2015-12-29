#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=dtun
PKG_VERSION:=1.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Victor Oncins <victor.oncins@gmail.com>
PKG_LICENSE:=GPLv2

include $(INCLUDE_DIR)/package.mk

define Package/dtun
   SECTION:=net
   CATEGORY:=Network
   SUBMENU:=Routing and Redirection
   DEPENDS:=+nslookup
   TITLE:=Remote IP address updater for GRE tunnels
   MAINTAINER:=Victor Oncins <victor.oncins@gmail.com>
   PKGARCH:=all
endef

define Package/dtun/description
dtun updates the remote IP address of any GRE tunels based on a hostname. 
It is based on hotplug scripts. The tunnels must be previously created with UCI.
endef

define Package/dtun/conffiles
/etc/config/dtun
endef

define Build/Compile
endef

define Package/dtun/install
$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,dtun))
