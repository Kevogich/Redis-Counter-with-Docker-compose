FROM golang:1.17

WORKDIR /app

# Copy only the go.mod file initially
COPY go.mod .

COPY go.mod go.sum ./
RUN go mod download


# Copy the rest of the source code
COPY . .

# Build the binary
RUN go build -o /app/main .

CMD ["./main"]
