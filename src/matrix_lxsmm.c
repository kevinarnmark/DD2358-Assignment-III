#include "matrix.h"
#include "libxsmm.h"

void matmul(int n, double* restrict c, const double* restrict a, const double* restrict b) {
    const double alpha = 1.0;
    const double beta = 0.0;
    const int* cn = &n;
    
    libxsmm_dgemm(NULL, NULL, cn, cn, cn, &alpha, b, NULL, a, NULL, &beta, c, NULL); 
}
