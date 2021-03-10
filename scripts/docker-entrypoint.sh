#!/bin/sh

case $1 in

  naive)
    ./bin/main.out $2
  ;;

  oblas)
    ./bin/main_oblas.out $2
  ;;

  test)
    ./tests/func_test && ./tests/func_test_oblas 
  ;;

  benchmark)
    ./scripts/benchmark.sh $2
  ;;
  plot)
    gnuplot scripts/plot.gp
  ;;
esac

exit 0
