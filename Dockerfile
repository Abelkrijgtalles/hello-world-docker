FROM python:latest
FROM python:2.7.18-slim
COPY . /hello-world
WORKDIR /hello-world
RUN apt update
RUN pip3 install -r ./lib/requirements.txt
RUN apt install python3-tk -y