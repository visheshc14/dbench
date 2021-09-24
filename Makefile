.PHONY: all image publish

DOCKER ?= docker
VERSION ?= 3.28-alpine-3.14.2

IMAGE_NAME ?= dbench
IMAGE_NAME_FULL ?= $(IMAGE_NAME):$(VERSION)

DOCKER_REGISTRY=gitlab.com/visheshc14/dbench
REGISTRY ?= registry.gitlab.com/visheshc14/dbench
IMAGE_NAME_FULL = $(REGISTRY)/$(IMAGE_NAME)

all: image publish

image:
	$(DOCKER) build \
		--file $(VERSION)/Dockerfile \
		--tag $(IMAGE_NAME_FULL) \
		.

publish:
	$(DOCKER) push $(IMAGE_NAME_FULL)
