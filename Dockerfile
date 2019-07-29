FROM alexwoo/nginx
WORKDIR /root/work/nginx

COPY ./ /root/work/nginx/nginx-rtmp-module
COPY ./build/install /root/work/nginx
RUN ./install
COPY ./conf/ /usr/local/nginx/conf/

EXPOSE 80 1935 8086 8080 8081 8082 8083 11935 11936 11937 11938
VOLUME /usr/local/nginx/logs/

CMD /usr/local/nginx/sbin/nginx;tail -f /usr/local/nginx/logs/error.log
