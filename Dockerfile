FROM ubuntu:bionic

LABEL maintainer="kopwei <kopkop@gmail.com>"

RUN apt-get update && apt-get install -y \
    curl \
    # X virtual framebuffer
    xvfb \
    # For Electron
    libgtk-3-0 libnss3 libasound2 \
    # For Terminalizer
    libxss1 libgconf-2-4 \
    # For gif manipulation
    gifsicle \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash \
    && bash -c ". /root/.nvm/nvm.sh \
        && nvm install 10 \
        && nvm use 10 \
        && npm install -g terminalizer --unsafe-perm=true --allow-root"

WORKDIR /terminalizer

COPY render.sh .

CMD ["./render.sh"]
