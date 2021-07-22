################################################################################
#
# libtirpc
#
################################################################################

LIBTIRPC_VERSION = 1.3.2
LIBTIRPC_SOURCE = libtirpc-$(LIBTIRPC_VERSION).tar.bz2
LIBTIRPC_SITE = http://downloads.sourceforge.net/project/libtirpc/libtirpc/$(LIBTIRPC_VERSION)
LIBTIRPC_LICENSE = BSD-3-Clause
LIBTIRPC_LICENSE_FILES = COPYING
LIBTIRPC_CPE_ID_VENDOR = libtirpc_project

LIBTIRPC_INSTALL_STAGING = YES

# getrpcby{number,name} are only provided if 'GQ' is defined
LIBTIRPC_CONF_ENV = CFLAGS="$(TARGET_CFLAGS) -DGQ"

LIBTIRPC_CONF_OPTS = --disable-gssapi
HOST_LIBTIRPC_CONF_OPTS = --disable-gssapi

$(eval $(autotools-package))
$(eval $(host-autotools-package))
