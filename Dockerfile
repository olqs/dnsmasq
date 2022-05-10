FROM alpine:3

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add dnsmasq curl

COPY init.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/init.sh

CMD ["sh","-c","/usr/local/bin/init.sh"]
