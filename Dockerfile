FROM node:17

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    curl \
    build-essential \
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

COPY . /theia
WORKDIR /theia
RUN yarn && yarn build

EXPOSE 3001

CMD ["yarn", "start"]