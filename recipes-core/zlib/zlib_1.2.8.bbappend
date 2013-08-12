# FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

## The zlib project uses a different makefile for MinGW builds. Thus we override
## the normal configure/compile/install targets with MinGW spesifc ones.

do_configure_class-nativesdk_mingw32() {
    :
}

do_compile_class-nativesdk_mingw32() {
    unset LD
    oe_runmake -f win32/Makefile.gcc all PREFIX=${SDK_PREFIX} prefix="${exec_prefix}" LD="${CC}"
}

do_install_class-nativesdk_mingw32() {
    oe_runmake -f win32/Makefile.gcc install INCLUDE_PATH=${D}${includedir} LIBRARY_PATH=${D}${libdir} BINARY_PATH=${D}${bindir}
}
