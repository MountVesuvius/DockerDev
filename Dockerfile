FROM debian:12.4

# Avoid user input during installation
ENV DEBIAN_FRONTEND=noninteractive

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

# Update the package list
RUN apt-get update

# Install the following:
# curl, git, tree, build-essential, fzf, ripgrep, tmux
RUN apt-get install -y --fix-missing -o Debug::Acquire::http=true curl git tree build-essential fzf ripgrep tmux

# Install precompiled Neovim 0.9 
RUN curl -L https://github.com/neovim/neovim/releases/download/v0.9.0/nvim-linux64.tar.gz -o nvim-linux64.tar.gz \
    && tar xzf nvim-linux64.tar.gz -C /usr/local --strip-components=1 \
    && rm nvim-linux64.tar.gz

# Install VimPlug
RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add neovim config files
COPY ./config /root/.config/nvim

# Install neovim plugins
RUN nvim --headless +PlugInstall +qall

# Set the working directory for within the container
WORKDIR /workspace

# Start into the project directory
CMD ["/bin/bash"]
