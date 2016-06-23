#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=dtun
PKG_VERSION:=1.2
PKG_RELEASE:=1
PKG_MAINTAINER:=Victor Oncins <victor.oncins@gmail.com>
PKG_LICENSE:=GPLv2

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
   SECTION:=net
   CATEGORY:=Network
   SUBMENU:=IP Addresses and Names
   TITLE:=Remote IP address updater for GRE and IPIP tunnels
   MAINTAINER:=$(PKG_MAINTAINER)
   PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
dtun updates the remote IP address of any GRE and IPIP tunels based on a hostname. 
It is based on hotplug scripts. The tunnels must be previously created with UCI.
endef

define Package/$(PKG_NAME)/conffiles
/etc/config/$(PKG_NAME)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
