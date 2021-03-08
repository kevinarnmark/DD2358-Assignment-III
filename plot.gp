# Plotting execution time

#set terminal dumb enhanced ansi256
#set term dumb 94 44
set terminal png
set autoscale
set output "bench_result_time.png"
set xlabel "N"
set ylabel "Execution Time, Seconds"
set border 3 lw 1
set title "Intel Core i7 7700HQ, gcc 2021.1.2?"
set tics nomirror
set key inside right
cd "data"
plot "naive_perf.dat" using 1:($2) with linespoints title "Naive",\
     "oblas_perf.dat" using 1:($2) with linespoints title "openBLAS"

# Plotting FLOPS/S
cd ".."
#set terminal dumb enhanced ansi256
#set term dumb 94 44
set terminal png
set autoscale
set output "bench_result_FLOPS.png"
set xlabel "N"
set ylabel "GFLOPS/s"
set border 3 lw 1
set title "Intel Core i7 7700HQ, gcc 2021.1.2?"
set tics nomirror
set key inside right
cd "data"
plot "naive_perf.dat" using 1:($3/1e9) with linespoints title "Naive",\
     "oblas_perf.dat" using 1:($3/1e9) with linespoints title "openBLAS"
