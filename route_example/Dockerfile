FROM python:3.9-slim

RUN apt-get -y update
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install grpcio grpcio-tools protobuf

COPY . /app/

WORKDIR /app

ENTRYPOINT python3 route_guide_server.py
EXPOSE 80
EXPOSE 443
EXPOSE 50051