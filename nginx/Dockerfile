FROM nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY ./vhosts/testa.conf /etc/nginx/conf.d/
COPY ./vhosts/testb.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/