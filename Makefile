.PHONY: help build run

IMAGE ?= chapkit-ewars-template:latest

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  build   Build docker image ($(IMAGE))"
	@echo "  run     Run the image on :8000"

build:
	@echo ">>> Building $(IMAGE)"
	@docker build -t $(IMAGE) .

run: build
	@echo ">>> Running $(IMAGE) on :8000"
	@docker run --rm -p 8000:8000 --name chapkit-ewars-template $(IMAGE)

.DEFAULT_GOAL := help
