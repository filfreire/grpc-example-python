container_version := latest
container_name := filfreire/grpc-example-helloworld

build:
	@clear
	DOCKER_BUILDKIT=1 docker build --tag ${container_name}:${container_version} .

push:
	@clear
	docker push ${container_name}:${container_version}

build-proto:
	@clear
	python3 -m grpc_tools.protoc -I./proto --python_out=. --grpc_python_out=. ./proto/helloworld.proto
	cp helloworld_pb2.py examples/protos/

run:
	@docker run -it --rm -p 50051:50051 ${container_name}:${container_version}

help:
	@echo -e "build - build ${container_name}:${container_version} container image."
	@echo -e "run - Start ${container_name}:${container_version} container image."
	@echo -e "build-proto - Builds protobuf definitions"