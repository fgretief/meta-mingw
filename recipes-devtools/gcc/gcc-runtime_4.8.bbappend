#FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

## MinGW specific files

FILES_libstdc++ += "${bindir}/libstdc++*.dll"
FILES_libstdc++-staticdev += "${libdir}/libstdc++.dll.a*"

FILES_libssp += "${bindir}/libssp*.dll"

FILES_libgomp += "${bindir}/libgomp*.dll"
