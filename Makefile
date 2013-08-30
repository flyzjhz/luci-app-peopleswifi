include ../../build/config.mk
include ../../build/module.mk

define Package/luci-node-admin
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:= People's Wifi Mesh Node Admin
	DEPENDS:=+luci-lib-json +luci-mod-admin-core +luci-lib-httpclient +luci-theme-bootstrap
endef

define Package/luci-app-peopleswifi/install
	$(call Package/luci/install/template,$(1),applications/peopleswifi)
endef

ifneq ($(CONFIG_PACKAGE_luci-app-peopleswifi),)
	PKG_SELECTED_MODULES+=applications/peopleswifi
endef

$(eval $(call BuildPackage,luci-app-peopleswifi))
