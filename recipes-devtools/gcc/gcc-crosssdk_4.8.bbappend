FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

EXTRA_OECONF_mingw32 := "${@oe_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"

## TODO: fixme
## Add the following symlink to sysroot:
#cd ${TMPDIR}/sysroot/x86_64-linux/usr
#ln -s ../../x86_64-nativesdk-oesdk-mingw32~4/sysroots/x86_64-oesdk-mingw32/usr x86_64-oesdk-mingw32
## This allow linking step to work for libgcc
