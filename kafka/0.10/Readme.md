Pass in the configuration file with environment.

A sample compose file,
```
version: '2'
services:
  kafka:
    image: ashrafuzzaman/kafka:0.10
    ports:
      - "9092:9092"
    volumes:
        - './config:/etc/config'
    environment:
        CONFIG_FILE_PATH: /etc/config/kafka.properties
    links:
      - zookeeper
  zookeeper:
    image: ashrafuzzaman/zookeeper:3.4
    ports:
      - "2181:2181"
```