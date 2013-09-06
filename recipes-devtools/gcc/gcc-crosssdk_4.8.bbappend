EXTRA_OECONF_mingw32 := "${@oe_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
