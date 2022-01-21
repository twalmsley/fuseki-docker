FROM openjdk:16-buster

COPY apache-jena-fuseki-4.3.2 /fuseki

COPY entrypoint.sh /fuseki

RUN chmod 700 /fuseki/fuseki

RUN chmod 700 /fuseki/entrypoint.sh

EXPOSE 3030

ENTRYPOINT /fuseki/entrypoint.sh

