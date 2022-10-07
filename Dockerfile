FROM python:latest
FROM python:2.7.18-slim
FROM ubuntu:22.04
COPY . /hello-world
WORKDIR /hello-world
RUN apt-get clean
RUN apt update
RUN apt-get -f install -y
RUN dpkg --configure -a
RUN apt install python3-pip -y -f
RUN apt install python3-tk -y -f
RUN pip3 install -r ./lib/requirements.txt