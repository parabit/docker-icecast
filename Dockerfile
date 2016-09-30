FROM alpine:3.3

RUN apk add --no-cache icecast && \
    mkdir /etc/icecast && \
    mv /usr/share/icecast/doc/icecast_minimal.xml.dist /etc/icecast/icecast.xml

USER icecast

EXPOSE 8000

CMD ["icecast", "-c", "/etc/icecast/icecast.xml"]
