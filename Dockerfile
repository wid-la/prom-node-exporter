FROM golang:1.17

LABEL Aurelien Chaudagne

RUN apt-get install git
RUN apt-get install make mercurial
RUN go install github.com/prometheus/node_exporter@latest 

WORKDIR /go

# RUN export PATH=$PATH:~/go/bin
# RUN export GOROOT=~/go
# RUN make

CMD ["cp", "/go/bin/node_exporter", "/home/app"]