FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_mingw32 = " file://0001-Mingw-port-of-gdbm-1.10.patch"
