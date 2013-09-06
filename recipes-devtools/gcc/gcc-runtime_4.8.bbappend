FILES_libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
FILES_libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
FILES_libssp_append_mingw32 = " ${bindir}/libssp*.dll"
FILES_libgomp_append_mingw32 = " ${bindir}/libgomp*.dll"

DEPENDS_append_mingw32 = " pthreads-win32"
