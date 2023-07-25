FROM confluentinc/cp-server-connect-base:7.4.0
USER root

COPY build/distributions/http-connector-for-apache-kafka-0.7.0-SNAPSHOT.zip /tmp/http-connector-for-apache-kafka-0.7.0-SNAPSHOT.zip

RUN confluent-hub install --no-prompt /tmp/http-connector-for-apache-kafka-0.7.0-SNAPSHOT.zip

USER kafka