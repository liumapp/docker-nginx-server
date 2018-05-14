FROM centos:7

ENV APP_USER www
ENV APP_ROOT /www
ENV PYTHONUNBUFFERED 1

RUN groupadd -r ${APP_USER} \
    && useradd -r -m \
    --home-dir ${APP_ROOT} \
    -s /usr/sbin/nologin \
    -g ${APP_USER} ${APP_USER}

# In order to set psycopg2 package need to install(postgresql-devel gcc)
RUN yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel && \
    yum install -y postgresql-devel gcc&& \
    yum clean all
    