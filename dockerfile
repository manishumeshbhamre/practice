FROM maven:3.8.2-openjdk-11

COPY script.sh /script.sh

ENTRYPOINT /script.sh
