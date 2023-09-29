FROM node:16-alpine3.16

RUN npm config set user 0 && \
    npm config set unsafe-perm true && \
    npm install -g aglio@latest

ENTRYPOINT ["aglio"]
