source ~/.credentials

set -g theme_nerd_fonts yes
set -g nvim $EDITOR

switch (uname)
  case Linux
    alias flushdns="sudo systemd-resolve --flush-caches"
  case Darwin
    alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
end

alias gst="git status"

set -xg KERL_BUILD_DOCS yes


# Fundle
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin "simnalamburt/shellder"
fundle plugin "simnalamburt/fish-sensible"
fundle init