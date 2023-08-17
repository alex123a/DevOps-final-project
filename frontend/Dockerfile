FROM golang:1.21

WORKDIR /usr/src/app
COPY go.mod ./
RUN go mod download && go mod verify

COPY ./ ./
RUN go build
EXPOSE 8080
CMD ["go", "run", "frontend"]