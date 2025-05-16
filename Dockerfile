FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o go-sample-app .

RUN ls -lah
EXPOSE 8080

CMD ["./server"]
