
FROM alpine:latest
  RUN apk add --update curl && rm -rf /var/cache/apk/*
    COPY ./ipupdate.sh /
  RUN chmod +x /ipupdate.sh
  ENTRYPOINT ["/ipupdate.sh"]
  CMD ["/ipupdate.sh"]

