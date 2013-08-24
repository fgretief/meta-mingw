FILES_libstdc++ += "${bindir}/libstdc++*.dll"
FILES_libstdc++-staticdev += "${libdir}/libstdc++.dll.a*"
FILES_libssp += "${bindir}/libssp*.dll"
FILES_libgomp += "${bindir}/libgomp*.dll"

DEPENDS_append_mingw32 = " pthreads-win32"