FROM tomcat:8.5-jre8-alpine


MAINTAINER Jacek Grzebyta <jacek.grzebyta@brunel.ac.uk>

# Default settings
ENV DATA_DIRECTORY /srv/data
ENV war_path /var/lib/wars
ENV static /var/lib/html
ENV PATH $PATH:/usr/local/bin
ENV CATALINA_OPTS "-Xms4g"

RUN apk update && \
    apk upgrade 

#install wget and bash
RUN apk add wget bash gettext tree

# Install static files
ADD templates /var/templates
ADD bins $war_path


# Add VOLUME to allow access to the mapping file and local assets
VOLUME  ["/srv/config", "/srv/local-assets"]

# install starting scripts
RUN cp -v /var/templates/*.sh /usr/local/bin \
    && chmod a+x /usr/local/bin/*.sh

#expose ports for mapping to host
EXPOSE 8080

CMD ["/bin/bash", "-c", "start.sh"]
