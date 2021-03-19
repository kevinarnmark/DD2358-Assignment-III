bin_PROGRAMS = $(top_builddir)/bin/main.out $(top_builddir)/bin/main_oblas.out $(top_builddir)/bin/main_libxsmm.out

__top_builddir__bin_main_out_SOURCES = main.c matrix.c
__top_builddir__bin_main_out_CFLAGS = -I$(top_srcdir)/include -Wall -O3


__top_builddir__bin_main_oblas_out_SOURCES = main.c matrix_cblas.c
__top_builddir__bin_main_oblas_out_CFLAGS = -I$(top_srcdir)/include -Wall -O3 -lopenblas

__top_builddir__bin_main_libxsmm_out_SOURCES = main.c matrix_lxsmm.c
__top_builddir__bin_main_libxsmm_out_CFLAGS = -I$(top_srcdir)/include -I$(top_srcdir)/include/libxsmm_include -Wall -O3 -lxsmm
