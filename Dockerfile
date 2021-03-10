FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Europe/Stockholm
ENV OPENBLAS_NUM_THREADS=1
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /
RUN apt-get update && apt-get install -y build-essential libopenblas-dev pkg-config libgtest-dev gnuplot
COPY dd2358-assignment-3-1.0.tar.gz .
RUN tar -xvzf dd2358-assignment-3-1.0.tar.gz
WORKDIR /dd2358-assignment-3-1.0
RUN ./configure --prefix=/usr && make && make install && make check

VOLUME /dd2358-assignment-3-1.0/data

#COPY ./docker-entrypoint.sh .
#COPY ./benchmark.sh .
#COPY ./bin/run.sh bin
#COPY ./plot.gp .

ENTRYPOINT ["/dd2358-assignment-3-1.0/scripts/docker-entrypoint.sh"]
