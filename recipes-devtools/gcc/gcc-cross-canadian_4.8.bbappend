INSANE_SKIP_${PN}_append = " staticdev"
EXTRA_OECONF_append = " --disable-nls"
LDFLAGS_append = " -Wl,-static"
EXEEXT = ".exe"
