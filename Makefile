# Docker settings for M1 Mac compatibility
IMAGE_NAME = pba
PLATFORM = linux/amd64
CURRENT_DIR = $(notdir $(CURDIR))

.PHONY: build run clean

# Build the Docker image
build:
	docker build --platform=$(PLATFORM) -t $(IMAGE_NAME) .

# Run the container with appropriate settings
run: build
	docker run --platform=$(PLATFORM) -it -v $(CURDIR):/$(CURRENT_DIR) \
		--security-opt seccomp=unconfined \
		--workdir=/$(CURRENT_DIR) $(IMAGE_NAME) bash

# Clean up (remove the Docker image)
clean:
	docker rmi $(IMAGE_NAME)
