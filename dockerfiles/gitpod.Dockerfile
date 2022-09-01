FROM gitpod/workspace-base

# Update Ubuntu
RUN \
  sudo apt-get update && \
  sudo apt-get -y upgrade

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# nvm .bashrc setup
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> "$HOME/.bashrc"

# Install node
ENV NODE_VERSION 16

RUN \
  /bin/bash -c 'source $HOME/.nvm/nvm.sh && \
  nvm install ${NODE_VERSION} && \
  nvm use $NODE_VERSION && \
  nvm alias default ${NODE_VERSION}'

CMD ["bash"]