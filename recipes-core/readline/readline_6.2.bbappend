EXTRA_OECONF_append_mingw32 = " bash_cv_have_mbstate_t=yes"

LEAD_SONAME_mingw32 = "libreadline.dll"

do_install_mingw32() {
	autotools_do_install
}
