FROM golang:1.21 as builder
WORKDIR /app
COPY . /app
RUN go mod download && go mod verify
RUN cd /app && go build -tags osusergo,netgo -o goapp

FROM alpine
WORKDIR /app
COPY --from=builder /app/goapp /app/
ENTRYPOINT ./goapp
