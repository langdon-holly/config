setopt list_packed extended_glob noclobber append_create warn_create_global
# maybe: rc_expand_param hist_lex_words interactive_comments no_multi_func_def combining_chars equals inc_append_history

# because grml
setopt no_auto_cd beep globdots no_hist_ignore_all_dups nomatch nonotify
# maybe: hup print_exit_value no_share_history

alias ls="LC_ALL=C.UTF-8 ls --color -A"
for cmd in meh gimp display firefox st bitwarden blender audacity
  alias $cmd="noterm $cmd" done
alias wifi-menu="wifi-menu -o"

function ..() cd ..;
function noterm() {$@ &>> ~/logs/"$1".log &|; exit;}

prompt off
PS1="%B%(!.%K{red}%n%k.%F{blue}%n%f)%F{black}@%m%f%F{white}%f%d %(1j.%K{green}%j job%(2j.s.)%k.)>%b "
unset HISTFILE #because grml
#REPORTTIME=60 # set to 5 by grml
PATH+=:~/bin
VISUAL=vim
SHELL=/usr/bin/zsh

_JAVA_AWT_WM_NONREPARENTING=1
LESSHISTFILE=-
export NODE_REPL_HISTORY=
