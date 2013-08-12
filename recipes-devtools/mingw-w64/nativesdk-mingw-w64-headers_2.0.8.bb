DESCRIPTION = "Header files from the MingGW-w64 project"
LICENSE = "ZPL"
LIC_FILES_CHKSUM = "file://../COPYING;md5=3194ff3a0d16f018784d1847bc6a3c4d"

COMPATIBLE_HOST = ".*-mingw.*"

SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.gz"
SRC_URI[md5sum] = "659e5baf45ac8e8b8526f29786ee1112"
SRC_URI[sha256sum] = "1a5a2c57f90c7f1b5eb8402a52f93de645925a8af62c2cfe748f39ce66008cf4"

S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-headers"
B = "${WORKDIR}/build-${TARGET_SYS}"

inherit autotools nativesdk

INHIBIT_DEFAULT_DEPS = "1"
DEPENDS = ""

do_configure() {
	oe_runconf
}

do_compile() {
	:
}

do_install_append() {
	# Move files to include folder where gcc-crosssdk-initial is looking
	mv ${D}${exec_prefix}/${HOST_SYS}/include ${D}${exec_prefix}
	rmdir ${D}${exec_prefix}/${HOST_SYS}
}
