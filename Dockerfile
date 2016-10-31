FROM schwamster/angular-cli:beta18

ENV HOME=/home/app

WORKDIR $HOME

COPY package.json $HOME

WORKDIR $HOME

RUN rm -rf node_modules && npm install && npm cache clean && rm -rf ~/.npm
