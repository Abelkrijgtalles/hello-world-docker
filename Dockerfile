FROM python:latest
FROM python:2.7.18-slim
COPY . /hello-world
WORKDIR /hello-world
RUN apt update
RUN dpkg -l | grep ii | awk '{print "apt-get --reinstall -y install", $2}' > /tmp/reinstall
RUN apt-get --reinstall install ucf -y
RUN apt install python3-pip -y
RUN pip3 install -r ./lib/requirements.txt
RUN apt install python3-tk -y