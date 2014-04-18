#
# Node.js Dockerfile
#
#

# Pull base image.
FROM ubuntu:12.04
RUN apt-get update 
RUN apt-get install -y build-essential wget make software-properties-common 
RUN apt-get update 

# Installing Node.js
RUN wget http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz ; tar xvf node-v*.tar.gz ; cd node-v0.10.26 ; ./configure ; make -j4 ; sudo make install

# Define default command.
CMD ["node"]

