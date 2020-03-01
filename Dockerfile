FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install linux-headers-generic virtualbox virtualbox-dkms
RUN apt-get -y install vagrant

# RUN vagrant plugin install vagrant-vbguest

RUN rm -rf /var/lib/apt/lists/*
