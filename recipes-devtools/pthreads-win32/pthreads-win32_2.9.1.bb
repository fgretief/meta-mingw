DESCRIPTION = "A Win32 implementation of the POSIX standard threads API"
HOMEPAGE = "http://www.sourceware.org/pthreads-win32"
LICENSE = "LGPLv2.1"
LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=7fbc338309ac38fefcd64b04bb903e34"

BBCLASSEXTEND = "nativesdk"

PR = "r1"

## Replace dots with dashes
PVdash = "2-9-1"

## cvs -d :pserver:anonymous@sourceware.org:/cvs/pthreads-win32 checkout pthreads
SRC_URI = "ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-${PVdash}-release.tar.gz"
SRC_URI[md5sum] = "36ba827d6aa0fa9f9ae740a35626e2e3"
SRC_URI[sha256sum] = "e6aca7aea8de33d9c8580bcb3a0ea3ec0a7ace4ba3f4e263ac7c7b66bc95fb4d"

## Reference: http://sourceware.org/ml/pthreads-win32/2009/msg00030/w64sup.patch
#SRC_URI += "file://w64sup.patch"

S = "${WORKDIR}/pthreads-w32-${PVdash}-release"

## TODO: recipe is not finished yet. work in progress ..
