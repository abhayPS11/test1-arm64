FROM golang:1.20-alpine AS builder

WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o /app/microservice

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/microservice .

EXPOSE 8080
CMD ["./microservice"]
