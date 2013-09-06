
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_mingw32 = " file://fix.patch"
