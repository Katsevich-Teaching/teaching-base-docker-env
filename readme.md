# teaching-base-docker-env

This is the base repository for Eugene Katsevich's teaching. 

## To use Docker container

```{bash}
docker pull ekatsevi/teaching-base
docker-compose up
```

## To build and publish Docker image

We use `buildx` build images for Intel and M1 CPU machines.

```{bash}
docker buildx build . --platform=linux/amd64,linux/arm64/v8 -t ekatsevi/teaching-base --push
```
