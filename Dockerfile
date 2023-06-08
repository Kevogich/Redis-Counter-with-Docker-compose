FROM golang:1.17

WORKDIR /app

# Copy only the go.mod file initially



RUN go mod download
COPY go.mod .

# Copy the rest of the source code
COPY . .

COPY go.mod go.sum ./
# Build the binary
RUN go build -o /app/main .

CMD ["./main"]
