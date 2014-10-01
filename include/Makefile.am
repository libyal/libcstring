include_HEADERS = \
	libcstring.h

pkginclude_HEADERS = \
	libcstring/definitions.h \
	libcstring/extern.h \
	libcstring/features.h \
	libcstring/types.h

EXTRA_DIST = \
	libcstring.h.in \
	libcstring/definitions.h.in \
	libcstring/features.h.in \
	libcstring/types.h.in

MAINTAINERCLEANFILES = \
	Makefile.in

distclean: clean
	/bin/rm -f libcstring.h
	/bin/rm -f libcstring/definitions.h
	/bin/rm -f libcstring/features.h
	/bin/rm -f libcstring/types.h
	/bin/rm -f Makefile

