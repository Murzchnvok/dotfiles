NODE_VERSION="v17.8.0"
NODE_PATH="$HOME/.nvm/versions/node/$NODE_VERSION/bin/"

export MANPATH="/usr/local/man:$MANPATH"
export PATH=$HOME/bin:$HOME/go/bin:/usr/local/bin:$HOME/.local/bin:$NODE_PATH:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export OPENWEATHER_API_KEY=970606528befaa317698cc75083db8b2

export NVM_DIR="$HOME/.nvm"
alias snvm="[ -s '$NVM_DIR/nvm.sh' ] && \. '$NVM_DIR/nvm.sh'"

alias zshconfig="mousepad ~/.zshrc"

alias ipy3="ipython3"

alias fehbg="feh --bg-fill"

alias ytdla="yt-dlp --parse-metadata 'title:%(artist)s - %(title)s' -x --audio-format mp3"

alias aptu="sudo apt update && sudo apt upgrade -y"
alias apti="sudo apt install"
alias aptf="sudo apt install -f"
alias aptr="sudo apt remove"
alias apta="sudo apt autoremove"
alias apts="apt search"

alias startx="sudo cpupower frequency-set -g performance && startx"
alias gmouse="xinput set-prop 'USB GAMING MOUSE ' 'libinput Accel Speed' .89"

eval "$(starship init zsh)"
