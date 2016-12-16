#!/bin/sh

source ~/.credentials
export EDITOR=vim
export DEFAULT_USER=matthew
export USER=`whoami`
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
