source ~/.config/fish/env.fish

if status is-interactive

  fish_default_key_bindings

######## SOURCE ########

  argc --argc-completions fish $ARGC_SCRIPTS | source
  atuin init fish             | source
  mise activate fish          | source
  pay-respects fish --alias f | source
  starship init fish          | source

######## KEY-BINDINGS ########

  bind ! __history_previous_command             # add '!!' functionality, req ./functions/__history_previous_command.fish
  bind '$' __history_previous_command_arguments # add '!$' functionality, req ./functions/__history_previous_command_arguments.fish

  bind \cr _atuin_search
  bind \cs __ethp_commandline_toggle_sudo

######## ABBREVIATIONS ########

  abbr --add --global cp     'cp -i'
  abbr --add --global mv     'mv -i'
  abbr --add --global rm     'cnc'
  abbr --add --global gitbit 'git commit --amend --no-edit --date="Sat 01 Jan 2022 16:20:00 PST"'


######## ALIASES ########

  alias ani     "ani-cli -q best --skip" # weeb out in S-rank ultra-fidelity 8k lossless greenray
  alias boi     "wikiman"
  alias cat     "bat"
  alias cbin    "yes | cargo binstall"
  alias cdr     "cd (git rev-parse --show-toplevel)"
  alias cg      "config-grep"
  alias clip    "clipcat-menu --finder='fzf'"
  alias cncr    "conceal restore"
  alias cols    "column -c '$COLUMNS'"
  alias d       "devour"
  alias feh     "feh --scale-down --image-bg black"
  alias fp      "sk --preview='bat --color=always {}'"
  alias glow    "glow -p"
  alias hn      "clx -an --no-less-verify"
  alias jls     "jless -r"
  alias j       "yazi"
  alias la      "fls -al --color=always" # all files and dirs
  alias lc      "lazygit --git-dir='$DOTFILES' --work-tree='$HOME'" # lazygit for config files
  alias lg      "lazygit"
  alias lh      "eza -la --color=always --ignore-glob='[a-z]*|[A-Z]*|[0-9]*'" # hidden only
  alias ll      "eza -l --color=always --git" # long format
  alias lmk     "lemmeknow"
  alias loc     "plocate"
  alias ls      "fls -l --color=always" # preferred listing
  alias lt      "erd -HIl --color=force" # tree listing
  alias mdc     "mdcat --columns=70"
  alias mkd     "mkdir -p"
  alias m       "qalc"
  alias nbg     "feh --randomize --bg-scale --no-fehbg ~/media/pictures/wallpapers/" # change bg
  alias o       "xdg-open"
  alias py      "python"
  alias q       "exit"
  alias tf      "terraform"
  alias thes    "thesauromatic"
  alias tv      "lobster"
  alias wget    "wget2 --hsts-file='$XDG_DATA_HOME/wget-hsts'"
  alias wh      "wormhole-rs"

end

# fix ssh agent
if not set -q SSH_AUTH_SOCK
  eval (ssh-agent -c) &> /dev/null
end

# Start X at login
if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    echo "Starting X11. (<C-c> to cancel)"
    sleep 2
    exec startx -- -keeptty &>/dev/null 
  end
end
