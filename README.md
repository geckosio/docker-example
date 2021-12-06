# Geckos.io Docker Example

## About

This example uses the [portRange branch of github.com/geckosio/simple-chat-app-example](https://github.com/geckosio/simple-chat-app-example/tree/portRange)

Link:

- [github repo](https://hub.docker.com/repository/docker/yandeu/geckos.io-example)
- [docker hub](https://github.com/geckosio/docker-example)

The server runs on port **3000/tcp**.  
The UPD connection will be on a random UDP port between **20000/udp and 20100/udp**.
This allows up to 100 connections at a time.

```bash
# run
docker run -d -p 3000:3000/tcp -p 20000-20100:20000-20100/udp yandeu/geckos.io-example

# open browser
http://127.0.0.1:3000/
```

## Dev

```bash
# build from dockerfile
docker build . -t yandeu/geckos.io-example:latest

# publish to docker hub
docker push yandeu/geckos.io-example:latest
```
