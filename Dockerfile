FROM ubuntu

RUN apt -y update; apt -y upgrade
RUN apt install -y neovim \
    python-neovim \
    python3-neovim \
    git \
    curl \
    wget \
    python3-pip \
    python-pip \
    zsh


RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
RUN sh ./installer.sh ~/.cache/dein
RUN mkdir -p ~/.config/nvim
RUN pip3 install --upgrade neovim; pip2 install --upgrade neovim

RUN chsh -s $(which zsh)
RUN git clone https://github.com/robbyrussell/oh-my-zsh \
    /root/.oh-my-zsh


RUN wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz; tar -C /usr/local -xzf go1.10.2.linux-amd64.tar.gz

ADD init.vim /root/.config/nvim/init.vim
ADD zshrc /root/.zshrc

ENTRYPOINT /usr/bin/zsh
