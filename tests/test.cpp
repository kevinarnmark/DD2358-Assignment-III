#include <gtest/gtest.h>

extern "C" {
#include <matrix.h>
}

TEST(AppTest, Basic_GEMM) {
    int n = 2;
    double *A_ptr, *B_ptr, *C_ptr;
    double A[n*n] = {1.0, 2.0, 3.0, 4.0};
    double B[n*n] = {4.0, 3.0, 2.0, 1.0};
    double C[n*n] = {0.0, 0.0, 0.0, 0.0};
    A_ptr = A;
    B_ptr = B;
    C_ptr = C;
    double exact[n*n] = {8.0, 5.0, 20.0, 13.0};
    matmul(n, C_ptr, A_ptr, B_ptr);
    for (int i = 0; i < n*n; i++) {
        ASSERT_NEAR(exact[i], C[i], 1e-15);
    }
}

TEST(AppTest, Negative_GEMM) {
    int n = 2;
    double *A_ptr, *B_ptr, *C_ptr;
    double A[n*n] = {-3.0, -2.0, 4.0, -1.0};
    double B[n*n] = {2.0, 1.0, -3.0, 4.0};
    double C[n*n] = {0.0, 0.0, 0.0, 0.0};
    A_ptr = A;
    B_ptr = B;
    C_ptr = C;
    double exact[n*n] = {0.0, -11.0, 11.0, 0.0};
    matmul(n, C_ptr, A_ptr, B_ptr);
    for (int i = 0; i < n*n; i++) {
        ASSERT_NEAR(exact[i], C[i], 1e-15);
    }
}


TEST(AppTest, Large_GEMM) {
    int n = 200;
    double *A_ptr, *B_ptr, *C_ptr;
    double A[n*n], B[n*n], C[n*n], exact[n*n];
    A_ptr = A;
    B_ptr = B;
    C_ptr = C;
    
    for (int i = 0; i < n*n; i++) {
        A[i] = 1.0;
        B[i] = 1.0;
        C[i] = 0.0;
        exact[i] = (double) n;
    }
    
    matmul(n, C_ptr, A_ptr, B_ptr);
    for (int i = 0; i < n*n; i++) {
        ASSERT_NEAR(exact[i], C[i], 1e-15);
    }
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

