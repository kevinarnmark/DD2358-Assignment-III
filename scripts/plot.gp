# Plotting execution time
cd "data"
set terminal png
set autoscale
set output "bench_result_time.png"
set xlabel "N"
set ylabel "Execution Time, Seconds"
set border 3 lw 1
set title "i7-7700HQ 2.8Ghz, GCC/G++ 9.3.0"
set tics nomirror
set key inside right
plot "naive_perf.dat" using 1:($2) with linespoints title "Naive",\
     "oblas_perf.dat" using 1:($2) with linespoints title "openBLAS",\
     "libxsmm_perf.dat" using 1:($2) with linespoints title "LIBXSMM"

# Plotting GFLOPS/S
set terminal png
set autoscale
set output "bench_result_FLOPS.png"
set xlabel "N"
set ylabel "GFLOPS"
set border 3 lw 1
set title "i7-7700HQ 2.8Ghz, GCC/G++ 9.3.0"
set tics nomirror
set key inside right
plot "naive_perf.dat" using 1:($3/1e9) with linespoints title "Naive",\
     "oblas_perf.dat" using 1:($3/1e9) with linespoints title "openBLAS",\
     "libxsmm_perf.dat" using 1:($3/1e9) with linespoints title "LIBXSMM"
