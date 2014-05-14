#
# Node.js Dockerfile
#
#
# Pull base image.
FROM sandipsingh/runnable_ubuntu
RUN apt-get update 
RUN apt-get install -y software-properties-common
RUN apt-get update 
# Installing Node.js
RUN wget http://nodejs.org/dist/v0.10.22/node-v0.10.22.tar.gz 
RUN tar xvf node-v*.tar.gz 
WORKDIR node-v0.10.22 RUN ./configure 
WORKDIR node-v0.10.22 RUN make -j4 
WORKDIR node-v0.10.22 RUN sudo make install
RUN apt-get update 
WORKDIR node-v0.10.22 RUN npm install pm2 -g
# Define default command.
CMD ["node"]


