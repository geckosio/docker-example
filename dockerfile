FROM ubuntu:22.04

# update and add sudo
RUN apt-get update && \
    apt-get -y install sudo

# create user "ubuntu"
RUN useradd -m ubuntu && echo "ubuntu:ubuntu" | chpasswd && adduser ubuntu sudo

# install required dependenies
RUN sudo apt install curl -yq && \
    sudo apt install cmake -yq

# install node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - && \
    sudo apt-get install -y nodejs && \
    # Update npm
    sudo npm install -g npm@latest && \
    # Install gitget
    sudo npm install -g gitget@latest

# switch to user ubuntu
USER ubuntu

# install get geckos.io example
RUN cd /home/ubuntu && \
    sudo -u ubuntu gitget geckosio/simple-chat-app-example && \
    cd simple-chat-app-example && \
    npm install

# change the default directory
WORKDIR "/home/ubuntu/simple-chat-app-example"

# build application
RUN npm run build

# CMD /bin/bash
CMD node server.mjs
