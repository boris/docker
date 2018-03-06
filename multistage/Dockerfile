FROM golang:latest as builder

COPY hello.go .
RUN go build hello.go

FROM alpine:latest
COPY --from=builder /go/hello /usr/local/bin/hello
