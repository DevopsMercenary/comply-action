# FROM strongdm/comply:latest
FROM golang:latest

RUN go install github.com/strongdm/comply@latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
