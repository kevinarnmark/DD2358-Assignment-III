N=$1
STEP=$2

echo Running Naive Benchmark up to N=$N
./scripts/run.sh ./bin/main.out ./data/naive_perf.dat $N $STEP

echo Running openBLAS Benchmark up to N=$N
./scripts/run.sh ./bin/main_oblas.out ./data/oblas_perf.dat $N $STEP
 
echo Running openBLAS Benchmark up to N=$N
./scripts/run.sh ./bin/main_libxsmm.out ./data/libxsmm_perf.dat $N $STEP
