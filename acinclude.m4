dnl Functions for libcstring
dnl
dnl Version: 20141014

dnl Function to detect if libcstring dependencies are available
AC_DEFUN([AX_LIBCSTRING_CHECK_LOCAL],
 [dnl Headers included in libcstring/libcstring_narrow_string.h
 AC_CHECK_HEADERS([stdlib.h string.h])

 dnl Headers included in libcstring/libcstring_wide.h
 AC_CHECK_HEADERS([wchar.h wctype.h])

 dnl Narrow character string functions used in libcstring/libcstring_narrow_string.h
 AC_CHECK_FUNCS([fgets memchr memcmp memcpy memrchr snprintf sscanf strcasecmp strchr strlen strncasecmp strncmp strncpy strnicmp strrchr strstr vsnprintf])

 AS_IF(
  [test "x$ac_cv_func_fgets" != xyes],
  [AC_MSG_FAILURE(
   [Missing function: fgets],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_memchr" != xyes && test "x$ac_cv_func_strchr" != xyes],
  [AC_MSG_FAILURE(
   [Missing functions: memchr and strchr],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_memcmp" != xyes && test "x$ac_cv_func_strncmp" != xyes],
  [AC_MSG_FAILURE(
   [Missing functions: memcmp and strncmp],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_memcpy" != xyes && test "x$ac_cv_func_strncpy" != xyes],
  [AC_MSG_FAILURE(
   [Missing functions: memcpy and strncpy],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_memrchr" = xyes],
  [AC_CHECK_DECLS([memrchr])

  AS_IF(
   [test "x$ac_cv_decl_memrchr" != xyes],
   [ac_cv_func_memrchr=no])
  ])

 AS_IF(
  [test "x$ac_cv_func_memrchr" != xyes && test "x$ac_cv_func_strrchr" != xyes],
  [AC_MSG_FAILURE(
   [Missing functions: strrchr and memrchr],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_snprintf" != xyes],
  [AC_MSG_FAILURE(
   [Missing function: snprintf],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_sscanf" != xyes],
  [AC_MSG_FAILURE(
   [Missing function: sscanf],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_strlen" != xyes],
  [AC_MSG_FAILURE(
   [Missing function: strlen],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_strcasecmp" != xyes && test "x$ac_cv_func_strncasecmp" != xyes && test "x$ac_cv_func_strnicmp" != xyes],
  [AC_MSG_FAILURE(
   [Missing functions: strncasecmp, strcasecmp and strnicmp],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_strstr" != xyes],
  [AC_MSG_FAILURE(
   [Missing function: strstr],
   [1])
  ])

 AS_IF(
  [test "x$ac_cv_func_strstr" != xyes],
  [AC_MSG_FAILURE(
   [Missing function: vsnprintf],
   [1])
  ])

 dnl Wide character string functions used in libcstring/libcstring_wide_string.h
 AS_IF(
  [test "x$ac_cv_enable_wide_character_type" != xno],
  [AC_CHECK_FUNCS([swprintf towlower wcscasecmp wcschr wcslen wcsncasecmp wcsncmp wcsncpy wcsnicmp wcsrchr wcsstr wmemchr wmemcmp wmemcpy wmemrchr])

  AS_IF(
   [test "x$ac_cv_func_swprintf" != xyes],
   [AC_MSG_FAILURE(
    [Missing function: swprintf],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wmemchr" != xyes && test "x$ac_cv_func_wcschr" != xyes],
   [AC_MSG_FAILURE(
    [Missing functions: wmemchr and wcschr],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wmemcmp" != xyes && test "x$ac_cv_func_wcsncmp" != xyes],
   [AC_MSG_FAILURE(
    [Missing functions: wmemcmp and wcsncmp],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wmemcpy" != xyes && test "x$ac_cv_func_wcsncpy" != xyes],
   [AC_MSG_FAILURE(
    [Missing functions: wmemcpy and wcsncpy],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wmemrchr" != xyes && test "x$ac_cv_func_wcsrchr" != xyes],
   [AC_MSG_FAILURE(
    [Missing functions: wmemrchr and wcsrchr],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wcslen" != xyes],
   [AC_MSG_FAILURE(
    [Missing function: wcslen],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wcsncasecmp" != xyes && test "x$ac_cv_func_wcscasecmp" != xyes && test "x$ac_cv_func_wcsnicmp" != xyes && test "x$ac_cv_func_towlower" != xyes],
   [AC_MSG_FAILURE(
    [Missing functions: wcsncasecmp, wcscasecmp, wcsnicmp and towlower],
    [1])
   ])

  AS_IF(
   [test "x$ac_cv_func_wcsstr" != xyes],
   [AC_MSG_FAILURE(
    [Missing function: wcsstr],
    [1])
   ])
  ])
 ])

