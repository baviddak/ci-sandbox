# Base image
FROM ubuntu:20.04

# Install and basic configuration
RUN apt-get update && apt-get install -y locales && \
    apt-get install gcc-10-base -y && \
    apt-get install python3 -y && \
    apt-get install python3-pip -y && \
    rm -rf /var/lib/apt/lists/* && \
	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

# Install python packages
RUN pip install pytest