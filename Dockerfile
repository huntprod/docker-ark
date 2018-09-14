FROM ubuntu

RUN apt-get update \
 && apt-get install -y vim git tmux tree unzip nmap build-essential ruby curl \
 && rm -rf /var/lib/apt/lists/*

COPY prep /prep
RUN bash /prep && rm -f /prep
