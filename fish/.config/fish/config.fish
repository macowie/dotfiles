source ~/.profile
set -g theme_nerd_fonts yes
fish_vi_key_bindings

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# chips
if [ -e ~/.config/chips/build.fish ] ; source ~/.config/chips/build.fish ; end
