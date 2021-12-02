# grpc-example-python

[![Run in Insomnia}](https://insomnia.rest/images/run.svg)](https://insomnia.rest/run/?label=filfreire%2Fgrpc-example-python&uri=https%3A%2F%2Fraw.githubusercontent.com%2Ffilfreire%2Fgrpc-example-python%2Fmain%2Fgrpc_insomnia.json)

A Docker-based grpc python example.

> This is an experimental repo, it was heavily adapted from https://grpc.io/docs/languages/python/quickstart/ - the equivalent proto files have already been compiled and were placed here "as is"

## How to build and run

### `helloworld` example

To build the `helloworld` example (which only has simple Unary request):

1. Clone the repo.
2. Install [Docker](https://docs.docker.com/get-docker/)
3. Run `make build` or `docker build --tag grpc-example:latest .`.
4. Run `make run` or `docker run -it --rm -p 50051:50051 --name grpc-example grpc-example:latest`.

If all goes well you should see:

```shell
Server listening at '0.0.0.0:50051'
```

### `route_guide` example

In this repo you can also find of the original gRPC *Route guide* [example](https://github.com/grpc/grpc/tree/v1.41.0/examples/python/route_guide) from the [gRPC Basics python tutorial](https://grpc.io/docs/languages/python/basics/).

To build the `route_guide` example (which has Unary, client server and bidirectional streams examples):

1. Clone the repo.
2. Install [Docker](https://docs.docker.com/get-docker/)
3. Change to `route_guide/` folder (e.g. `cd route_guide`)
4. Run `make build`
5. Run `make run`

## How to test

Import the [Insomnia collection](./grpc_insomnia.json) on this repo. You can import by URL using `https://raw.githubusercontent.com/filfreire/grpc-example-python/main/grpc_insomnia.json`.

## Other notes

### Rebuild protobuf definitions

In case you edited any of the `.proto` files in this repo, you can run `make build-proto` to build the protobuf definitions. You'll need to install some dependencies beforehand:

1. Install [protobuf compiler](https://grpc.io/docs/protoc-installation/)
2. Install `grpcio`, `grpcio-tools` using `pip`. (e.g. `sudo pip3 install grpcio grpcio-tools`

### Compile original protobuf definitions 

To compile the proto files from the original repo:

1. Clone the original repo: `git clone -b v1.41.0 https://github.com/grpc/grpc`
2. Run python protobuf compiler:

```shell
python -m grpc_tools.protoc -I../../protos --python_out=. --grpc_python_out=. ../../protos/helloworld.proto
```
