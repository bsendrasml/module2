init:
	@echo "Updating submodules..."
	@git submodule update --remote
	@echo "submodules update done\n"
	@make common

include common/makefile

all: start build test end

start:
	@echo "** running app specific targets **"

end:
	@echo "** specific targets done **\n"

build:
	@echo "1 - building application"

test:
	@echo "2 - running unit tests"
	@go test

run:
	@echo "** running application **"
	@go run *.go