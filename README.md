# grpc-example-python

[![Run in Insomnia}](https://insomnia.rest/images/run.svg)](https://insomnia.rest/run/?label=filfreire%2Fgrpc-example-python&uri=https%3A%2F%2Fraw.githubusercontent.com%2Ffilfreire%2Fgrpc-example-python%2Fmain%2Fgrpc_insomnia.json)

A Docker-based grpc python example.

> This is an experimental repo, it was heavily adapted from https://grpc.io/docs/languages/python/quickstart/ - the equivalent proto files have already been compiled and were placed here "as is"

## How to build and run

1. Clone the repo.
2. Install [Docker](https://docs.docker.com/get-docker/)
3. Run `make build-proto` to build the protobuf definitions.
4. Run `make build` or `docker build --tag grpc-example:latest .`.
5. Run `make run` or `docker run -it --rm -p 50051:50051 --name grpc-example grpc-example:latest`.

If all goes well you should see:

```shell
Server listening at '0.0.0.0:50051'
```

## How to test

Import the [Insomnia collection](./grpc_insomnia.json) on this repo. You can import by URL using `https://raw.githubusercontent.com/filfreire/grpc-example-python/main/grpc_insomnia.json`.

## Other notes

You can compile the protobuf definitions that are on `proto/` folder by running `make build-proto`. Otherwise, to compile the proto files from the original repo run:

```shell
python -m grpc_tools.protoc -I../../protos --python_out=. --grpc_python_out=. ../../protos/helloworld.proto


# to clone the original repo:
git clone -b v1.41.0 https://github.com/grpc/grpc
```
