container_version := latest
container_name := filfreire/grpc-example-python

build:
	@clear
	DOCKER_BUILDKIT=1 docker build --tag ${container_name}:${container_version} .

run:
	@docker run -it --rm -p 50051:50051 ${container_name}:${container_version}

help:
	@echo -e "build - build ${container_name}:${container_version} container image."
	@echo -e "run - Start ${container_name}:${container_version} container image."