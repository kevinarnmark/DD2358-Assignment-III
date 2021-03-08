#ifndef MATRIX_H
#define MATRIX_H
#define restrict __restrict__
void matmul(int n, double* restrict c, const double* restrict a, const double* restrict b);

#endif
