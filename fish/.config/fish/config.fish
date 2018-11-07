source ~/.profile
set -g theme_nerd_fonts yes

switch (uname)
case Linux
  alias flushdns="sudo systemd-resolve --flush-caches"
case Darwin
  alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
end

alias gst="git status" 

# rbenv
status --is-interactive; and source (rbenv init -|psub)

if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin "simnalamburt/shellder"
fundle plugin "simnalamburt/fish-sensible"
fundle init