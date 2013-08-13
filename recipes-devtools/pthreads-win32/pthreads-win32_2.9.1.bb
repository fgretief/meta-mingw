DESCRIPTION = "A Win32 implementation of the POSIX standard threads API"
HOMEPAGE = "http://www.sourceware.org/pthreads-win32"
LICENSE = "LGPLv2.1"
LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=7fbc338309ac38fefcd64b04bb903e34"

BBCLASSEXTEND = "nativesdk"

COMPATIBLE_HOST = ".*-mingw.*"

## Replace dots with dashes
PVdash = "2-9-1"

## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads-win32 checkout pthreads
SRC_URI = "ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-${PVdash}-release.tar.gz"
SRC_URI[md5sum] = "36ba827d6aa0fa9f9ae740a35626e2e3"
SRC_URI[sha256sum] = "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e263ac7c7b66bc95fb4d"

## Reference: http://sourceware.org/ml/pthreads-win32/2009/msg00030/w64sup.patch
#SRC_URI += "file://w64sup.patch"

S = "${WORKDIR}/pthreads-w32-${PVdash}-release"

INHIBIT_DEFAULT_DEPS = "1"
DEPENDS = "virtual/${SDK_PREFIX}gcc-initial"

STAGINGCC = "gcc-cross-initial"
STAGINGCC_class-nativesdk = "gcc-crosssdk-initial"
TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
PATH_prepend = "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"

do_configure_prepend() {
    ## First reset all permissions because all are executable
    find . -type f -exec chmod 644 {} \;
    ## Make a copy of config.h
    cp config.h pthreads_win32_config.h
}

do_compile() {
    make -f GNUmakefile CROSS=${SDK_PREFIX} clean GC
}

do_install() {
    install -d -m 0755 ${D}${bindir}
    install -d -m 0755 ${D}${includedir}
    install -d -m 0755 ${D}${libdir}

    install -m 0644 ${S}/pthread.h ${S}/sched.h ${S}/semaphore.h ${D}${includedir}/

    install -m 0644 ${S}/libpthreadGC2.a ${D}${libdir}/libpthread.dll.a
    install -m 0644 ${S}/pthreadGC2.dll ${D}${bindir}/libpthread-2.dll
}
