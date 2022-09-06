FROM ghcr.io/daringway/gitpod-workspace-base:env2

# Docker build does not rebuild an image when a base image is changed, increase this counter to trigger it.
# Not an issue if you pin the image version
ENV TRIGGER_REBUILD 2022-09-05

# Uncomment any packages you want to include

# ENV ENV_AWS_CLI_VERSION latest # Only latest is supported

# ENV ENV_NODE_VERSION 16.17  # latest or NVM supported version
# ENV ENV_YARN_VERSION latest

# ENV ENV_AMPLIFY_CLI_VERSION latest

# ENV ENV_PYTHON_VERSION latest

RUN env-install
