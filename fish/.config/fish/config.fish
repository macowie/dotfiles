source ~/.asdf/asdf.fish
source ~/.profile


# Fish Vars ###########################################################

set -g theme_nerd_fonts yes


# Aliases #############################################################

switch (uname)
  case Linux
    alias flushdns="sudo systemd-resolve --flush-caches"
  case Darwin
    alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
end

alias gst="git status"


# Fundle ##############################################################

if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin "simnalamburt/shellder"
fundle plugin "simnalamburt/fish-sensible"
fundle init