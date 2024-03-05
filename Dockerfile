FROM alpine:3
RUN apk --update add ca-certificates --no-cache

WORKDIR /webdav
EXPOSE 8080
VOLUME /webdav/data

COPY webdav /webdav/
COPY cert.pem /webdav/
COPY key.pem /webdav/
COPY config.yaml /webdav/

ENTRYPOINT [ "/webdav/webdav", "-c", "/webdav/config.yaml" ]
