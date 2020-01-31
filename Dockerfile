FROM node:10-jessie

RUN curl -sL http://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
    
RUN npm i -g npm@6.13.6

ENTRYPOINT []
CMD []

RUN apt-get update && apt-get install -y curl build-essential git google-chrome-stable

