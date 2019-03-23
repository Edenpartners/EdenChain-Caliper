FROM node:10

WORKDIR /usr/node

COPY package*.json ./

RUN npm install

COPY src ./src
COPY benchmark ./benchmark
COPY scripts ./scripts
COPY network ./network
COPY config ./config
COPY kube ./kube


CMD ["tail","-f","/dev/null"]
