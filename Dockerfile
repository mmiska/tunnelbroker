
FROM alpine:latest
  RUN apk add --update curl && rm -rf /var/cache/apk/*
  COPY ./ipupdate.sh /
  ENTRYPOINT ["/ipupdate.sh"]
  CMD ["/ipupdate.sh"]

