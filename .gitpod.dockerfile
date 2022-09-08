FROM ghcr.io/daringway/gitpod-workspace-base:env2

# Docker build does not rebuild an image when a base image is changed, increase this counter to trigger it.
# Not an issue if you pin the image version
ENV TRIGGER_REBUILD 2022-09-05

# Uncomment any packages you want to include

# RUN install-python 3.8.8   # Must specify patch version
# RUN install-aws-cli latest # Only latest is supported
# RUN install-node 16.18     # Any nvm support version
# RUN install-yarn latest    # Latest or apt version
# RUN install-amplify-cli    # Only latest is supported
# RUN install-ruby 3.1.2     # Must specify patch version
