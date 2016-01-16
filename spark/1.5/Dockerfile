FROM 1science/sbt

MAINTAINER A.K.M. Ashrafuzzaman

ENV SPARK_VERSION 1.5.2

RUN curl -O http://d3kbcqa49mib13.cloudfront.net/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz
RUN tar -xvzf spark-${SPARK_VERSION}-bin-hadoop2.6.tgz -C ${PIO_HOME}/vendors
RUN rm spark-${SPARK_VERSION}-bin-hadoop2.6.tgz
