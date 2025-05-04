FROM alpine:edge
RUN apk add bash ca-certificates
RUN wget -O /usr/bin/cloudflared \
  https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
RUN chmod a+x /usr/bin/cloudflared
ENTRYPOINT ["/usr/bin/cloudflared"]
CMD ["tunnel", "run"]
