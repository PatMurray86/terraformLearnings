FROM ubuntu:18.04

WORKDIR /usr/src/app
SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install openjdk-11-jre --yes

RUN apt update --yes && \
    apt --yes install software-properties-common && \
    apt update --yes && \
    apt install --yes apt-transport-https curl python3.6 python-pip sudo git wget jq && \
    apt install --yes gconf-service libxss1 libasound2 libappindicator1 nano libappindicator3-1 libgtk-3-0 libindicator7 libgconf-2-4 libnspr4 fonts-liberation libnss3 locales xdg-utils


RUN wget https://nodejs.org/dist/v10.14.0/node-v10.14.0-linux-x64.tar.gz && \
    tar xzvf node-v10.14.0-linux-x64.tar.gz && \
    chown -Rv root.root node-v10.14.0-linux-x64 && \
    cp -Rvf node-v10.14.0-linux-x64 /usr/lib/node-10.14.0
    
ENV PATH="/usr/lib/node-10.14.0/bin:$PATH"

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -f --yes && \
    dpkg -i google-chrome-stable_current_amd64.deb

COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app
EXPOSE 3000
CMD [ "node", "app.js" ]