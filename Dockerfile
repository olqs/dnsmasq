FROM alpine:3

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add dnsmasq

COPY init.sh /usr/local/bin

CMD ["sh","-c","/usr/local/bin/init.sh"]
