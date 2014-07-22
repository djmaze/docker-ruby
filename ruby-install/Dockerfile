from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

# dependencies
run apt-get update
run apt-get -y install git wget
run apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev

# locales
env LC_ALL C.UTF-8

# ruby
run wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz && \
    tar -xzvf ruby-install-0.4.3.tar.gz && \
    cd ruby-install-0.4.3/ && \
    make install && \
    cd && rm ruby-install-0.4,3* -fR

env SHELL /bin/bash
