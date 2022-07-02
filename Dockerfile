FROM python:latest
FROM python:2.7.13-onbuild
COPY . .
RUN apt update && apt upgrade -y
RUN mv lib/pyrequirements.txt lib/requirements.txt
RUN pip3 install -r ./lib/pyrequirements.txt
RUN apt install python3-tk -y