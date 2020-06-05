setopt list_packed extended_glob noclobber append_create warn_create_global
# maybe: rc_expand_param hist_lex_words interactive_comments no_multi_func_def combining_chars equals inc_append_history

# because grml
setopt no_auto_cd beep globdots no_hist_ignore_all_dups nomatch nonotify
# maybe: hup print_exit_value no_share_history

alias ls="LC_ALL=C.UTF-8 ls --color -A"
alias chromium="lzh-bg chromium"
alias meh="lzh-bg meh"
alias gimp="lzh-bg gimp"
alias display="lzh-bg display"
alias firefox-developer-edition="lzh-bg firefox-developer-edition"
alias wifi-menu="wifi-menu -o"
alias st="lzh-bg st"
alias bitwarden="lzh-bg bitwarden"
alias blender="lzh-bg blender"
alias audacity="lzh-bg audacity"

function ..() cd ..;
function lzh-bg() {echo "&>> ~/logs/$1.log"; $@ &>> ~/logs/"$1".log &;}

prompt off
PS1="%B%(!.%K{red}%n%k.%F{blue}%n%f)%F{black}@%f%b%m%B%d%b %(1j.%F{green}[%j job%(2j.s.)]%f.)> "
unset HISTFILE #because grml
#REPORTTIME=60 # set to 5 by grml
PATH+=:~/bin
VISUAL=vim
SHELL=/usr/bin/zsh

_JAVA_AWT_WM_NONREPARENTING=1
LESSHISTFILE=-
export NODE_REPL_HISTORY=
