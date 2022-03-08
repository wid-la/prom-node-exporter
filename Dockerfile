FROM golang:1.17

LABEL Aurelien Chaudagne

RUN apt-get install git
RUN apt-get install make mercurial
RUN go get github.com/prometheus/node_exporter 

WORKDIR /go/src/github.com/prometheus/node_exporter

RUN export PATH=$PATH:~/go/bin
RUN export GOROOT=~/go
RUN make

CMD ["cp", "./node_exporter", "/home/app"]