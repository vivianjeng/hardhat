FROM alpine:3.18

RUN apk add --no-cache git nodejs npm python3 make

COPY . ./src
WORKDIR /src

RUN npm install

CMD ["npx", "hardhat", "node"]