FROM debian:latest

MAINTAINER Gerhard Sabeditsch

ENV DEBIAN_FRONTEND noninteractive 


RUN apt-get -qq update && apt-get -qq install -y \
				python-pip \
				swig libssl-dev python-dev libusb-1.0-0 python-yaml \
				&& pip install flask \
				m2crypto \
				firetv[firetv-server]

EXPOSE 5556


