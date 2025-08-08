FROM postgis/postgis:14-3.1
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8

RUN mkdir -p /var/lib/postgresql/data/devps_tbs && chown postgres:postgres /var/lib/postgresql/data/devps_tbs

ENV LANG=ja_JP.utf8