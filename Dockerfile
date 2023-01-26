FROM node

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    bison \
    curl \
    build-essential \
    gawk \
    libssl-dev \
    libbz2-dev \
    libreadline-dev \
    libsecret-1-0 \
    libsecret-1-dev \
    libsqlite3-dev \
    make \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    tk-dev \
    wget \
    xz-utils \
    yarn && \
    apt-get install -y python3-dev python3-pip && \
    pip3 install --upgrade pip --user && \
    pip3 install python-language-server flake8 autopep8 && \
    apt-get clean && apt-get auto-remove -y

# RUN mkdir $HOME/glibc/ && cd $HOME/glibc && \
#     wget http://ftp.gnu.org/gnu/libc/glibc-2.34.tar.gz && \
#     tar -xvzf glibc-2.34.tar.gz && \
#     mkdir build && \
#     mkdir glibc-2.34-install && \
#     cd build && \
#     ~/glibc/glibc-2.34/configure --prefix=$HOME/glibc/glibc-2.34-install && \
#     make && \
#     make install

COPY . /theia
WORKDIR /theia
RUN yarn build

CMD ["yarn", "start"]