# DD2358-Assignment-III
To clone this repository:
```
$ git clone https://github.com/kevinarnmark/DD2358-Assignment-III.git
```

## Dependencies
* openBLAS (Other BLAS implementations will need slight changes in the code)
* GTEST
* C/C++ compiler

Installing the necessary dependencies may differ using other operating systems than Ubuntu. This README will assume the user runs Ubuntu:

Installing GTEST (2 ways):
Building from git:
```
clone GTEST repository
$ git clone https://github.com/google/googletest.git

Installing GTEST
$ mkdir build
$ cd build
$ cmake ..
$ cd ..
$ make install
```
Using the Ubuntu Advanced Packaging tool:
```
$ sudo apt-get install libgtest-dev
```

Installing openBLAS:
Install using apt:
```
$ sudo apt-get install libopenblas-dev
```
To only use openblas single threaded, create an env variable:
```
export OPENBLAS_NUM_THREADS=1
```
## Configuring autoconfig/automake
In the main directory of the repository:
```
$ ./autogen.sh
$ ./configure
```
## Resetting
To reset the entire working directory you can run the script
```
$ ./clean.sh 
```

## Building and running Test-Suite
The unit-tests can be executed with:
```
$ make check
```
or:
```
$ make
$ ./tests/func_test # For the naive test
$ ./tests/func_test_oblas # For the openBLAS test
```

## Building and running benchmark
Building and running the benchmark up to a matrix size of 500 can be done with:
```
$ mkdir data
$ make
$ ./scripts/benchmark.sh 500
```
The data is stored in the directory data (2 files, naive and oblas)
To plot these using gnuplot (install with sudo apt-get install gnuplot) 
```
$ gnuplot scripts/plot.gp
```
The resulting graphs are called bench_result_time.png & bench_result_FLOPS.png and can be found in the data directory.

## Building and running using Docker
The docker container can be built using:
```
$ sudo docker build -t dd2358-assignment-3:latest .
```
And the programs can be run using:
```
$ sudo docker run --rm -it dd2358-assignment-3:latest <command>
```

Use this if data needs to be collected from the program. Data generated will be saved where you specify it after -v before :. In this example it will be saved in the directory data in the current working directory.
```
$ sudo docker run --rm -v `pwd`/data:/dd2358-assignment-3-1.0/data -it dd2358-assignment-3:latest <command>
```
The following commands are available:
* naive m (Runs the naive matmul implementation for matrices of size mxm, e.g. ref 100 for 100x100)
* oblas m (Runs the oblas matmul implementation for matrices of size mxm)
* test (Runs unittests for both the oblas and naive implementation)
* benchmark m (Runs the benchmark for matrices up to mxm, saves it in the given volume)
* plot (Generates the plots from the benchmark data using gnuplot)
