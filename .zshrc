# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/anon/.oh-my-zsh"

export PATH=/home/anon/.nimble/bin:$PATH
export PATH=/home/anon/.cargo/bin:$PATH
source "$HOME/.cargo/env"
# export PATH=/home/anon/.cargo/bin:$PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino-time"

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ALIASES

alias office="cd ~ && clear && offlineimap && mu index --maildir ~/Mail"
alias rss="newsboat"
alias audio-ext="sysctl hw.snd.default_unit=4"
alias audio-int="sysctl hw.snd.default_unit=0"
alias ll="ls -lah"
alias nasm="sudo sshfs -o uid=1000 -o gid=1000 -o allow_other root@192.168.178.200:/hdds/ /media/anon/nas "
alias corona="curl https://corona-stats.online"
alias corona-germany="curl https://corona-stats.online/germany"
alias torrent="aria2c --follow-torrent=mem --seed-time=0 -j 10"
alias fetch="neofetch --backend w3m --source ~/Bilder/tiger.png"
alias calendar="khal interactive"
alias bin=" | nc termbin.com 9999"
alias joplin="~/.npm-global/bin/joplin"
alias chrome="chrome --enable-features=WebUIDarkMode --force-dark-mode"
alias anonradio="torsocks mpv http://anonradio.net:8000/anonradio"
alias technobase="mpv http://listen.technobase.fm/tunein-mp3"
alias backup-local="~/git/rsync-time-backup/rsync_tmbackup.sh ~/ root@192.168.178.200:/hdds/BACKUP/mint"
alias temps="watch -n 2 sensors"
alias backup-ext="~/Software/git/rsync-time-backup/rsync_tmbackup.sh ~/ anon@goliath:/home/anon/ ~/Software/git/rsync-time-backup/exclude.txt"
alias cal="ncal -w3C"
alias nanochan="torsocks w3m -o auto_image=FALSE https://nanochanqzaytwlydykbg5nxkgyjxk3zsrctxuoxdmbx5jbh2ydyprid.onion/"
alias didw="torsocks w3m -o auto_image=FALSE  http://germanyruvvy2tcw.onion"
alias download-world="curl -s http://artscene.textfiles\.com/vt100/globe.vt | pv -L9600 -q"
alias darknet="torsocks w3m -o  auto_image=FALSE .w3m/bookmark.html"
alias reechat="ssh weechat@vps -t screen -rd weechat"
alias cast-goliath="sudo openvpn /home/anon/Dokumente/goliath.ovpn"
alias cast-balrock="sudo openvpn /home/anon/Dokumente/balrock.ovpn"
alias cast-vps="sudo openvpn /home/anon/Dokumente/vps.ovpn"
alias xfix="~/Software/scripts/xfix.sh"
alias goaccess="ssh goliath -t goaccess -c /var/log/nginx/access.log"
alias config="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias berliner-rundfunk-91-4="mpv http://stream.berliner-rundfunk.de/brf/mp3-128/internetradio"
alias drop="~/Software/bin/plik"
alias p0wn.sh="./git/rice/hack.exe"
alias yt-audio="yt-dlp -f 'ba' -x --audio-format mp3 "
alias yt-video "yt-dlp -f 'ba' https://www.youtube.com/watch?v=dQw4w9WgXcQ -o '%(id)s.%(ext)s'"
alias bg="feh -z ~/ssd/Seafile/dat/dont\ click/Wallpapers/"
alias shot="scrot -q 60 -s ~/$(date +"%Y-%m-%d_%H_%M")".jpg
alias dotup="dotfiles-remote-autoupdate && dotfiles-autoupdate"
alias poweroff="sudo poweroff"

# Functions

record-small-screen() {
	filename="cast-$(date +"%Y-%m-%d_%H_%M")-$(uname -s)-$(uname -m)"
	ffmpeg -f alsa -ac 2 -f x11grab -r 25 -s 1366x768 -i :0.0 -vcodec libx264 -pix_fmt yuv420p -preset ultrafast -crf 0 -threads 0 -acodec pcm_s16le -y ~/$filename.mkv
}
record-big-screen(){
	filename="cast-$(date +"%Y-%m-%d_%H_%M")-$(uname -s)-$(uname -m)"
	ffmpeg -f alsa -ac 2 -f x11grab -r 25 -s 1920x1080 -i :0.0 -vcodec libx264 -pix_fmt yuv420p -preset ultrafast -crf 0 -threads 0 -acodec pcm_s16le -y ~/$filename.mkv
}


wetter() { curl wttr.in/$1; }

ytdl() {
torsocks mpv ytdl://$@
}
news() {
NNTPSERVER='nntp.aioe.org' && export NNTPSERVER
slrn -f ~/.jnewsrc --create
}

# Download Plemora emojis; requires curl and jq

pleroma-emoji-dl() {
server=$1  

  curl $server/api/v1/custom_emojis | jq -r 'map(.url)|join("\n")|@text' | xargs wget --random-wait --wait=1
}

# NOTES FILE(S)
notes() {
    VAR=$1
    if [ -z $VAR ]; then
        /usr/local/bin/vim sftp://chrissly@goliath.tinfoil-hat.net/notes/default.txt
    elif [ "$VAR" == "-h" ]; then
        printf "Usage: notes [-l] [file]\n";
        printf "  notes             Open/Create \"default.txt\" file\n"
        printf "  notes  <file>     Open/Create \"<file>.txt\" file\n"
        printf "  notes  -l         Show available note files\n"
        printf "  notes  -h         Show this help\n"
    elif [ "$VAR" == "-l" ]; then
        printf "List of notes:\n"
        ssh chrissly@sina.tinfoil-hat.net "ls -1 \$HOME/notes/*.txt | sed 's,.*/\(.*\)\.txt,  - \1,g'"
    else
        vim sftp://chrissly@goliath.tinfoil-hat.net/notes/$1.txt
    fi
}


# Dotfiles - Autocommit
function dotfiles-autoupdate {
     config add -u && \
     config commit -m "Update $(date +"%Y-%m-%d %H:%M") $(uname -s)/$(uname -m)" && \
     config push
}

# Vars
GPG_TTY=$(tty)
NNTPSERVER='news.tilde.club'
TERMINAL='/usr/local/bin/urxvt'

# Exports
export GPG_TTY
export LC_ALL=de_DE.UTF-8
export NNTPSERVER
export PATH=$HOME/.bin:$PATH
export EDITOR=vim

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias tb="nc bin.tinfoil-hat.net 9999"
