FROM ubuntu:latest

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
    build-essential \
    libyaml-dev \
    python3-yaml \
    && apt-get clean


# Upgrade pip to the latest version
#RUN pip3 install --upgrade pip --break-system-packages

# Install PyYAML
#RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
