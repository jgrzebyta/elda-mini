#!/bin/bash

context=ROOT

# Prepare tomcat
rm -rfv $CATALINA_HOME/webapps/*

cp ${war_path}/elda-assets.war $CATALINA_HOME/webapps/
cp ${war_path}/elda-common.war $CATALINA_HOME/webapps/$context".war"

# Unpack static content of velocity directories
mkdir -p $war_path
for f in `find $TEMPLATES -name "*.war"`;do
    fn=$(basename $f)
    mkdir -p $static/${fn%%.*}
    unzip $f -d $static/${fn%%.*}
done

# copy config files
mkdir -p /etc/elda/conf.d/
cp -vr /srv/config/* /etc/elda/conf.d/

catalina.sh jpda run

