
do_install_append () {
	ln -s  ${STAGING_DIR_TARGET}/${target_exec_prefix}/ ${D}/${exec_prefix}/${TARGET_SYS}
}

sysroot_stage_all_append () {
	sysroot_stage_dir ${D}${exec_prefix}/${TARGET_SYS} ${SYSROOT_DESTDIR}${exec_prefix}/${TARGET_SYS}
}