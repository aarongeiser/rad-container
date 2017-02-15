FROM ubuntu:14.04

RUN apt-get update
RUN mkdir /src
COPY src /src
WORKDIR /src

EXPOSE 80
CMD ["/bin/bash"]