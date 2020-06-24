FROM alpine:3.12

RUN addgroup -S redirect && adduser -S redirect -G redirect
RUN apk add --no-cache socat
COPY ./socat-redirect /bin
RUN  chmod 555 /bin/socat-redirect

CMD /bin/socat-redirect



