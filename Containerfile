FROM docker.io/library/golang:1.24.2-alpine AS builder

RUN go install golang.org/x/tools/gopls@latest

ENTRYPOINT ["/go/bin/gopls"]
