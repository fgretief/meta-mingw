FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_mingw32 = " file://db-fix-case-of-winioctl.patch;patchdir=.."

EXTRA_OECONF_append_mingw32 = " --enable-mingw LIBCSO_LIBS=-wsock32 LIBXSO_LIBS=-lwsock32"
