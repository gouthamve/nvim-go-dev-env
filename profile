# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/root/go/bin
