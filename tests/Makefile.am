AM_CPPFLAGS = \
	-I$(top_srcdir)/include \
	-I$(top_srcdir)/common \
	@LIBCSTRING_DLL_IMPORT@

TESTS = \
	test_library.sh

check_SCRIPTS = \
	test_library.sh \
	test_runner.sh

EXTRA_DIST = \
	$(check_SCRIPTS)

check_PROGRAMS = \
	cstring_test_support

cstring_test_support_SOURCES = \
	cstring_test_libcstring.h \
	cstring_test_macros.h \
	cstring_test_support.c \
	cstring_test_unused.h

cstring_test_support_LDADD = \
	../libcstring/libcstring.la

MAINTAINERCLEANFILES = \
	Makefile.in

distclean: clean
	/bin/rm -f Makefile

