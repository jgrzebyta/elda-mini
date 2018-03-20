# Based on tomcat8 with java 8
FROM tomcat:8-jre8

MAINTAINER Jacek Grzebyta <jgrzebyta@users.noreply.github.com>

ENV RDF4J_DATA /srv/rdf4j
ENV DEPLOY "$CATALINA_HOME"/webapps/
ENV HOME $CATALINA_HOME

ENV JAVA_OPTS '-Dorg.eclipse.rdf4j.appdata.basedir=$RDF4J_DATA'

VOLUME ["$RDF4J_DATA"]

ADD bins /tmp/sesame

RUN rm -rf $CATALINA_HOME/webapps/docs/ && \
    rm -rf $CATALINA_HOME/webapps/examples/ && \
    cp -v /tmp/sesame/*.war "$DEPLOY"

# export port 8080
EXPOSE 8080 8009

## Final run
CMD ["catalina.sh", "run"]
