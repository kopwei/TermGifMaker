FROM ubuntu:bionic

LABEL maintainer="kopwei <kopkop@gmail.com>"

RUN apt-get update && apt-get -y install \
     nodejs npm gifsicle \
     libgtk-3-0 libxss1 libgconf-2-4 libnss3 libasound2 libcanberra-gtk3-module \
     && apt-get -q -y autoremove \
     && apt-get -q -y clean \
     && rm -rf /var/lib/apt/lists/*
RUN npm install -g terminalizer

ENV NOT_AT_BRIDGE=1
CMD ["bash"]
