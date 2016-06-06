# docker-w3c-validator
Docker container with W3C Markup Validator based on `debian:jessie`

## Usage

### Build

```
docker build --rm -t ninetails/docker-validator . < Dockerfile
```

### Run

```
docker run --rm -p 8888:8888 -it ninetails/docker-validator
```
