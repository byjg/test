FROM gitpod/workspace-full:latest

RUN sudo update-alternatives --set php /usr/bin/php8.1

RUN sudo install-packages \
    php-codesniffer \
    php-common \
    php-dev \
    php-gd \
    php-json \
    php-memcached \
    php-mongodb \
    php-pear \
    php-xdebug \
    php8.1-cli \
    php8.1-common \
    php8.1-curl \
    php8.1-dba \
    php8.1-dev \
    php8.1-gd \
    php8.1-igbinary \
    php8.1-imagick \
    php8.1-mbstring \
    php8.1-memcached \
    php8.1-mongodb \
    php8.1-msgpack \
    php8.1-mysql \
    php8.1-opcache \
    php8.1-pgsql \
    php8.1-phpdbg \
    php8.1-readline \
    php8.1-redis \
    php8.1-soap \
    php8.1-sqlite3 \
    php8.1-xdebug \
    php8.1-xml \
    pkg-php-tools

COPY .config /home/gitpod/.config

RUN curl -sS https://starship.rs/install.sh > /tmp/install.sh && \
    sh /tmp/install.sh --yes && \
    echo 'eval "$(starship init bash)"' >> ${HOME}/.bashrc
