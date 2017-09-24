setopt list_packed extended_glob inc_append_history noclobber append_create warn_create_global
# maybe: rc_expand_param hist_lex_words interactive_comments no_multi_func_def combining_chars equals

# because grml
setopt no_auto_cd beep globdots no_hist_ignore_all_dups nomatch no_share_history
# maybe: hup print_exit_value nonotify

#alias view="vim -R"
alias ls="ls --color -A"
#alias xmonad="lzh-bg xmonad"
alias chromium="lzh-bg chromium"
alias chrome=chromium
alias xterm="lzh-bg xterm"
alias minecraft="lzh-bg minecraft"
alias mongod="lzh-bg mongod"
alias teamspeak3="lzh-bg teamspeak3"
alias teamspeak=teamspeak3
alias meh="lzh-bg meh"
alias gimp="lzh-bg gimp"
alias display="lzh-bg display"
alias firefox-developer="lzh-bg firefox-developer"
alias way-cooler="lzh-bg way-cooler"
alias wifi-menu="wifi-menu -o"

function ..() cd ..;
function lzh-bg() {echo "&>> ~/logs/$1.log"; $@ &>> ~/logs/"$1".log &;}

#prompt off
#PS1="%n@%m %(1j.(%j job%(2j.s.)%) .)%~%# "
zstyle :prompt:grml:left:setup items rc change-root user at host jobs path vcs percent
#zstyle :prompt:grml:left:items:user post '%f%b '
zstyle ':prompt:grml:*:items:jobs' token '%(1j.[%j job%(2j.s.)] .)'

lzh-battery-level()REPLY="$(echo -n $GRML_BATTERY_LEVEL | sed -e 's/^ //')";
grml_theme_add_token lzh-battery -f lzh-battery-level
zstyle :prompt:grml:right:setup items lzh-battery

#zstyle :prompt:grml:right:items:date post '%f'
#zstyle ':prompt:grml:*:items:time' token '%D{%R%Z}'
#zstyle :prompt:grml:right:items:time pre '%F{cyan}T%F{blue}'
#zstyle :prompt:grml:right:items:battery pre ''

#HISTFILE=~/.zsh_history # set by grml
#REPORTTIME=60 # set to 5 by grml
#SAVEHIST=512 # set to 10000 by grml
PATH+=:~/mongodb-linux-x86_64-3.4.1/bin
VISUAL=vim

_JAVA_AWT_WM_NONREPARENTING=1

