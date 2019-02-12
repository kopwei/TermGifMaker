FROM ubuntu:bionic

LABEL maintainer="kopwei <kopkop@gmail.com>"

RUN apt-get update && apt-get -y install nodejs npm \
     && apt-get -q -y autoremove \
     && apt-get -q -y clean \
     && rm -rf /var/lib/apt/lists/*
RUN npm install -g terminalizer

CMD ["bash"]
