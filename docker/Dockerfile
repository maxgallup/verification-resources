FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
 
RUN apt update && apt -y upgrade

RUN apt install -y nala

RUN nala install -y build-essential software-properties-common curl git man wget vim htop coq

RUN useradd dev -u 1000 -m -s /bin/bash
RUN echo "dev ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER dev
WORKDIR /home/dev


RUN rm /home/dev/.bashrc
COPY .bashrc /home/dev/.bashrc
