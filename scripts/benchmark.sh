N=$1

echo Running Naive Benchmark up to N=$N
./scripts/run.sh ./bin/main.out ./data/naive_perf.dat $N

echo Running openBLAS Benchmark up to N=$N
./scripts/run.sh ./bin/main_oblas.out ./data/oblas_perf.dat $N
