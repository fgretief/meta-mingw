remove_problem_symlinks() {
	## These two symlinks cause the TAR to fail
	rm -f ${SDK_OUTPUT}/${SDKTARGETSYSROOT}${sysconfdir}/mtab
	rm -f ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/var/lock
}

SDK_POSTPROCESS_COMMAND += "remove_problem_symlinks ; "
