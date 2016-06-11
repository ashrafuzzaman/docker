FROM ashrafuzzaman/alpin-jre:8

MAINTAINER A.K.M. Ashrafuzzaman ashrafuzzaman.g2@gmail.com

ENV ZOOKEEPER_VERSION 3.4.8
ENV ZOOKEEPER_HOME /opt/zookeeper-"$ZOOKEEPER_VERSION"

RUN mkdir /opt && \ 
    wget -q -O - http://apache.mirrors.pair.com/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz | tar -xzf - -C /opt && \
    cp $ZOOKEEPER_HOME/conf/zoo_sample.cfg $ZOOKEEPER_HOME/conf/zoo.cfg

CMD $ZOOKEEPER_HOME/bin/zkServer.sh start-foreground
EXPOSE 2181 2888 3888
