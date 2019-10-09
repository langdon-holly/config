setopt list_packed extended_glob noclobber append_create warn_create_global
# maybe: rc_expand_param hist_lex_words interactive_comments no_multi_func_def combining_chars equals inc_append_history

# because grml
setopt no_auto_cd beep globdots no_hist_ignore_all_dups nomatch nonotify
# maybe: hup print_exit_value no_share_history

alias ls="LC_ALL=C.UTF-8 ls --color -A"
alias chromium="lzh-bg chromium"
alias mongod="lzh-bg mongod"
alias meh="lzh-bg meh"
alias gimp="lzh-bg gimp"
alias display="lzh-bg display"
alias firefox-developer-edition="lzh-bg firefox-developer-edition"
alias firefox-dev="firefox-developer-edition"
alias wifi-menu="wifi-menu -o"
alias steam="lzh-bg steam"
alias st="lzh-bg st -f iosevka-10"
alias bitwarden="lzh-bg bitwarden"

function ..() cd ..;
function lzh-bg() {echo "&>> ~/logs/$1.log"; $@ &>> ~/logs/"$1".log &;}

#prompt off
#PS1="%n@%m %(1j.(%j job%(2j.s.)%) .)%~%# "
zstyle :prompt:grml:left:setup items rc change-root user at host jobs path vcs percent
#zstyle :prompt:grml:left:items:percent post ' ' # for when right indent is off
zstyle ':prompt:grml:*:items:jobs' token '%(1j.[%j job%(2j.s.)] .)'

lzh-battery-level()REPLY="$(echo -n $GRML_BATTERY_LEVEL | sed -e 's/^ //')";
grml_theme_add_token lzh-battery -f lzh-battery-level
zstyle :prompt:grml:right:setup items lzh-battery
#ZLE_RPROMPT_INDENT=0 # causes completion misalignment

HISTFILE= #because grml
#REPORTTIME=60 # set to 5 by grml
PATH+=:~/mongodb-linux-x86_64-3.4.1/bin
PATH+=:~/bin
VISUAL=vim

_JAVA_AWT_WM_NONREPARENTING=1
