#FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

## MinGW specific files

FILES_${PN} += "${base_libdir}/libgcc_s*.dll"
FILES_${PN}-staticdev += "${base_libdir}/libgcc_s.a"
