.PHONY: build-image clean-image

build-image:
	docker build -t $(shell basename $(CURDIR)):latest -f ./Dockerfile .

clean-image:
	-docker rmi -f $(shell basename $(CURDIR)):latest
