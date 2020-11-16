FROM ubuntu:18.04

COPY . .

RUN bash Dockerfile.sh

CMD ["node", "server.js"]
