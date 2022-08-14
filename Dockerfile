FROM golang:1.14.6-alpine3.12 as builder
RUN mkdir -p /go/src/github.com/SpennyNDaJets/routine-tracker
COPY go.mod go.sum /go/src/github.com
WORKDIR /go/src/github.com/SpennyNDaJets/routine-tracker
RUN go mod download
COPY . /go/src/github.com/SpennyNDaJets/routine-tracker
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o build/routine-tracker github.com/SpennyNDaJets/routine-tracker

FROM alpine
RUN apk add --no-cache ca-certificates && update-ca-certificates
COPY --from=builder /go/src/github.com/SpennyNDaJets/routine-tracker/build/routine-tracker /usr/bin/routine-tracker
EXPOSE 8080 8080
ENTRYPOINT ["/usr/bin/routine-tracker"]
