check_PROGRAMS = func_test func_test_oblas func_test_libxsmm
TESTS = $(check_PROGRAMS)

func_test_SOURCES = test.cpp

func_test_CPPFLAGS = -I$(top_srcdir)/include

func_test_CXXFLAGS = $(GTEST_CFLAGS)

func_test_LDFLAGS = -pthread

func_test_LDADD = $(GTEST_LIBS) \
                  $(top_builddir)/src/__top_builddir__bin_main_out-matrix.o

func_test_oblas_SOURCES = test.cpp

func_test_oblas_CPPFLAGS = -I$(top_srcdir)/include

func_test_oblas_CXXFLAGS = $(GTEST_CFLAGS)

func_test_oblas_LDFLAGS = -pthread

func_test_oblas_LDADD = $(GTEST_LIBS) \
                        $(top_builddir)/src/__top_builddir__bin_main_oblas_out-matrix_cblas.o


func_test_libxsmm_SOURCES = test.cpp

func_test_libxsmm_CPPFLAGS = -I$(top_srcdir)/include

func_test_libxsmm_CXXFLAGS = $(GTEST_CFLAGS)

func_test_libxsmm_LDFLAGS = -pthread

func_test_libxsmm_LDADD = $(GTEST_LIBS) \
                        $(top_builddir)/src/__top_builddir__bin_main_libxsmm_out-matrix_lxsmm.o
