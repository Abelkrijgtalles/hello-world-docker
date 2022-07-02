FROM python:latest
FROM python:2.7.13-onbuild
COPY . .
RUN apt update && apt upgrade -y
RUN pip3 install -r lib/requirements.txt
RUN apt install python3-tk