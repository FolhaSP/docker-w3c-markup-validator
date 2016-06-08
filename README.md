# [Docker Image](https://hub.docker.com/r/folha/w3c-markup-validator/) of [W3C Markup Validator](https://github.com/validator/validator)

Docker container with W3C Markup Validator based on `debian:jessie`

## Usage

### Run

```
docker run --rm -p 8888:8888 -it folha/w3c-markup-validator
```

### Using [with DNS](https://docs.docker.com/engine/userguide/networking/configure-dns/)

```
docker run --dns=127.0.0.5 --dns=127.0.0.6 --rm -p 8888:8888 -it folha/w3c-markup-validator
```
