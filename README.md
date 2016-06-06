# docker-w3c-validator
Docker container with W3C Markup Validator based on `debian:jessie`

## Usage

### Run

```
docker run --rm -p 8888:8888 -it ninetails/markup-validator
```

## How to update validator release

Change version on `Dockerfile` on

```
ENV VALIDATOR_RELEASE_VERSION <new version>
```
