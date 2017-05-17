FROM openjdk

COPY ./scripts/bin/ /usr/local/bin

RUN apt-get update && apt-get install -y wget \
    && mkdir -p ~/.android/cache && chmod 777 ~/.android/cache \
    && cd ~ && pwd

WORKDIR /opt/install

CMD sleep infinity