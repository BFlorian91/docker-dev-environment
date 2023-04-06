FROM alpine 

RUN apk update && apk upgrade

# inotify-tools pour la synchronisation de fichiers
RUN apk add inotify-tools git curl wget neovim nodejs fish 

# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

WORKDIR /workDir

RUN echo "alias vim='nvim'" >> /etc/fish/config.fish
RUN echo "alias vi='nvim'" >> /etc/fish/config.fish
