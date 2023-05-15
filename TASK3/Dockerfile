FROM ubuntu:18.04

RUN apt-get update && apt-get install -y g++ && apt-get clean

WORKDIR /app
COPY ./lib/libdisplay.a /app

COPY ./bin/output /app

CMD ["/app/output"]
