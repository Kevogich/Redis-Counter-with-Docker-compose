FROM golang:latest

WORKDIR /app

COPY . .
RUN go mod download

COPY . .

RUN go build -o main .

CMD ["./main"]
