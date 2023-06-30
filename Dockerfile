FROM alpine:3.18

RUN apk add --no-cache git nodejs npm python3 make && \
    npm install -g yarn

COPY . ./src
WORKDIR /src

RUN yarn

CMD ["npx", "hardhat", "node"]