FROM golang:1.16.4-buster
RUN mkdir /gorrino
ADD ./gorrino/. /gorrino
WORKDIR /gorrino
RUN ls -lisa
RUN go mod tidy
RUN go build -o main .
CMD ["/gorrino/main"]
