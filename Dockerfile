FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /go/src/github.com/codefresh-contrib/go-sample-app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
RUN go mod tidy

# Build the application
RUN go build -o go-sample-app .

# This container exposes port 8080 to the outside world
EXPOSE 8080

# Run the executable
CMD ["./go-sample-app"]
