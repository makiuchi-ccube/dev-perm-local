FROM tomcat:9.0-jdk8-openjdk

# GeoServer WAR配置

# ZIPを一時コピーして展開
COPY geoserver_data.tar.gz /tmp

RUN apt-get update && apt-get upgrade -y

RUN mkdir /opt/data

RUN tar xvf /tmp/geoserver_data.tar.gz -C /opt

# GeoServerが使用するデータディレクトリを指定
ENV GEOSERVER_DATA_DIR=/opt/data

