FROM confluentinc/cp-kafka-connect:latest

RUN confluent-hub install --no-prompt \
      confluentinc/kafka-connect-jdbc:10.8.4 \
    --component-dir /usr/share/confluent-hub-components \
  && confluent-hub install --no-prompt \
      confluentinc/connect-transforms:1.6.1 \
    --component-dir /usr/share/confluent-hub-components \
  && chmod -R a+r /usr/share/confluent-hub-components