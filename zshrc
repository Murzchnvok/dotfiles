export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

export OPENWEATHER_API_KEY=970606528befaa317698cc75083db8b2

alias zshconfig="vi ~/.zshrc"

alias ytdla="yt-dlp -x --audio-format mp3"

alias startnvm='export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'

alias aptu="sudo apt update && sudo apt upgrade -y"
alias apti="sudo apt install"
alias aptf="sudo apt install -f"
alias aptr="sudo apt remove"
alias apts="apt search"

alias cvenv="virtualenv -p python3 venv"
alias svenv="source venv/bin/activate"

alias startx="sudo cpupower frequency-set -g performance && startx"
alias gmouse="xinput set-prop 'USB GAMING MOUSE ' 'libinput Accel Speed' .89"
