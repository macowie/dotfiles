source ~/.profile
set -g theme_nerd_fonts yes

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# chips
if [ -e ~/.config/chips/build.fish ] ; source ~/.config/chips/build.fish ; end
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
