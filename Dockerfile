FROM debian:jessie
MAINTAINER Carlos Kazuo

ENV VALIDATOR_RELEASE_VERSION 16.3.3
ENV VALIDATOR_FILE vnu.jar_${VALIDATOR_RELEASE_VERSION}.zip
ENV VALIDATOR_ZIP https://github.com/validator/validator/releases/download/${VALIDATOR_RELEASE_VERSION}/vnu.jar_${VALIDATOR_RELEASE_VERSION}.zip

RUN echo "deb http://ftp.de.debian.org/debian jessie-backports main" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y \
      openjdk-8-jre-headless \
      unzip \
      wget && \
    apt-get clean

RUN wget ${VALIDATOR_ZIP} && \
    unzip ${VALIDATOR_FILE} && \
    mv dist/vnu.jar / && \
    rm -rf dist

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

EXPOSE 8888

CMD ["java", "-cp", "/vnu.jar", "nu.validator.servlet.Main", "8888"]
