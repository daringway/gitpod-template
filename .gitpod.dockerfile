FROM ghcr.io/daringway/gitpod-workspace-base:env2

# Docker build does not rebuild an image when a base image is changed, increase this counter to trigger it.
ENV TRIGGER_REBUILD 1

RUN install-aws-cli

# Can specifiy any version supported by NVM.  Defaults to lts
# Installs nvm, npm, node, and yarn
# RUN install-node 16.16 
