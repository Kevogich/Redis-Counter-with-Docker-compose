FROM golang:1.17

WORKDIR /app

# Copy only the go.mod file initially
COPY go.mod .


RUN go mod download


# Copy the rest of the source code
COPY . .

COPY go.mod go.sum ./
# Build the binary
RUN go build -o /app/main .

CMD ["./main"]
