FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o server .

RUN ls -lah
EXPOSE 8080

CMD ["./server"]
