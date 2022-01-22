FROM openjdk:16-buster

VOLUME ["/fuseki/run/databases"]
VOLUME ["/fuseki/run/configration"]

COPY apache-jena-fuseki-4.3.2 /fuseki

COPY entrypoint.sh /fuseki

COPY shiro.ini /fuseki/run/shiro.ini

RUN mkdir /fuseki/run/databases
RUN mkdir /fuseki/run/configuration

RUN chmod 700 /fuseki/fuseki

RUN chmod 700 /fuseki/entrypoint.sh

EXPOSE 3030

ENTRYPOINT /fuseki/entrypoint.sh

