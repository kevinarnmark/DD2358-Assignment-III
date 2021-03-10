# Plotting execution time
#cd ".."
cd "data"
#set terminal dumb enhanced ansi256
#set term dumb 94 44
set terminal png
set autoscale
set output "bench_result_time.png"
set xlabel "N"
set ylabel "Execution Time, Seconds"
set border 3 lw 1
set title "Intel Core i7 7700HQ, gcc 9.3.0"
set tics nomirror
set key inside right
plot "naive_perf.dat" using 1:($2) with linespoints title "Naive",\
     "oblas_perf.dat" using 1:($2) with linespoints title "openBLAS"

# Plotting FLOPS/S
#set terminal dumb enhanced ansi256
#set term dumb 94 44
set terminal png
set autoscale
set output "bench_result_FLOPS.png"
set xlabel "N"
set ylabel "GFLOPS/s"
set border 3 lw 1
set title "Intel Core i7 7700HQ, gcc 9.3.0"
set tics nomirror
set key inside right
plot "naive_perf.dat" using 1:($3/1e9) with linespoints title "Naive",\
     "oblas_perf.dat" using 1:($3/1e9) with linespoints title "openBLAS"
