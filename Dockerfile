FROM ibmjava:8-sdk

RUN wget https://github.com/dipendub/ethereumj/blob/develop/ethereumj-core-1.13.0-SNAPSHOT-all.jar

WORKDIR /app
COPY ethereumj-core-1.13.0-SNAPSHOT-all.jar /app

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app/ethereumj-core-1.13.0-SNAPSHOT-all.jar" ]