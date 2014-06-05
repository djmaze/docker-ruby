from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

env RUBY_VERSION 2.1.2

run apt-get update
run apt-get -y install git curl
run apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev

# locales
env LC_ALL C.UTF-8

# ruby
run cd /tmp && \
    git clone https://github.com/sstephenson/ruby-build.git && \
    /tmp/ruby-build/install.sh && \
    rm /tmp/ruby-build -fR

run ruby-build $RUBY_VERSION /usr/local
