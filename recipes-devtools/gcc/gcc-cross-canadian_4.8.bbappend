INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
LDFLAGS_append_sdkmingw32 = " -Wl,-static"
EXEEXT_sdkmingw32 = ".exe"
ELFUTILS_sdkmingw32 = ""
DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"

## Make the sysroot relative to the GCC executable on MinGW machines
EXTRA_OECONF_PATHS_remove = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS}"
EXTRA_OECONF_PATHS_append = " --with-sysroot=${exec_prefix}/../../${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS}"
