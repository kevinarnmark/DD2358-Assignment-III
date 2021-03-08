#include "matrix.h"

void matmul(int n, double* restrict c, const double* restrict a,const double* restrict b){
    
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            for(int k = 0; k < n; k++) {
                c[i * n + j] += a[i * n + k] * b[j + k * n];
            }
        }
    }
}
