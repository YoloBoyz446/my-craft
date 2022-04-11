FROM ubuntu:latest

RUN apt install unzip nano wget
RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.12.01.zip
RUN unzip bedrock-server-1.18.
RUN apt install libcurl4-openssl-dev

MONITOR /server

CMD echo "docker minecraft server file is starting\n" && LD_LIBRARY_PATH=. ./bedrock_server