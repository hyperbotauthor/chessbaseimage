FROM cimg/base

COPY . .

RUN bash Dockerfile.sh

CMD ["node", "server.js"]
