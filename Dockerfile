FROM golang:1.16.4-buster
COPY . .
RUN go mod tidy
RUN go build -o main src/main.go
CMD ["main"]
