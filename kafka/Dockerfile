FROM spotify/kafka:latest
MAINTAINER Mike Davis <mike@lightcycle.org>
LABEL version="1.0"
LABEL description="Kafka docker image with default topic"

ADD run.sh /run.sh
ADD create_sensordata_topic.sh /create_sensordata_topic.sh
RUN chmod +x /*.sh

RUN echo "offsets.topic.replication.factor=1" >> /opt/kafka_2.11-0.10.1.0/config/server.properties

CMD ["/run.sh"]