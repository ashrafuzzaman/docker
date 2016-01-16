FROM java

MAINTAINER A.K.M. Ashrafuzzaman

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get update && apt-get install -y --force-yes libjansi-java sbt

ENV SCALA_VERSION 2.10.6
RUN wget http://www.scala-lang.org/files/archive/scala-$SCALA_VERSION.deb 
RUN dpkg -i scala-$SCALA_VERSION.deb
RUN rm -f scala-$SCALA_VERSION.deb
