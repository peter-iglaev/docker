FROM ubuntu:16.04


RUN apt-get -qq update \
		curl \
		haproxy \
		nginx \
		supervisor \

RUN rm -rf /etc/haproxy/haproxy.cfg
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/supervisor/conf.d/supervisord.conf

COPY config/haproxy.cfg /etc/haproxy/haproxy.cfg
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80

CMD ["/usr/bin/supervisord"]

