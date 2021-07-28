FROM alpine:3.14

RUN apk add -U python3 py3-pip
RUN pip install bypy
COPY init /etc/init.d/init
RUN chmod a+x /etc/init.d/init
ENTRYPOINT /etc/init.d/init
