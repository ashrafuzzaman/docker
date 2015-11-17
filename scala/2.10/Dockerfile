FROM java

# Install scala
ENV SCALA_VERSION 2.10.6
RUN wget http://www.scala-lang.org/files/archive/scala-$SCALA_VERSION.deb 
RUN dpkg -i scala-$SCALA_VERSION.deb
RUN rm -f scala-$SCALA_VERSION.deb
