# Geckos.io Docker Example

## About

This example uses the [github.com/geckosio/simple-chat-app-example](https://github.com/geckosio/simple-chat-app-example).

Link:

- [docker hub](https://hub.docker.com/r/yandeu/geckos.io-example)
- [github repo](https://github.com/geckosio/docker-example)

The server runs on port **3000/tcp**.  
The UPD connections will be on a random UDP port between **10000/udp and 10007/udp**.

```bash
# run
docker run --pull always -d -p 3000:3000/tcp -p 10000-10007:10000-10007/udp yandeu/geckos.io-example:latest

# open browser
http://localhost:3000/
```

## Dev

```bash
# build from dockerfile
docker build . -t yandeu/geckos.io-example:latest

# publish to docker hub
docker push yandeu/geckos.io-example:latest
```
