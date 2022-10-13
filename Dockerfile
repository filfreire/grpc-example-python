FROM python:3.9-slim

RUN apt-get -y update
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install grpcio grpcio-tools protobuf==3.20.*

COPY examples /app/examples
COPY server.py /app/
COPY helloworld_pb2.py /app/

WORKDIR /app

ENTRYPOINT python3 server.py
EXPOSE 80
EXPOSE 443
EXPOSE 50051