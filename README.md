# gitpod-template

# Developer Environment Configuration

## AWS Config
To configure your `~/.aws/config` See [env/aws-config.TEMPLATE](./env/aws-config.TEMPLATE)

# Testing Dockerfile
See [trying out your dockerfile](https://www.gitpod.io/docs/config-docker) for details.
```
docker build -f .gitpod.dockerfile -t gitpod-dockerfile-test .
docker run -it gitpod-dockerfile-test bash
```

Clean all layers
```
docker images --no-trunc --format '{{.ID}}' | xargs docker rmi or docker volume prune -f 
```
