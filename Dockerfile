FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o /app/server .

RUN ls -lah /app && echo "Listing complete"

RUN chmod +x /app/server

EXPOSE 8080

CMD ["/app/server"]
