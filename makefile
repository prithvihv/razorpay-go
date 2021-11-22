.PHONY: build

VERSION = v0.1.2.17

BASE_ORDER_PATH= .

build:
	@env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
	go build -v -ldflags "-X 'github.com/gamezop/order-service/internal/utils.VERSION=$(VERSION)'" -v -o ./build/order cmd/order.go