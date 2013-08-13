do_install_append_mingw32 () {
	ln -s libgmp.lib ${D}${libdir}/gmp.lib 
}