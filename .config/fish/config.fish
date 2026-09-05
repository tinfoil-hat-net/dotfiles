if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ===================== COLORS ==================== #
set -g fish_color_command --bold green
set -g fish_color_error red
set -g fish_color_quote yellow
set -g fish_color_param white
# ===================== COLORS ==================== #


# ==================== ALIASES ==================== #
alias ausstime "TZ=Australia/Sydney date"
alias backup-local "~/Software/git/rsync-time-backup/rsync_tmbackup.sh ~/ /media/anon/8TB-int/Backup/LMDE7/ ~/Software/git/rsync-time-backup/exclude.txt"
alias backup-remote "rclone copy /media/anon/8TB-int/Backup/LMDE7/latest/ Opendrive-Crypt:/ --skip-links -L --progress --transfers 8"
alias berliner-rundfunk "mpv http://stream.berliner-rundfunk.de/brf/mp3-128/internetradio"
alias cast-ra "sudo openvpn --config ~/Sync/Essentials/ra.ovpn"
alias cast-vps "sudo openvpn --config ~/Sync/Essentials/vps.ovpn"
alias config "git --git-dir=/home/anon/.cfg/ --work-tree=/home/anon"
alias copy-website "/home/anon/Software/scripts/website-build-n-copy.sh"
alias disk "duf"
alias drop "~/Software/bin/plik"
alias errors "sudo lnav -r /var/log"
alias fff "fastfetch"
alias ff "fastfetch -c .config/fastfetch/mac.jsonc"
alias gw "~/Software/scripts/gw.sh"
alias hardware "inxi -Fnxxz"
alias installation-age "stat -c %w / | cut -d\  -f1"
alias pc-age "sudo dmidecode | egrep '199[0-9]|20[0-3][0-9]'"
alias kink "sudo tomb open ~/Videos/kink.tomb -k ~/Dokumente/tomb.key"
alias ll "ls -lah --group-directories-first"
alias reechat "ssh chrissly@vps -t screen -rd weechat"
alias reverse-playback "mpv --play-direction=backward"
alias rss "newsboat"
alias screencap "~/Software/scripte/ffmpeg.sh"
alias timer "~/Software/python/termdown/bin/termdown"
alias torrent "aria2c --follow-torrent=mem --seed-time=0 --max-upload-limit=0 -j 10"
alias ustime "TZ=America/New_York date"
alias vanilla "sudo tomb open ~/Videos/vanilla.tomb -k ~/Dokumente/tomb.key"
alias webserver "python3 -m http.server 8001"
alias check-port "nc -zv"
alias screenfetch "cat ~/Dokumente/anonatreality.txt"
alias neofetch "fastfetch -c neofetch"
# ==================== ALIASES ==================== #

# ==================== EXPORTS ==================== #
export EDITOR="vim"
export BROWSER="librewolf"
# less with syntax highlighting
export LESSOPEN="| pygmentize -g %s"
export LESS="-R"
# ==================== EXPORTS ==================== #

# =================== FUNCTIONS =================== #
# Forget commands matching a search term
function history_forget-yt-dlp
    history delete --contains "yt-dlp"
    history save
end
# Git autocommit
function dotfiles_autoupdate
    config add -u
    and config commit -m "Update "(date +"%Y-%m-%d %H:%M")" "(uname -s)"/"(uname -m)
    and config push
end

# Tempoary File Upload
function up
    if test -z "$argv[1]"
        echo "Usage: up <file>"
        echo "Example: up image.jpg"
        return 1
    end

    if test ! -f "$argv[1]"
        echo "Error: File '$argv[1]' not found!"
        return 1
    end

    # -s = silent (no progress bar), -w = print the final URL on its own line
    curl -s -w '\n' -F "file=@$argv[1]" https://x0.at/
end

# Tmux Startup
function tt
    tmux new-session -ds 'start' 'htop'

    # Split horizontally: right half for newsboat
    tmux split-window -h 'newsboat'

    # Go back to the left pane (pane 0) and split it vertically
    tmux select-pane -t 1
    tmux split-window -v "tty-clock -c -f '%Y-%m-%d %H:%M:%S'"

    tmux -2 attach-session -d
end

function ttt
    tmux new-session -ds 'start' 'htop'

    # Split horizontally: right half for newsboat
    tmux split-window -h 'newsboat'

    # Go back to the left pane (pane 0) and split it vertically
    tmux select-pane -t 1
    tmux split-window -v "tty-clock -c -f '%Y-%m-%d %H:%M:%S'"

    tmux new-window 'reechat'
    tmux select-window -t 1
    tmux -2 attach-session -d
end

# =================== FUNCTIONS =================== #


# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/anon/.lmstudio/bin
# End of LM Studio CLI section

