FROM alpine:3.14
RUN mkdir -p /data/app/gost
COPY gost /data/app/gost/gost
COPY start.sh /data/app/gost/start.sh

WORKDIR /data/app/gost
EXPOSE 8080
ENTRYPOINT ["sh", "start.sh"]