#!/bin/sh
export JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"
export CATALINA_OPTS="-server -Xmx1536m -Xms512m -XX:MaxMetaspaceSize=1536m -DALLOW_ENV_PARAMETRIZATION=true -Duser.timezone=Asia/Tokyo"
export CATALINA_HOME=/usr/local/tomcat
export CATALINA_BASE=/usr/local/tomcat
export GEOSERVER_DATA_DIR=/opt/data
export GEOSERVER_LOG_LOCATION=/var/log/geoserver.log

