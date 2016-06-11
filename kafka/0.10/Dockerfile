FROM ashrafuzzaman/alpin-jre:8

MAINTAINER A.K.M. Ashrafuzzaman ashrafuzzaman.g2@gmail.com

ENV SCALA_VERSION 2.11
ENV KAFKA_VERSION 0.10.0.0
ENV KAFKA_HOME /opt/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION"

RUN wget -q http://apache.mirrors.spacedump.net/kafka/"$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -O /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz && \
  mkdir /opt && \
  tar xfz /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz -C /opt && \
  rm /tmp/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz

RUN export PATH=$KAFKA_HOME/bin:$PATH
ADD scripts/start-kafka.sh /usr/bin/start-kafka.sh
CMD sh /usr/bin/start-kafka.sh
EXPOSE 9092
