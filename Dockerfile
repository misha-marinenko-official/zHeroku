FROM ubuntu:16.04
RUN mkdir /app
WORKDIR /app
COPY __main__.sh /app
CMD sh -c "bash __main.sh__"