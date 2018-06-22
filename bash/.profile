#!/bin/sh

source ~/.credentials
export EDITOR=vim
export DEFAULT_USER=matthew
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

export PATH="$HOME/.cargo/bin:$PATH"
