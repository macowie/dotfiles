source ~/.credentials
set -g theme_nerd_fonts yes
set -g nvim $EDITOR

set -U fish_user_paths ~/.rbenv/bin ~/.cargo/bin $fish_user_paths

switch (uname)
  case Linux
    alias flushdns="sudo systemd-resolve --flush-caches"
  case Darwin
    alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
end

alias gst="git status"

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# Fundle
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin "simnalamburt/shellder"
fundle plugin "simnalamburt/fish-sensible"
fundle init