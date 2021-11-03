# grpc-example-python

[![Run in Insomnia}](https://insomnia.rest/images/run.svg)](https://insomnia.rest/run/?label=filfreire%2Fgrpc-example-python&uri=https%3A%2F%2Fraw.githubusercontent.com%2Ffilfreire%2Fgrpc-example-python%2Fmain%2Fgrpc_insomnia.json)


> This is an experimental repo, it was heavily adapted from https://grpc.io/docs/languages/python/quickstart/ - the equivalent proto files have already been compiled and were placed here "as is"

## How to build

1. Clone the repo.
2. Build the docker container with `docker build --tag grpc-example:latest .`.
3. Run `docker run -it --rm -p 50051:50051 --name grpc-example grpc-example:latest`.

## How to test

Import the [Insomnia collection](./grpc_insomnia.json) on this repo.

## Other notes

To compile the proto files from the original repo run:
```
python -m grpc_tools.protoc -I../../protos --python_out=. --grpc_python_out=. ../../protos/helloworld.proto


# to clone the original repo:
git clone -b v1.41.0 https://github.com/grpc/grpc
```